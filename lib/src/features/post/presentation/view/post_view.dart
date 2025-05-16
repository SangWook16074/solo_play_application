import 'package:flutter/material.dart';
import 'package:solo_play_application/src/features/course/presentation/widget/list_button.dart';

class PostView extends StatefulWidget {
  const PostView({super.key});

  @override
  State<PostView> createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  Map<String, List<String>> districts = {
    "도심권": ["은평구", "서대문구", "마포구", "종로구", "중구", "용산구"],
    "강북권": ["강북구", "도봉구", "노원구"],
    "동서울권": ["성동구", "광진구", "중랑구"],
    "서남권": ["구로구", "금천구", "영등포구"],
    "남서울권": ["동작구", "관악구"],
    "강남권": ["서초구", "강남구"],
    "동남권": ["송파구", "강동구"],
  };

  String selectedRegion = "";
  String selectedDistrict = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          /// district 영역
          Positioned.fill(
            left: 135,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
                color: Color(0xffffffff),
              ),
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.only(topRight: Radius.circular(10)),
                child: ListView(
                  children: (districts[selectedRegion] ?? []).map((district) {
                    return ListButton(
                      text: district,
                      onTap: () {
                        setState(() {
                          selectedDistrict = district;
                        });
                      },
                      isSelected: selectedDistrict == district,
                      color: const Color(0xffffffff),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),

          /// region 선택 영역
          Positioned(
            top: 0,
            left: 0,
            bottom: 0,
            child: Container(
              width: 135,
              decoration: BoxDecoration(
                color: const Color(0xfff8f8f8),
                borderRadius:
                    const BorderRadius.only(topLeft: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff000000).withOpacity(0.1),
                    spreadRadius: 0,
                    blurRadius: 26,
                    offset: const Offset(4, 0),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.only(topLeft: Radius.circular(10)),
                child: ListView(
                  children: districts.keys.map((region) {
                    return ListButton(
                      text: region,
                      onTap: () {
                        setState(() {
                          selectedRegion = region;
                          selectedDistrict = "";
                        });
                      },
                      isSelected: selectedRegion == region,
                      color: selectedRegion == region
                          ? const Color(0xffffffff)
                          : const Color(0xfff8f8f8),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

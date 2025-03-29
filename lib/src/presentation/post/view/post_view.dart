import 'package:flutter/material.dart';
import 'package:solo_play_application/src/presentation/course/widget/list_button.dart';

class PostView extends StatefulWidget {
  const PostView({super.key});

  @override
  State<PostView> createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  bool isSelected = false;
  bool changeStyle = false;

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
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              /// 주요 지역 선택에 따른 구 선택 영역
              ListView(
                children: (districts[selectedRegion] ?? []).map((district) {
                  return ListButton(
                    text: district,
                    onTap: () {
                      setState(() {
                        selectedDistrict = district;
                      });
                    },
                    isSelected: selectedDistrict == district,
                  );
                }).toList(),
              ),

              /// 주요 지역 선택 영역
              Container(
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
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

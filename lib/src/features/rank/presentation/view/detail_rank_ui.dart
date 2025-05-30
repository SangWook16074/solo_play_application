import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:solo_play_application/src/core/widget/bookmark_icon.dart';
import 'package:solo_play_application/src/features/rank/presentation/view/detail_rank_view.dart';

class DetailRankUI extends StatefulWidget {
  final int rank;
  const DetailRankUI({super.key, required this.rank});

  @override
  State<DetailRankUI> createState() => _DetailRankViewState();
}

class _DetailRankViewState extends State<DetailRankUI> {
  // 상태 관리를 쓰셔야죠?
  bool _clickedIcon = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          leading: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: const Icon(Icons.arrow_back_ios),
          ),
          elevation: 0.0,
          title: const Text(
            'mwm',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: BookmarkIcon(
                onTap: () {
                  setState(() {
                    _clickedIcon = !_clickedIcon;
                  });
                },
                isBookmarked: _clickedIcon,
              ),
            )
          ],
        ),
      ),
      body: DetailRankView(
        rank: widget.rank,
      ),
    );
  }
}

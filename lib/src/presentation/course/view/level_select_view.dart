import 'package:flutter/material.dart';
import 'package:solo_play_application/src/presentation/course/widget/label_button.dart';

class LevelSelectView extends StatelessWidget {
  final int selectIndex;
  final ValueSetter<int> onChanged;
  const LevelSelectView(
      {super.key, required this.onChanged, required this.selectIndex});

  void _toggle(index) {
    onChanged(index);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        const SizedBox(
          width: 11,
        ),
        GestureDetector(
          onTap: () => _toggle(0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: LabelButton(
              label: "혼자는 아직 힘들어요 Lv.1",
              type: (selectIndex == 0) ? Type.select : Type.unselect,
            ),
          ),
        ),
        GestureDetector(
          onTap: () => _toggle(1),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: LabelButton(
                label: "혼자놀기 중수 Lv.2",
                type: (selectIndex == 1) ? Type.select : Type.unselect),
          ),
        ),
        GestureDetector(
          onTap: () => _toggle(2),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: LabelButton(
              label: "혼자놀기 고수 Lv.3",
              type: (selectIndex == 2) ? Type.select : Type.unselect,
            ),
          ),
        ),
        const SizedBox(
          width: 11,
        ),
      ]),
    );
  }
}

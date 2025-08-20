import 'package:flutter/widgets.dart';

class PrimaryButton extends StatelessWidget {
  final Widget? activeChild;
  final Widget? child;
  final void Function()? onTap;
  const PrimaryButton({super.key, this.activeChild, this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 57,
        decoration: BoxDecoration(
            color: onTap != null ? Color(0xff266FF7) : Color(0xffEEEEEE),
            borderRadius: BorderRadius.circular(10)),
        alignment: Alignment.center,
        child: onTap != null ? activeChild : child,
      ),
    );
  }
}

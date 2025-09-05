import 'package:flutter/widgets.dart';

class SecondaryButton extends StatelessWidget {
  final Widget? child;
  final void Function()? onTap;
  const SecondaryButton({
    super.key,
    this.child,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 57,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Color(0xffEEEEEE),
            borderRadius: BorderRadius.circular(10.0)),
        child: child,
      ),
    );
  }
}

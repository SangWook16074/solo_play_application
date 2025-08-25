import 'package:flutter/widgets.dart';

class SecondaryButton extends StatelessWidget {
  final Widget? child;

  const SecondaryButton({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Color(0xffEEEEEE), borderRadius: BorderRadius.circular(10.0)),
      child: child,
    );
  }
}

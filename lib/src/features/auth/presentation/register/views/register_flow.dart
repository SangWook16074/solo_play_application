import 'package:flutter/material.dart';

class RegisterFlow extends StatelessWidget {
  final Widget child;
  const RegisterFlow({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {},
      child: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(),
          body: child,
        ),
      ),
    );
  }
}

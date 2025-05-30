import 'package:flutter/widgets.dart';

class AgreementListTile extends StatelessWidget {
  final Widget prefix;
  final Text title;
  final Text? description;
  final Widget? suffix;
  final bool isOptional;
  final bool showDetails;

  const AgreementListTile(
      {super.key,
      required this.prefix,
      required this.title,
      this.description,
      this.suffix,
      this.isOptional = false,
      this.showDetails = false});

  const AgreementListTile.expand({
    super.key,
    required this.prefix,
    required this.title,
    this.description,
    this.suffix,
    this.isOptional = false,
    this.showDetails = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: description != null
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        prefix,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              title,
              if (description != null) description!,
            ],
          ),
        ),
        if (suffix != null) suffix!,
        if (showDetails)
          const Text(
            "자세히",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff8e8e8e)),
          )
      ],
    );
  }
}

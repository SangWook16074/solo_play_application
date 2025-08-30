import 'package:flutter/widgets.dart';

class AgreementListTile extends StatelessWidget {
  final Widget prefix;
  final String title;
  final String? description;
  final Widget? suffix;
  final bool isOptional;
  final bool showDetails;

  const AgreementListTile({
    super.key,
    required this.prefix,
    required this.title,
    this.description,
    this.suffix,
    this.isOptional = false,
    this.showDetails = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: description != null
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        prefix,
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600)),
              if (description != null)
                Text(description!,
                    style: const TextStyle(
                        fontSize: 14, color: Color(0xff8e8e8e))),
            ],
          ),
        ),
        if (suffix != null) suffix!,
        if (showDetails)
          const Padding(
            padding: EdgeInsets.only(left: 4),
            child: Text(
              "자세히",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff8e8e8e)),
            ),
          )
      ],
    );
  }
}

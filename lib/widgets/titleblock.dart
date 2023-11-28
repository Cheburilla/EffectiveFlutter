import 'package:flutter/material.dart';

class TitleBlock extends StatelessWidget {
  final String title;
  final TextStyle? titleStyle;
  final String? footnote;
  final TextStyle? footnoteStyle;
  const TitleBlock(
      {super.key,
      this.footnote,
      required this.title,
      this.titleStyle,
      this.footnoteStyle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: titleStyle),
          if (footnote != null) const SizedBox(height: 8,),
          if (footnote != null) Text(footnote!, style: footnoteStyle)
        ],
      ),
    );
  }
}

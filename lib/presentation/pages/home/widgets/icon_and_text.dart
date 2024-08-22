import 'package:animonster/common/styles.dart';
import 'package:flutter/material.dart';

class IconAndText extends StatelessWidget {
  const IconAndText({
    super.key,
    required this.type,
    required this.text,
    required this.itemCount,
  });

  final String type;
  final List<String> text;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      height: 100,
      child: ListView.separated(
        itemCount: itemCount,
        separatorBuilder: (context, index) {
          return const SizedBox(height: 5);
        },
        itemBuilder: (context, index) {
          return SizedBox(
            height: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  type == 'intro' ? Icons.double_arrow : Icons.check_circle,
                  color: AppColors.blueColors[0],
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(text[index]),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

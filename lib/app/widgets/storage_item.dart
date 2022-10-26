import 'package:flutter/material.dart';

class StorageItem extends StatelessWidget {
  StorageItem({
    this.name,
    required this.value,
    this.color,
  });

  dynamic name;
  double value;
  dynamic color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  radius: 10,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF22215B),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "${value} GB",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF22215B),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Container(
              height: 6,
              width: 120,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(99),
              ),
              child: LinearProgressIndicator(
                value: 1 - value / 128,
                backgroundColor: color,
                color: Color(0xFFEEF7FE),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

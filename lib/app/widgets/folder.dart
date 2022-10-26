import 'package:flutter/material.dart';

class Folder extends StatelessWidget {
  Folder({
    Key? key,
    this.color,
    this.name,
    this.date,
  }) : super(key: key);

  dynamic color;
  dynamic name;
  dynamic date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 150,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.folder_copy_rounded,
                    color: color,
                    size: 36,
                  ),
                  Icon(
                    Icons.more_vert,
                    color: color,
                    size: 24,
                  ),
                ],
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                name,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: color,
                ),
              ),
              Text(
                date,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: color,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

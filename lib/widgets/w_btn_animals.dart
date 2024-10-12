import 'package:flutter/material.dart';

class WidgetBtnAnimals extends StatelessWidget {
  const WidgetBtnAnimals({
    super.key,
    required this.name,
    required this.icon,
    required this.onClick,
    this.color = Colors.yellow,
    });
    //properties
    final String name;
    final String icon;
    final Color color;
    final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.5 , vertical:2),
          child: ElevatedButton.icon(
            onPressed: onClick, 
            icon: Image.asset(icon , width :22) ,
            label: Text(name),
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
              foregroundColor: Colors.black,
              padding:const EdgeInsets.only(left:3),
              alignment: Alignment.centerLeft
              ),
            ),
        )
    );
  }
}
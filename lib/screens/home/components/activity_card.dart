import 'package:flutter/material.dart';
import 'package:flutter_ui_three/constants.dart';
import 'package:flutter_ui_three/models/activity.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActivityCard extends StatefulWidget {
  final Activity activity;
  const ActivityCard({@required this.activity});

  @override
  _ActivityCardState createState() => _ActivityCardState();
}

class _ActivityCardState extends State<ActivityCard> {
  int selectedActivity = -1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, right: 20, bottom: 20),
      child: SizedBox(
        width: 100,
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedActivity =
                  (selectedActivity == -1) ? widget.activity.id : -1;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: kPrimaryColor, width: 1),
              color: selectedActivity == widget.activity.id
                  ? kPrimaryColor
                  : Colors.white,
            ),
            padding: const EdgeInsets.all(15),
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  child: Hero(
                    tag: widget.activity.id,
                    child: SvgPicture.asset(
                      widget.activity.icon,
                      color: selectedActivity == widget.activity.id
                          ? Colors.white
                          : kPrimaryColor,
                    ),
                  ),
                ),
                Text(
                  widget.activity.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: selectedActivity == widget.activity.id
                          ? Colors.white
                          : kPrimaryColor),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

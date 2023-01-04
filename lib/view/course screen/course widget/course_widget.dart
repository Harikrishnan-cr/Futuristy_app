
import 'package:flutter/material.dart';
import 'package:futuristy/controller/const/colors/colours.dart';
import 'package:futuristy/model/top_course_model/top_course.dart';

class TopCourseWidget extends StatelessWidget { 
   const TopCourseWidget({
    Key? key,
    required this.topCourseData
  }) : super(key: key);
 final TopCourseModel topCourseData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 160,
          height: 100,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: elivationGreyColour,
                  offset: const Offset(0.0, 1.0), //(x,y)
                  blurRadius: 1,
                ),
              ],
              image:  DecorationImage(
                  image: NetworkImage(
                      topCourseData.thumbnail.toString()), 
                  fit: BoxFit.cover),
              color: whiteColour,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        ),
        Container(
          width: 160,
          height: 100,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: elivationGreyColour,
                  offset: const Offset(0.0, 1.0), //(x,y)
                  blurRadius: 1,
                ),
              ],
              color: whiteColour,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: SizedBox(
                    width: 130,
                    height: 50,
                    child: Text(
                      topCourseData.title.toString(), 
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.black, fontSize: 19),
                      maxLines: 2,
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    topCourseData.price.toString(), 
                    style: TextStyle(color: greyColour),
                  ),
                   const SizedBox(
                width: 5, 
              ), 
                ],
              ),
             
            ],
          ),
        )
      ],
    );
  }
}

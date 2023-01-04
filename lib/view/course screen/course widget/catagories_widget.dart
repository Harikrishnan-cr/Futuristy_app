import 'package:flutter/material.dart';
import 'package:futuristy/controller/const/colors/colours.dart';
import 'package:futuristy/model/categories_model/catagories_model.dart';
import 'package:hexcolor/hexcolor.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key, required this.catCourseData})
      : super(key: key);
  final CatagoriesModel catCourseData;
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
              image: DecorationImage(
                  image: NetworkImage(catCourseData.thumbnail.toString()),
                  fit: BoxFit.cover),
              color: whiteColour,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        ),
        Container(
          width: 160,
          height: 64,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: elivationGreyColour,
                  offset: const Offset(0.0, 1.0), //(x,y)
                  blurRadius: 1,
                ),
              ],
              color: HexColor('#${catCourseData.code}'),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  catCourseData.name.toString(),
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: whiteColour,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                  maxLines: 2,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '${catCourseData.numberOfCourses} Courses'.toString(),
                    style: TextStyle(
                        color: whiteColour,
                        fontSize: 11,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}



// Column(
//       children: [
        // Container(
        //   width: 160,
        //   height: 100,
        //   decoration: BoxDecoration(
        //       boxShadow: [
        //         BoxShadow(
        //           color: elivationGreyColour,
        //           offset: const Offset(0.0, 1.0), //(x,y)
        //           blurRadius: 1,
        //         ),
        //       ],
        //       image:  DecorationImage(
        //           image: NetworkImage(
        //               catCourseData.thumbnail.toString()), 
        //           fit: BoxFit.cover),
        //       color: whiteColour,
        //       borderRadius: const BorderRadius.only(
        //           topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        // ),
    //     Container(
    //       width: 160,
    //       height: 130,
    //       decoration: BoxDecoration(
    //           boxShadow: [
    //             BoxShadow(
    //               color: elivationGreyColour,
    //               offset: const Offset(0.0, 1.0), //(x,y)
    //               blurRadius: 1,
    //             ),
    //           ],
    //           color: HexColor('#${catCourseData.code}'), 
    //           borderRadius: const BorderRadius.only(
    //               bottomLeft: Radius.circular(10),
    //               bottomRight: Radius.circular(10))),
    //       child: Column(
    //         children: [
    //           Padding(
    //             padding: const EdgeInsets.only(top: 5),
    //             child: SizedBox(
    //                 width: 130,
    //                 height: 50,
              //       child: Text(
              //         catCourseData.name.toString(), 
              //         overflow: TextOverflow.ellipsis,
              //         style: const TextStyle(color: Colors.black, fontSize: 19),
              //         maxLines: 2,
              //       )),
              // ),
    //           const SizedBox(
    //             height: 15,
    //           ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
                  // Text(
                  //  '${ catCourseData.numberOfCourses} Courses'.toString(), 
                  //   style: TextStyle(color: greyColour),
                  // ),
    //                const SizedBox(
    //             width: 5, 
    //           ), 
    //             ],
    //           ),
             
    //         ],
    //       ),
    //    )
    //  ],    );
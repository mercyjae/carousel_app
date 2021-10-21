import 'package:carousel_app/selected_photo.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int photoIndex = 0;
  List<String> photos = [
    "assets/images/burger.jpg",
    "assets/images/burrito.jpg",
    "assets/images/pasta.jpg",
    "assets/images/pizza.jpg",
  ];
  void previousImage(){
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1: 0;
    });
  }
  void nextImage(){
    setState(() {
      photoIndex = photoIndex < photos.length -1 ? photoIndex + 1: photoIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView(shrinkWrap: true,
      children: [
      Column(children: [
        Stack(children: [
          Container(height: 200,
            decoration:
          BoxDecoration(image: DecorationImage(image: AssetImage(photos[photoIndex]),
              fit: BoxFit.cover)),),
          Row(children: [
           // IconButton(icon: Icon(),)
          ],)
        ],)
      ],)
    ],),);
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text(
    //       "Carousel",
    //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    //     ),
    //   ),
    //   body: Column(
    //     children: [
    //       Center(
    //         child: Stack(
    //           children: [
    //             Container(
    //               decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(25),
    //                   image: DecorationImage(
    //                       image: AssetImage(photos[photoIndex]),
    //                       fit: BoxFit.cover)),
    //               height: 400,
    //               width: 300,
    //             ),
    //             Positioned(
    //                 top: 380,
    //                 left: 25,
    //                 right: 25,
    //                 child: SelectedPhoto(
    //                   numberOfDots: photos.length,
    //                   photoIndex: photoIndex,
    //                 ))
    //           ],
    //         ),
    //       ),
    //       Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //         children: [
    //           RaisedButton(
    //             onPressed: nextImage,
    //             child: Text("Next"),
    //             color: Colors.green,
    //           ),
    //           SizedBox(
    //             height: 5,
    //           ),
    //           RaisedButton(
    //             onPressed: previousImage,
    //             child: Text("Previous"),
    //             color: Colors.green,
    //           ),
    //         ],
    //       )
    //     ],
    //   ),
    // );
  }
}

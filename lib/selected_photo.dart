
import 'package:flutter/material.dart';

class SelectedPhoto extends StatelessWidget {
  const SelectedPhoto({Key? key, required this.numberOfDots,
    required this.photoIndex })
      : super(key: key);
  final int numberOfDots;
  final int photoIndex;

  Widget inactivePhoto() {
    return Container(child: Padding(
      padding: const EdgeInsets.only(left: 3.0, right: 3.0),
      child: Container(height: 8, width: 8,
        decoration: BoxDecoration(color: Colors.grey,
            borderRadius: BorderRadius.circular(4)),),
    ),);
  }

  Widget activePhoto() {
    return Container(child: Padding(
      padding: const EdgeInsets.only(left: 3.0, right: 3.0),
      child: Container(height: 8, width: 8,
        decoration: BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.circular(5), boxShadow: [
              BoxShadow(color: Colors.grey, spreadRadius: 0.0, blurRadius: 2.0)
            ]),),
    ),);
  }
List<Widget> buildDots(){
    List<Widget> dots =[];
    for(int i = 0; i< numberOfDots; ++i){
      dots.add(i ==photoIndex? activePhoto():inactivePhoto());
    } return dots;
}

  @override
  Widget build(BuildContext context) {
    return Center(child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: buildDots()
    ,),);
  }
}

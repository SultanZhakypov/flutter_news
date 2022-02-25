import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  List<String> title = ['Все','Интернет','Звонки'];
  bool selected1 = true;
  bool selected2 = false;
  bool selected3 = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       InkWell(
         onTap: () {
           setState(() {
             selected1 = !selected1;
             selected2 = false;
             selected3 = false;
           });
         },
         child: Container(
           padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(16),
             color: selected1 ? Colors.green : Colors.white
           ),
           child:  Text(title[0],
           style: TextStyle(
             color: selected1 ? Colors.white : Colors.black,
             fontSize: 14,
             fontFamily: 'Gilroy'
           ),),
         ),
       ),
       InkWell(
         onTap: () {
           setState(() {
             selected2 = !selected2;
             selected1 = false;
           });
         },
         child: Container(
           padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(16),
             color: selected2 ? Colors.green : Colors.white
           ),
           child:  Text(title[1],
           style: TextStyle(
             color: selected2 ? Colors.white : Colors.black,
             fontSize: 14,
             fontFamily: 'Gilroy'
           ),),
         ),
       ),
       InkWell(
         onTap: () {
           setState(() {
             selected3 = !selected3;
             selected1 = false;
           });
         },
         child: Container(
           padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(16),
             color: selected3 ? Colors.green : Colors.white
           ),
           child:  Text(title[2],
           style: TextStyle(
             color: selected3 ? Colors.white : Colors.black,
             fontSize: 14,
             fontFamily: 'Gilroy'
           ),),
         ),
       ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/fonts.dart';
import 'package:flutter_application_1/screens/info_screen.dart';

class Containers extends StatefulWidget {
 Containers({Key? key, required this.urlImage, required this.title}) : super(key: key);
  String urlImage;
  String title;

  @override
  State<Containers> createState() => _ContainersState();
}

class _ContainersState extends State<Containers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(widget.urlImage,
          width: double.infinity,
          fit: BoxFit.fill,),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(widget.title,
                  style: Fonts.fontSize16,),
                ),
                IconButton(
                  onPressed:() {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder:(context) => InfoScreen(),));
                    });
                  },
                   icon: Icon(Icons.chevron_right)
                   )
              ],
            ),
          )
        ],
      ),
    );
  }
}
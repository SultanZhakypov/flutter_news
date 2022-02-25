import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/categories.dart';
import 'package:flutter_application_1/constants/fonts.dart';
import 'package:flutter_application_1/screens/container.dart';
class NewsScreen extends StatefulWidget {
  NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
var selectedItem = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe5e5e5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffe5e5e5),
        elevation: 0,
        title:  const Text('Новости',
        style: Fonts.fontSize20,),
        actions: [
          PopupMenuButton(
            padding: EdgeInsets.only(right: 20),
            onSelected: (value) {
              setState(() {
                selectedItem = value.toString();
              });
            },
            itemBuilder:(context) {
            return const [
              PopupMenuItem(child: Text('KG',style:Fonts.fontPopupmenu,), value: '/KG',),
              PopupMenuItem(child: Text('RU',style: Fonts.fontPopupmenu,), value: '/RU',),
              PopupMenuItem(child: Text('EN',style: Fonts.fontPopupmenu,), value: '/EN',)
            ];
          },
          icon: const Icon(Icons.language,color: Colors.black,),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            const SizedBox(
              height: 23
            ),
            Categories(),
            const SizedBox(
              height: 40,
            ),
            Containers(
              urlImage: 'assets/images/Rectangle 239.png', 
              title: 'Незаконное строительство'
              ),
            const SizedBox(
              height: 40,
            ),
            Containers(
              urlImage: 'assets/images/Rectangle 239.png', 
              title: 'Управление по контролю, надзору за водными ресурсами ...'
              ),
          ],
        ),
      ),
    );
  }
}
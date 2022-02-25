import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/fonts.dart';
import 'package:flutter_application_1/screens/news_screen.dart';
import 'package:intl/intl.dart';

class InfoScreen extends StatefulWidget {
  InfoScreen({Key? key}) : super(key: key);

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe5e5e5),
      appBar: AppBar(
        backgroundColor: const Color(0xffe5e5e5),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder:(context) => NewsScreen(),));
            });
          },icon:const Icon(Icons.chevron_left_sharp,
          color: Colors.black,),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Управление по контролю, надзору за водными ресурсами и объектами (далее УКНВРиО) 29 июля 2020 года провело рабочее видео-совещание.'
              ,style:Fonts.fontSize16 ,),
               Container(
                 padding: EdgeInsets.symmetric(vertical: 10),
                 child:Text('Дата ${DateFormat('dd.MM.yyyy').format(DateTime.now())}',
                 style: const TextStyle(
                   color: Color(0xffaeaeae),
                   fontSize:14,
                   fontFamily: 'Museo'
                 ),
                ),),
                Image.asset('assets/images/image 1.png'),
                const SizedBox(
                  height: 6,
                ),
                Image.asset('assets/images/image 2.png')
          ],
        ),
      ),
    );
  }
}
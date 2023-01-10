import 'package:flutter/material.dart';
import 'package:kaktus/constans/app_colors.dart';
import 'package:kaktus/constans/app_text.dart';
import 'package:kaktus/constans/app_text_syle.dart';

import '../components/custom_card.dart';

class KaktusMedia extends StatefulWidget {
  const KaktusMedia({super.key, this.onPressed});

final   void Function()? onPressed ;
  @override
  State<KaktusMedia> createState() => _KaktusMediaState();
}

class _KaktusMediaState extends State<KaktusMedia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.BackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor:AppColors.AppBarColors,
        centerTitle: true,
        title: const Text(
          AppText.AppBarText,
          style:AppTextStyles.AppBarTextStyles
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);},
          icon: const Icon(
            Icons.menu,
            size: 24,
            color:AppColors.IconColor
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 24,
              color:AppColors.IconColor
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
        margin: const EdgeInsets.all(10),
        color: AppColors.MediaBacgroundColor,
        width: 500,
        height: 400,
        child: Column(
          children:[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FlutterLogo(size: 50),
                const SizedBox( width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                     AppText.Media,
                      style:AppTextStyles.MediaTextStyle
                    ),
                    Text(AppText.Versio, 
                    style:AppTextStyles.VersioTextStyle ,)
                  ],
                ),
              ],
            ),
            const SizedBox(height: 40 ),
              CustomCard(icon: Icons.star, text:AppText.BalooText, onTap: (){},), 
            const SizedBox(height: 14),
              CustomCard(icon: Icons.share, text:AppText.Bolyshu, onTap: (){},), 
            const SizedBox(height: 14),
              CustomCard(icon: Icons.chat_sharp, text:AppText.Synysh, onTap: (){},), 
            const SizedBox(height: 14),
              CustomCard(icon: Icons.call, text: AppText.Bailanush, onTap: (){},), 
            const SizedBox(height: 14),
         ],
        ),
      ),
    );
  }
}



// class _KaktusMediaState extends State<KaktusMedia> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         centerTitle: true,
//         title: const Text(
//           'О приложение',
//           style: TextStyle(
//             fontSize: 20,
//             color: Colors.black,
//           ),
//         ),
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: const Icon(
//             Icons.menu,
//             size: 24,
//             color: Colors.green,
//           ),
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(
//               Icons.search,
//               size: 24,
//               color: Colors.green,
//             ),
//           ),
//         ],
//       ),
//       body: Container(
//         padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
//         margin: const EdgeInsets.all(10),
//         color: Color.fromARGB(26, 8, 170, 199),
//         width: 500,
//         height: 400,
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const FlutterLogo(
//                   size: 50,
//                 ),
//                 const SizedBox(
//                   width: 10,
//                 ),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: const [
//                     Text(
//                       'Kaktus.media',
//                       style: TextStyle(fontSize: 30),
//                     ),
//                     Text('версия 1.2.3')
//                   ],
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 40,
//             ),
//             Row(
//               children: const [
//                 Icon(
//                   Icons.star,
//                 ),
//                 Text(
//                   'Оценить \n приложение',
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 SizedBox(
//                   width: 40,
//                 ),
//                 Icon(Icons.share),
//                 Text(
//                   'Поделиться \n приложением',
//                   style: TextStyle(fontSize: 18),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: const [
//                 Icon(Icons.favorite),
//                 Text(
//                   'Контакты \n редакция',
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 SizedBox(
//                   width: 55,
//                 ),
//                 Icon(Icons.chat_sharp),
//                 Text(
//                   'Связаться с \n разработчиком',
//                   style: TextStyle(fontSize: 18),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//              Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                const Icon(Icons.phone_callback),
//                 Expanded(
//                   child: TextButton(
//                   style: TextButton.styleFrom(
//                     textStyle: const TextStyle(fontSize: 20),
//                   ),
//                   onPressed: () {},
//                   child: const Text( 'Контакты \n редакция',
//                     style: TextStyle(fontSize: 18),),
                  
//                           ),
//                 ),
//               ],
//             ),
           

//           ],
//         ),
//       ),
//     );
//   }
// }

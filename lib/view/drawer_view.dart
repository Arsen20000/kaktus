import 'package:flutter/material.dart';
import 'package:kaktus/constans/app_colors.dart';
import 'package:kaktus/constans/app_text.dart';
import 'package:kaktus/constans/app_text_syle.dart';
import 'package:kaktus/view/kaktus_view.dart';

import '../components/drawer_button.dart';

class DrawerView extends StatefulWidget {
  const DrawerView({super.key});

  @override
  State<DrawerView> createState() => _DrawerViewState();
}

class _DrawerViewState extends State<DrawerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:AppColors.AppBarColors
        ),
        drawer: Drawer(
          backgroundColor:AppColors.BackgroundColor,
            child: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children:[
              SizedBox(
                height: 165,
                child: DrawerHeader(
                  // ignore: sort_child_properties_last
                  child: Column(
                    children: [
                      DrawerButton(
                        icon: Icons.phone,
                        text: AppText.News,
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    const  SizedBox(
                        height: 10,
                      ),
                      DrawerButton(
                        icon: Icons.call,
                        text: AppText.AppBarText,
                        onTap: () {
                          Navigator.push(
                            context, MaterialPageRoute(
                              builder: (BuildContext context) 
                               => const KaktusMedia()));
                          },
                      ),
                    ],
                  ),
                  decoration:const BoxDecoration(
                    color:AppColors.BackgroundColor
                  ),
                ),
              ),
            ])));
  }
}


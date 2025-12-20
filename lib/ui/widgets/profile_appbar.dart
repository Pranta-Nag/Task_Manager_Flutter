 import 'package:flutter/material.dart';
import 'package:task_manager/ui/utility/app_colors.dart';
import 'package:task_manager/ui/widgets/NetworkCashedImage.dart';

AppBar profileAppbar() {
    return AppBar(
      backgroundColor: AppColors.themeColor,
      leading: const Padding(
        padding: EdgeInsets.all(8.0),
        child: CircleAvatar(
          radius: 10,
          child: Networkcashedimage(url: ''),
        ),
      ),
      title: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pranta Nag',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          Text(
            'prantanag10@gmail.com',
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(onPressed: (){}, icon:const Icon(Icons.logout),),
      ],
    );
  }
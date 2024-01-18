// ignore_for_file: unused_import, prefer_const_constructors_in_immutables, prefer_const_constructors, unused_local_variable, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localevent_ui_app/app_state.dart';
import 'package:localevent_ui_app/styleguide.dart';
import 'package:provider/provider.dart';
import '../../model/category.dart';

class CategoryWidget extends StatelessWidget {
  final Category category;
  CategoryWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    final isSelected = appState.selectedCategoryId == category.categoryId;

    return GestureDetector(
      onTap: (){
        if(!isSelected){
          appState.updateCategoryId(category.categoryId);
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          border: Border.all(color: isSelected ? Colors.white : Color(0x99FFFFFF),width: 3),
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: isSelected ? Colors.white : Colors.transparent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              category.icon,
              color: isSelected ? Theme.of(context).primaryColor : Colors.white,
              size: 40,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              category.name,
              style: isSelected ? selectedCategoryTextStyle : categoryTextStyle,
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:newsapp/model/sourcesResponse/Source.dart';

class TabWidget extends StatelessWidget {
  TabWidget(this.source , this.isSelected);

  Source source;
  bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 16.5, vertical: 7.5),
        decoration: BoxDecoration(
          color: isSelected ? Theme.of(context).primaryColor : Colors.transparent,
            border: Border.all(
                color: Theme.of(context).primaryColor, width: 2, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(25)),
        child: Text(
          '${source.name}',
          style: TextStyle(
              color: isSelected ? Colors.white : Theme.of(context).primaryColor, fontFamily: 'Exo', fontSize: 14),
        ));
  }
}

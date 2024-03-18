import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/model/sourcesResponse/Source.dart';
import 'package:newsapp/ui/widget/SourceTab//TabWidget.dart';
import 'package:newsapp/ui/widget/news/NewsListWidget.dart';

class SourcesTabsWidget extends StatefulWidget {
  List<Source> source;
  SourcesTabsWidget(this.source);

  @override
  State<SourcesTabsWidget> createState() => _SourcesTabsWidgetState();
}

class _SourcesTabsWidgetState extends State<SourcesTabsWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 30),
      child: DefaultTabController(
        length: widget.source.length,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TabBar(
                dividerColor: Colors.transparent,
                indicatorColor: Colors.transparent,
                labelColor: Colors.transparent,
                unselectedLabelColor: Colors.transparent,
                overlayColor: MaterialStatePropertyAll(Colors.transparent),
                onTap: (newIndex) {
                  selectedIndex = newIndex;
                  setState(() {});
                },
                isScrollable: true,
                tabs: widget.source
                    .map((source) => TabWidget(
                        source, widget.source.indexOf(source) == selectedIndex))
                    .toList()),
            Expanded(child: NewsListWidget(widget.source[selectedIndex])),
          ],
        ),
      ),
    );
  }
}

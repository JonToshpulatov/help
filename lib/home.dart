import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);


  @override
  State<home> createState() => _homeState();

}



class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Pdf('assets/a.pdf'),
    );
  }
}
Pdf(final a){
  return PDF(
    enableSwipe: true,
    swipeHorizontal: false,
    autoSpacing: false,
    pageFling: false,
    onError: (error) {
      print(error.toString());
    },
    onPageError: (page, error) {
      print('$page: ${error.toString()}');
    },
    onPageChanged: (page, total) async {
      print('page change: $page/$total');
    },
  ).fromAsset(a);
}
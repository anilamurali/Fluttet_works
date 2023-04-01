import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_december2/media%20query/desktop.dart';
import 'package:flutter_december2/media%20query/mobile.dart';


class MediaHome extends StatefulWidget {

  @override
  State<MediaHome> createState() => _MediaHomeState();
}

class _MediaHomeState extends State<MediaHome> {
  @override
  Widget build(BuildContext context) {
    var deviceWidth=MediaQuery.of(context).size.width;
    if (deviceWidth>600) {
      
      return  MyDesktopBody();
    }
    else{
      return  const MyMobileBody();
    }
    
  }
}
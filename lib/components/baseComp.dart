import 'package:flutter/material.dart';
import 'package:efox_flutter/store/STORE.dart';

class Index extends StatelessWidget {
  final dynamic child;
  final String title;

  Index({Key key, this.title, this.child}):super(key: key);

  @override
  Widget build (BuildContext context ) {
    return STORE.connect(
      builder: (context, child, model) {
        return Scaffold(
          appBar: AppBar(
            title: Text(this.title),
          ),
          body: ListView(
            children: [
              this.child(context, child, model)
            ],
          ),
        );
      }
    );
  }
}

//import 'package:flutter/material.dart';
//import 'package:efox_flutter/page/Index.dart';
//
//class TestDemo extends StatefulWidget {
//  @override
//  _TestDemoState createState() => new _TestDemoState();
//}
//
//class _TestDemoState extends State<TestDemo> {
//  @override
//  Widget build(BuildContext context) {
//    return Index(
//      title: 'TestDemo',
//      child: (context, child, model) {
//        return Center(
//          child: Text(
//            'Test title',
//            style: TextStyle(
//              fontSize: 22.0,
//            ),
//          ),
//        );
//      },
//    );
//  }
//}

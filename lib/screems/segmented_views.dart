import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SegmentedViews extends StatefulWidget {
  const SegmentedViews({Key? key}) : super(key: key);

  @override
  State<SegmentedViews> createState() => _SegmentedViewsState();
}

class _SegmentedViewsState extends State<SegmentedViews> {
  int selectedSegmentedIndexValue = 0;
  int selectedSliderSegmentedIndexValue = 0;

  Map<int, Widget> children = <int, Widget>{
    0: const Expanded(
      child: Text("BLUE"),
    ),
    1: const Expanded(
      child: Text("RED"),
    ),
    2: const Expanded(
      child: Text("YELLOW"),
    ),
  };

  List<Widget> containers = [
    Container(
        color: Colors.blue,
        //  height: MediaQuery.of(context).size.height * 0.80,
        // width: double.infinity,
height: 250,
        child: const Center(child: Text('Blue contianer'))),
    Container(
        color: Colors.red,
height: 250,
        //  height: MediaQuery.of(context).size.height * 0.80,
        // width: double.infinity,
        child: const Center(child: Text('Red contianer'))),
    Container(
        color: Colors.yellow,
height: 250,
        //  height: MediaQuery.of(context).size.height * 0.80,
        // width: double.infinity,
        child: const Center(child: Text('Yelloe contianer'))),
  ];

  //Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          leading: CupertinoNavigationBarBackButton(
            onPressed: () {},
            color: CupertinoColors.label,
          ),
          middle: const Text(" Cupertino Style")),
      child: Container(
        margin: const EdgeInsets.only(top: 60, left: 20, right: 20),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  const Text("Segmented example",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    child: CupertinoSegmentedControl(
                      children: children,
                      onValueChanged: (index) {
                        setState(() {
                          selectedSegmentedIndexValue =
                              int.parse(index.toString());
                        });
                      },
                      groupValue: selectedSegmentedIndexValue,
                     // selectedColor: CupertinoColors.activeOrange,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  containers[selectedSegmentedIndexValue],
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            Expanded(
                child: Column(children: <Widget>[
              const Text("Sliding Segmented example",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                child: CupertinoSlidingSegmentedControl(
                  children: children,
                  onValueChanged: (index) {
                    setState(() {
                      selectedSliderSegmentedIndexValue =
                          int.parse(index.toString());
                    });
                  },
                  thumbColor: CupertinoColors.activeOrange,
                  backgroundColor: CupertinoColors.white,
                  groupValue: selectedSliderSegmentedIndexValue,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              containers[selectedSliderSegmentedIndexValue],
            ])),
          ],
        ),
      ),
    );
  }
}

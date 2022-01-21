import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  Color _color = Colors.black12;

  double selectedSliderValue = 0;
  bool swichstate = false;

  void _openDialog(ctx) {
    showCupertinoDialog(
        context: ctx,
        builder: (_) => CupertinoAlertDialog(
              title: const Text("This is Cupertino Dialog"),
              content: const Text("Do you like cuperno Dialog? "),
              actions: [
                // Close the dialog
                CupertinoDialogAction(
                    child: const Text('Cancel'),
                    isDestructiveAction: true,
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                CupertinoDialogAction(
                  isDefaultAction: true,
                  child: const Text('Ok'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ));
  }

  void showPicker() {
    showCupertinoModalPopup(
        context: context,
        builder: (BuildContext builder) {
          return Container(
              height: MediaQuery.of(context).copyWith().size.height * 0.25,
              color: Colors.white,
              child: CupertinoPicker(
                children: const [
                  Text("Red"),
                  Text("lime"),
                  Text("blue"),
                  Text("Green"),
                  Text("cyan"),
                  Text("brown"),
                  Text("Pink"),
                  Text("gray"),
                  Text("Yelow"),
                  Text("White"),

                ],
                onSelectedItemChanged: (value) {
                  setState(() {
                    switch (value) {
                      case 0:
                        _color = Colors.red;
                        break;
                      case 1:
                        _color = Colors.lime;
                        break;
                      case 2:
                        _color = Colors.blue;
                        break;
                      case 3:
                        _color = Colors.green;
                        break;
                      case 4:
                        _color = Colors.cyan;
                        break;
                      case 5:
                        _color = Colors.brown;
                        break;
                      case 6:
                        _color = Colors.pink;
                        break;
                      case 7:
                        _color = Colors.grey;
                        break;
                      case 8:
                      _color = Colors.yellow;
                      break;
                      case 9:
                      default:
                        _color = Colors.black12;
                    }
                  });
                },
                itemExtent: 25,
                diameterRatio: 1,
                useMagnifier: true,
                magnification: 1.3,
                looping: true,
              )
              );
        });
  }

  TextEditingController controllerSeach = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 30),
        child: CupertinoPageScaffold(
            backgroundColor: _color,
            navigationBar: CupertinoNavigationBar(
                leading: CupertinoNavigationBarBackButton(
                  onPressed: () {},
                  color: CupertinoColors.label,
                ),
                middle: CupertinoSearchTextField(
                  controller: controllerSeach,
                  onChanged: (value) {},
                  onSubmitted: (value) {},
                  autocorrect: true,
                ),
                trailing: GestureDetector(
                  child: const Text("Cancel"),
                  onTap: () {
                    controllerSeach.clear();
                  },
                )),
            child: Center(
              child: Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Slider example",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Row(
                            children: [
                              Expanded(
                                child: CupertinoSlider(
                                  thumbColor: CupertinoColors.activeOrange,
                                  value: selectedSliderValue,
                                  min: 0,
                                  max: 100,
                                  divisions: 100,
                                  onChanged: (value) {
                                    selectedSliderValue = value;
                                    setState(() {});
                                  },
                                  activeColor: CupertinoColors.activeGreen,
                                ),
                              ),
                              Text("${selectedSliderValue.round()}"),
                            ],
                          ),
                        ],
                      ),

                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Switch  example",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            CupertinoSwitch(
                              value: swichstate,
                              onChanged: (value) {
                                swichstate = value;
                                setState(() {});
                              },
                              thumbColor: CupertinoColors.activeOrange,
                            ),
                          ]),

                      //Picker Example
                      CupertinoButton(
                        color: Colors.black54,
                        onPressed: () => setState(() {
                          showPicker();
                        }),
                        child: const Text('Picker',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),

                      CupertinoButton(
                        //Open dialog Example
                        color: Colors.black54,
                        onPressed: () => _openDialog(context),
                        child: const Text('Open Dialog',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      )
                    ]),
              ),
            )));
  }
}

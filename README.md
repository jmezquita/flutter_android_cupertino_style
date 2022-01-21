# flutter Android Cupertino Style

Si te gusta el diseño de **IOS** y quiere aplicarlo en tu app para **Android**, aquí te dejo un ejemplo de cómo se verían los widgets más utilizados de **cupertino** en Android. No constan de funciones ni siquiera de un diseño, al app  es solo para mostrar cómo se vería el estilo IOS en Android 

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/jmezquita)


## Demo

![flutter_android_cupertino_style](/screenshot/img1.gif)

 ## CupertinoButton
```dart
  CupertinoButton(
                color: Colors.black54,
                onPressed: () {
                  //some action here
                },
                child: const Text('caption here',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
```

 ## CupertinoActionSheet

```dart
      CupertinoActionSheet(
                      title: const Text('select a color',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54)),
                      message: const Text('You can change screem color',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54)),
                      actions: <CupertinoActionSheetAction>[
                        CupertinoActionSheetAction(
                          child: const Text(
                            'Blue',
                            style: TextStyle(color: Colors.blue),
                          ),
                          onPressed: () {
                            setState(() {
                              _color = Colors.blue;
                            });
                          },
                        ),
                        CupertinoActionSheetAction(
                          child: const Text('Red',
                              style: TextStyle(color: Colors.red)),
                          onPressed: () {
                            setState(() {
                              _color = Colors.red;
                            });
                          },
                        ),
                        CupertinoActionSheetAction(
                          child: const Text('Orange',
                              style: TextStyle(color: Colors.orange)),
                          onPressed: () {
                            setState(() {
                              _color = Colors.orange;
                            });
                          },
                        )
                      ],
                    ),
```

 ## CupertinoActivityIndicator
```dart
CupertinoAlertDialog(
                          title: const Text('Cargando Data'),
                          content: const Center(
                            child: CupertinoActivityIndicator(
                                animating: true, radius: 30),
                          ),
                          actions: <Widget>[
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Done')),
                          ],
                        )
```

 ## CupertinoAlertDialog
```dart
 showCupertinoDialog<void>(
                    context: context,
                    builder: (BuildContext context) => CupertinoAlertDialog(
                      title: const Text('Alert'),
                      content: const Text('Do you like  CupertinoAler?'),
                      actions: <CupertinoDialogAction>[
                        CupertinoDialogAction(
                          child: const Text('No'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        CupertinoDialogAction(
                          child: const Text('Yes'),
                          isDestructiveAction: true,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    ),
                  );
```
 ## CupertinoContextMenu
```dart
              CupertinoContextMenu(
                child: Container(
                  child: const Center(
                      child: Text("Context Menú",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black54,
                  ),
                  height: 60,
                  width: 250,
                ),
                previewBuilder: (
                  BuildContext context,
                  Animation<double> animation,
                  Widget child,
                ) {
                  return Container(
                    child: const Center(
                        child: Text("Cupertino Menú",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white))),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10 * animation.value),
                      color: Colors.black54,
                    ),
                    height: 60,
                    width: 250,
                  );
                },
                actions: <Widget>[
                  CupertinoContextMenuAction(
                    isDefaultAction: true,
                    child: const Text('Aceptar'),
                    onPressed: () {
                      //Navigator.pop(context);
                    },
                  ),
                  CupertinoContextMenuAction(
                    isDestructiveAction: true,
                    child: const Text('Cancelar'),
                    onPressed: () {
                      // Navigator.pop(context);
                    },
                  ),
                ],
              ),
```
 ## CupertinoDatePicker
```dart
  void showCupertinoDatePicker() {
    showCupertinoModalPopup(
        context: context,
        builder: (BuildContext builder) {
          return Container(
            height: MediaQuery.of(context).copyWith().size.height * 0.25,
            color: Colors.white,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              onDateTimeChanged: (value) {
                if (value != selectedDate) {
                  setState(() {
                    selectedDate = value;
                    dateBirthControl.text = value.toString();
                  });
                }
              },
              initialDateTime: DateTime.now(),
              minimumYear: 2022,
              maximumYear: 2031,
            ),
          );
        });
  }

```

 ## CupertinoNavigationBar con un  CupertinoSearchTextField
```dart
CupertinoNavigationBar(
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
```

 ## CupertinoSlider
```dart
CupertinoSlider(
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
                                )
```

 ## CupertinoSwitch
```dart
  CupertinoSwitch(
                              value: swichstate,
                              onChanged: (value) {
                                swichstate = value;
                                setState(() {});
                              },
                              thumbColor: CupertinoColors.activeOrange,
                            )
```

 ## CupertinoPicker
```dart
CupertinoPicker(
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
```


 ## CupertinoPicker
```dart

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
        height: 250,
        child: const Center(child: Text('Blue container'))),
    Container(
        color: Colors.red,
        height: 250,
        child: const Center(child: Text('Red container'))),
    Container(
        color: Colors.yellow,
        height: 250,
        child: const Center(child: Text('Yelloe container'))),
  ];

            Column(
                children: <Widget> [
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
              )
```

 ## CupertinoPicker
```dart
 Column(children: <Widget>[
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
            ])

```

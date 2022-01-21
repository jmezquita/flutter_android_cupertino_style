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





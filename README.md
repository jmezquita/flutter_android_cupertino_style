# flutter Android Cupertino Style

Si te gusta el diseño de **IOS** y quiere aplicarlo en tu app para **Android**, aquí te dejo un ejemplo de cómo se verían los widgets más utilizados de **cupertino** en Android. No constan de funciones ni siquiera de un diseño, al app  es solo para mostrar cómo se vería el estilo IOS en Android 

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/jmezquita)


## Demo

![flutter_android_cupertino_style](/screenshot/img1.gif)


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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color _color = Colors.blue;

  //DateTime _selectedDate = DateTime(2021);

  @override
  Widget build(BuildContext context) {
    return Container(
   color: _color,
      child: Center(
        
       
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CupertinoButton(
                color: Colors.black54,
                onPressed: () {
                  showCupertinoModalPopup<void>(
                    context: context,
                    builder: (BuildContext context) => CupertinoActionSheet(
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
                  );
                },
                child: const Text('Sheet',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
              CupertinoButton(
                color: Colors.black54,
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return CupertinoAlertDialog(
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
                        );
                      });
                },
                child: const Text('Indicator',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
              CupertinoButton(
                color: Colors.black54,
                onPressed: () {
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
                },
                child: const Text('Alert',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
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
   
            ],
          ),
        ),
 
    );
  }
}

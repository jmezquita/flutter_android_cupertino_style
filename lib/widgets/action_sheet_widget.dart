import 'package:flutter/cupertino.dart';

class ActionSheetWidget extends StatefulWidget {
  const ActionSheetWidget({Key? key}) : super(key: key);

  @override
  State<ActionSheetWidget> createState() => _ActionSheetWidget();
}

class _ActionSheetWidget extends State<ActionSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          onPressed: () {
            showCupertinoModalPopup<void>(
              context: context,
              builder: (BuildContext context) => CupertinoActionSheet(
                title: const Text('select a action'),
                message: const Text('you have to select ona action'),
                actions: <CupertinoActionSheetAction>[
                  CupertinoActionSheetAction(
                    child: const Text('Goto one'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  CupertinoActionSheetAction(
                    child: const Text('goto Two'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            );
          },
          child: const Text('CupertinoActionSheet'),
        ),
      ),
    );
  }
}
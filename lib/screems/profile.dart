import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _Profile();
}

class _Profile extends State<Profile> {
  TextEditingController unerNameControl = TextEditingController(text: "");
  TextEditingController dateBirthControl = TextEditingController(text: "");


  DateTime selectedDate = DateTime(2022);

  void showDatePicker() {
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

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: CupertinoPageScaffold(
        backgroundColor: const Color(0xFFE2E2E2),
        navigationBar: CupertinoNavigationBar(
          // Try removing opacity to observe the lack of a blur effect and of sliding content.
          backgroundColor: CupertinoColors.systemGrey.withOpacity(0.5),
          middle: const Text('Cupertino style'),
        ),
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 30, left: 5, right: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CupertinoTextField(
                controller: unerNameControl,
                prefix: const Icon(CupertinoIcons.person),
                placeholder: "Type text here",
              ),
              const CupertinoTextField(
                prefix: Icon(CupertinoIcons.exclamationmark_bubble_fill),
                keyboardType: TextInputType.emailAddress,
                placeholder: "type email here",
              ),
              const CupertinoTextField(
                prefix: Icon(CupertinoIcons.phone),
                keyboardType: TextInputType.phone,
                placeholder: "type phone here",
              ),
              const CupertinoTextField(
                prefix: Icon(CupertinoIcons.number),
                keyboardType: TextInputType.number,
                placeholder: "type numer here",
              ),
              const CupertinoTextField(
                prefix: Icon(CupertinoIcons.padlock),
                keyboardType: TextInputType.text,
                obscureText: true,
                placeholder: "type pass here",
              ),
              Row(
                children: [
                  Expanded(
                    child: CupertinoTextField(
                      controller: dateBirthControl,
                      prefix: const Icon(CupertinoIcons.calendar),
                      keyboardType: TextInputType.datetime,
                      placeholder: "Type date here",
                    ),
                  ),
                  CupertinoButton(
                    child: const Icon(
                      CupertinoIcons.calendar,
                      size: 35,
                    ),
                    onPressed: () => showDatePicker(),
                  ),
                ],
              ),
              const CupertinoTextField(
                prefix: Icon(CupertinoIcons.share_solid),
                keyboardType: TextInputType.text,
                obscureText: true,
                placeholder: "type send here",
                textInputAction: TextInputAction.send,
              ),
              const CupertinoTextField(
                  keyboardType: TextInputType.text,
                  placeholder: "type miltiline text here",
                  minLines: 5,
                  maxLines: 6),
            ],
          ),
        ),
        
       
      ),
    );
  }
}

// ignore_for_file: avoid_print

import 'package:bottom_picker/bottom_picker.dart';
import 'package:bottom_picker/resources/arrays.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        body: ExampleApp(),
      ),
    );
  }
}

class ExampleApp extends StatelessWidget {
  final countryList = [
    Text('Algeria 🇩🇿'),
    Text('Maroco 🇲🇦'),
    Text('Tunisia 🇹🇳'),
    Text('Palestine 🇵🇸'),
    Text('Egypt 🇪🇬'),
    Text('Syria 🇸🇾'),
    Text('Irak 🇮🇶'),
    Text('Mauritania 🇲🇷')
  ];

  final buttonWidth = 300.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF6F2F2),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            'https://github.com/koukibadr/Bottom-Picker/blob/main/example/bottom_picker_logo.gif?raw=true',
            width: 200,
          ),
          SizedBox(
            width: buttonWidth,
            child: ElevatedButton(
              onPressed: () {
                _openSimpleItemPicker(context, countryList);
              },
              child: Text('Simple Item picker'),
            ),
          ),
          SizedBox(
            width: buttonWidth,
            child: ElevatedButton(
              onPressed: () {
                _openSecondSimpleItemPicker(context, countryList);
              },
              child: Text('Simple Item picker with different theme'),
            ),
          ),
          SizedBox(
            width: buttonWidth,
            child: ElevatedButton(
              onPressed: () {
                _openDatePicker(context);
              },
              child: Text('Date Picker'),
            ),
          ),
          SizedBox(
            width: buttonWidth,
            child: ElevatedButton(
              onPressed: () {
                _openDatePickerWithButtonStyle(context);
              },
              child: Text('Date Picker with button style'),
            ),
          ),
          SizedBox(
            width: buttonWidth,
            child: ElevatedButton(
              onPressed: () {
                _openRangeDatePicker(context);
              },
              child: Text('Range Date Picker'),
            ),
          ),
          SizedBox(
            width: buttonWidth,
            child: ElevatedButton(
              onPressed: () {
                _openArabicRangeDatePicker(context);
              },
              child: Text('Arabic Range Date Picker'),
            ),
          ),
          SizedBox(
            width: buttonWidth,
            child: ElevatedButton(
              onPressed: () {
                _openTimePicker(context);
              },
              child: Text('Time Picker'),
            ),
          ),
          SizedBox(
            width: buttonWidth,
            child: ElevatedButton(
              onPressed: () {
                _openDateTimePicker(context);
              },
              child: Text('Date and Time Picker'),
            ),
          ),
          SizedBox(
            width: buttonWidth,
            child: ElevatedButton(
              onPressed: () {
                _openDateTimePickerWithCustomButton(context);
              },
              child: Text('Bottom picker with custom button'),
            ),
          ),
          SizedBox(
            width: buttonWidth,
            child: ElevatedButton(
              onPressed: () {
                _openPickerWithCustomPickerTextStyle(context);
              },
              child: Text(
                'Bottom picker with custom picker text style',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _openSimpleItemPicker(BuildContext context, List<Text> items) {
    BottomPicker(
      items: items,
      title: 'Choose your country',
      titleStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      backgroundColor: Colors.yellow.withOpacity(0.6),
      bottomPickerTheme: BottomPickerTheme.morningSalad,
      onSubmit: (index) {
        print(index);
      },
      buttonAlignment: MainAxisAlignment.start,
      displaySubmitButton: false,
    ).show(context);
  }

  void _openSecondSimpleItemPicker(BuildContext context, List<Text> items) {
    BottomPicker(
      items: items,
      selectedItemIndex: 1,
      title: 'اختر بلدك',
      titleStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      onChange: (index) {
        print(index);
      },
      onSubmit: (index) {
        print(index);
      },
      bottomPickerTheme: BottomPickerTheme.morningSalad,
      layoutOrientation: LayoutOrientation.rtl,
    ).show(context);
  }

  void _openDatePicker(BuildContext context) {
    BottomPicker.date(
      title: 'Set your Birthday',
      dateOrder: DatePickerDateOrder.dmy,
      initialDateTime: DateTime(1996, 10, 22),
      maxDateTime: DateTime(1998),
      minDateTime: DateTime(1980),
      pickerTextStyle: TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.bold,
        fontSize: 12,
      ),
      titleStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
        color: Colors.blue,
      ),
      onChange: (index) {
        print(index);
      },
      onSubmit: (index) {
        print(index);
      },
      bottomPickerTheme: BottomPickerTheme.plumPlate,
    ).show(context);
  }

  void _openDatePickerWithButtonStyle(BuildContext context) {
    BottomPicker.date(
      title: 'Set your Birthday',
      dateOrder: DatePickerDateOrder.dmy,
      initialDateTime: DateTime(1996, 10, 22),
      maxDateTime: DateTime(1998),
      minDateTime: DateTime(1980),
      pickerTextStyle: TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.bold,
        fontSize: 12,
      ),
      titleStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
        color: Colors.blue,
      ),
      onChange: (index) {
        print(index);
      },
      onSubmit: (index) {
        print(index);
      },
      bottomPickerTheme: BottomPickerTheme.plumPlate,
      buttonStyle: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.blue[200]!,
        ),
      ),
      buttonWidth: 200,
      buttonContent: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Select date',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 15,
            )
          ],
        ),
      ),
    ).show(context);
  }

  void _openRangeDatePicker(BuildContext context) {
    BottomPicker.range(
      title: 'Set date range',
      description: 'Please select a first date and an end date',
      dateOrder: DatePickerDateOrder.dmy,
      minFirstDate: DateTime.now(),
      initialFirstDate: DateTime.now().add(Duration(days: 1)),
      pickerTextStyle: TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.bold,
        fontSize: 12,
      ),
      titleStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
        color: Colors.black,
      ),
      descriptionStyle: TextStyle(
        color: Colors.black,
      ),
      onRangeDateSubmitPressed: (firstDate, secondDate) {
        print(firstDate);
        print(secondDate);
      },
      bottomPickerTheme: BottomPickerTheme.plumPlate,
    ).show(context);
  }

  void _openArabicRangeDatePicker(BuildContext context) {
    BottomPicker.range(
      title: 'حدد النطاق الزمني',
      description: 'الرجاء تحديد أول تاريخ وتاريخ انتهاء',
      dateOrder: DatePickerDateOrder.dmy,
      layoutOrientation: LayoutOrientation.rtl,
      pickerTextStyle: TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.bold,
        fontSize: 12,
      ),
      titleStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
        color: Colors.black,
      ),
      descriptionStyle: TextStyle(
        color: Colors.black,
      ),
      onRangeDateSubmitPressed: (firstDate, secondDate) {
        print(firstDate);
        print(secondDate);
      },
      bottomPickerTheme: BottomPickerTheme.plumPlate,
    ).show(context);
  }

  void _openTimePicker(BuildContext context) {
    BottomPicker.time(
      title: 'Set your next meeting time',
      titleStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
        color: Colors.orange,
      ),
      onSubmit: (index) {
        print(index);
      },
      onClose: () {
        print('Picker closed');
      },
      bottomPickerTheme: BottomPickerTheme.orange,
      use24hFormat: true,
      initialTime: Time(
        minutes: 23,
      ),
      maxTime: Time(
        hours: 17,
      ),
    ).show(context);
  }

  void _openDateTimePicker(BuildContext context) {
    BottomPicker.dateTime(
      title: 'Set the event exact time and date',
      titleStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
        color: Colors.black,
      ),
      onSubmit: (date) {
        print(date);
      },
      onClose: () {
        print('Picker closed');
      },
      minDateTime: DateTime(2021, 5, 1),
      maxDateTime: DateTime(2021, 8, 2),
      initialDateTime: DateTime(2021, 5, 1),
      gradientColors: [
        Color(0xfffdcbf1),
        Color(0xffe6dee9),
      ],
    ).show(context);
  }

  void _openDateTimePickerWithCustomButton(BuildContext context) {
    BottomPicker.dateTime(
      title: 'Set the event exact time and date',
      titleStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
        color: Colors.black,
      ),
      onSubmit: (date) {
        print(date);
      },
      onClose: () {
        print('Picker closed');
      },
      buttonSingleColor: Colors.pink,
      minDateTime: DateTime(2021, 5, 1),
      maxDateTime: DateTime(2021, 8, 2),
      gradientColors: [
        Color(0xfffdcbf1),
        Color(0xffe6dee9),
      ],
    ).show(context);
  }

  void _openPickerWithCustomPickerTextStyle(BuildContext context) {
    BottomPicker(
      items: [
        Text('Leonardo DiCaprio'),
        Text('Johnny Depp'),
        Text('Robert De Niro'),
        Text('Tom Hardy'),
        Text('Ben Affleck'),
      ],
      title: 'Select the actor',
      pickerTextStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      closeIconColor: Colors.red,
    ).show(context);
  }
}

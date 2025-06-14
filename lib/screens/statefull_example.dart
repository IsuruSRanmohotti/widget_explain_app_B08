import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatefullExample extends StatefulWidget {
  const StatefullExample({super.key});

  @override
  State<StatefullExample> createState() => _StatefullExampleState();
}

class _StatefullExampleState extends State<StatefullExample> {
  bool isSwitchOn = false;
  TextEditingController emailController = TextEditingController();
  double radius = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('StateFul Widgets'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Switch'),
            CupertinoSwitch(
              value: isSwitchOn,
              onChanged: (value) {
                setState(() {
                  isSwitchOn = value;
                });
              },
            ),
            Switch.adaptive(
              value: isSwitchOn,
              onChanged: (value) {
                setState(() {
                  isSwitchOn = value;
                });
              },
            ),
            SizedBox(height: 40),
            Text('TextField'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: TextField(
                // maxLength: 5,
                //cursorColor: Colors.green,
                //enabled: false,
                //maxLines: 5,
                controller: emailController,
                onChanged: (value) {},
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade300,
                  filled: true,
                  //hint: Text('Email')
                  label: Text('Email'),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.grey.shade900),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.grey.shade900),
                  ),
                ),
              ),
            ),
            FilledButton(
              onPressed: () {
                print(emailController.text);
              },
              child: Text('Print Text'),
            ),
            SizedBox(height: 20),
            Slider(
              value: radius,
              min: 0,
              max: 50,
              onChanged: (value) {
                setState(() {
                  radius = value;
                });
              },
            ),
            SizedBox(height: 20),
            Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(radius),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

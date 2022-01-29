import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showvalue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey[300],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Checkbox'),
            ListTile(
              title: Text('Male'),
              leading: Checkbox(
                activeColor: Colors.amber,
                checkColor: Colors.blue,
                side: BorderSide(color: Colors.red),
                value: showvalue,
                onChanged: (value) {
                  setState(() {
                    showvalue = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('Female'),
              leading: Checkbox(
                activeColor: Colors.amber,
                checkColor: Colors.blue,
                side: BorderSide(color: Colors.red),
                value: showvalue,
                onChanged: (value) {
                  setState(() {
                    showvalue = value!;
                  });
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('checkbox list'),
            Divider(),
            CheckboxListTile(
              secondary: const Icon(Icons.alarm),
              title: const Text('Ringing at 5:00 AM every day'),
              subtitle: Text('Ringing after 12 hours'),
              value: false,
              onChanged: (value) {
                setState(() {
                  showvalue = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

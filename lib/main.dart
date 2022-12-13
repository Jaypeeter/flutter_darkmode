import "package:flutter/material.dart";

void main(){
  runApp(DarkMode());
}

class DarkMode extends StatefulWidget {
  const DarkMode({Key? key}) : super(key: key);

  @override
  State<DarkMode> createState() => _DarkModeState();
}

class _DarkModeState extends State<DarkMode> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDark? ThemeData.dark():ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Darkmode"),
        ),
        body:Column(
          children: [
            Text("Darkmode"),
            Text("Hello world"),
            ElevatedButton(onPressed: (){
              setState(() {
                isDark = !isDark;
              });
            }, child: Text("Toggle mode"))
          ],
        )
      ),
    );
  }
}

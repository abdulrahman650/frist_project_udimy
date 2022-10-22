import 'package:flutter/material.dart';

class counterScreen extends StatefulWidget
{

  @override
  State<counterScreen> createState() {
    return _counterScreenState();
  }
}

class _counterScreenState extends State<counterScreen>
{
  int counter = 1;

  @override
  void initState()
  {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              setState((){
                counter--;
                print(counter);
              });

            },
              child: Text('Minus'),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
            '$counter',
            style: TextStyle(fontSize: 50,
            fontWeight: FontWeight.w900),
            ),
          ),
            TextButton(onPressed: (){
              setState((){
                counter++;
                print(counter);
              });

            },
              child: Text('Plus'),),
          ],
        ),
      ),
    );
  }
}

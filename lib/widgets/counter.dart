import 'package:flutter/material.dart';

class CustomCounter extends StatefulWidget {
  @override
  _CustomCounterState createState() => _CustomCounterState();
}

class _CustomCounterState extends State<CustomCounter> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      if (_counter < 99) {
        _counter++;
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 1) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: _decrementCounter,
            child: Text(
              '-',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
          ),
          Text(
            '$_counter',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.black,
            ),
          ),
          InkWell(
            onTap: _incrementCounter,
            child: Text(
              '+',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
    // return Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         AnimatedOpacity(
    //           opacity: _counter != 0 ? 1.0 : 0.0,
    //           duration: Duration(milliseconds: 500),
    //           child: Text(
    //             '$_counter',
    //             style: TextStyle(
    //               fontSize: 48.0,
    //               color: Colors.white,
    //             ),
    //           ),
    //         ),
    //         SizedBox(height: 20.0),
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             FloatingActionButton(
    //               onPressed: _decrementCounter,
    //               backgroundColor: Colors.blue,
    //               child: Icon(Icons.remove),
    //             ),
    //             SizedBox(width: 20.0),
    //             FloatingActionButton(
    //               onPressed: _incrementCounter,
    //               backgroundColor: Colors.purple,
    //               child: Icon(Icons.add),
    //             ),
    //           ],
    //         ),
    //       ],
    //     ),
    //   )
  }
}

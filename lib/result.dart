import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/us.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      child: Center(
          child: Text(
        'Congratulations! From the input you have given, our model predicted that your visa will be approved!!',
        style: TextStyle(
            color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      )),
    ));
  }
}

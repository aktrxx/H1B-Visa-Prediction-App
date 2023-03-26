import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Congrats extends StatelessWidget {
  const Congrats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Congrats, our model predits that your H1B Visa will be approved'),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/congrats.png'),
                fit: BoxFit.contain,
              ),
            ),
            child: const Center(
                child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(''),
            )),
          )
        ],
      ),
    ));
  }
}

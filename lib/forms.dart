import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:honeb/loading.dart';
import 'package:honeb/result.dart';
import 'package:honeb/sorry.dart';
import 'package:honeb/urls.dart';
import 'package:textfield_search/textfield_search.dart';
import 'congrats.dart';
import 'dropdown.dart';
import 'package:http/http.dart' as http;

final name = TextEditingController();
final employe = TextEditingController();
final worksite = TextEditingController();
final job = TextEditingController();
final soc = TextEditingController();
final wages = TextEditingController();
final fulltime = TextEditingController();

class Forms extends StatefulWidget {
  const Forms({super.key});

  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 214, 214),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: TextField(
                  controller: name,
                  decoration: InputDecoration(label: Text('Enter your name'))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        fixedSize: Size(MediaQuery.of(context).size.width / 4,
                            MediaQuery.of(context).size.height / 16)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Previous')),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        fixedSize: Size(MediaQuery.of(context).size.width / 4,
                            MediaQuery.of(context).size.height / 16)),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(PageRoute2());
                    },
                    child: Text('Next')),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PageRoute2 extends CupertinoPageRoute {
  PageRoute2() : super(builder: (BuildContext context) => Q2());

  // OPTIONAL IF YOU WISH TO HAVE SOME EXTRA ANIMATION WHILE ROUTING
  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return FadeTransition(opacity: animation, child: const Q2());
  }
}

class Q2 extends StatefulWidget {
  const Q2({super.key});

  @override
  State<Q2> createState() => _Q2State();
}

class _Q2State extends State<Q2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 192, 185, 185),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: TextFieldSearch(
                  textStyle:
                      TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  initialList: employer,
                  label: 'Employe',
                  controller: employe),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        fixedSize: Size(MediaQuery.of(context).size.width / 4,
                            MediaQuery.of(context).size.height / 16)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Previous')),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        fixedSize: Size(MediaQuery.of(context).size.width / 4,
                            MediaQuery.of(context).size.height / 16)),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(PageRoute3());
                    },
                    child: Text('Next')),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PageRoute3 extends CupertinoPageRoute {
  PageRoute3() : super(builder: (BuildContext context) => Q3());

  // OPTIONAL IF YOU WISH TO HAVE SOME EXTRA ANIMATION WHILE ROUTING
  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return FadeTransition(opacity: animation, child: const Q3());
  }
}

class Q3 extends StatefulWidget {
  const Q3({super.key});

  @override
  State<Q3> createState() => _Q3State();
}

class _Q3State extends State<Q3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 70, 167, 227),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: TextFieldSearch(
                  textStyle:
                      TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  initialList: worksitels,
                  label: 'Work Site',
                  controller: worksite),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        fixedSize: Size(MediaQuery.of(context).size.width / 4,
                            MediaQuery.of(context).size.height / 16)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Previous')),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        fixedSize: Size(MediaQuery.of(context).size.width / 4,
                            MediaQuery.of(context).size.height / 16)),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(PageRoute4());
                    },
                    child: Text('Next')),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PageRoute4 extends CupertinoPageRoute {
  PageRoute4() : super(builder: (BuildContext context) => Q4());

  // OPTIONAL IF YOU WISH TO HAVE SOME EXTRA ANIMATION WHILE ROUTING
  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return FadeTransition(opacity: animation, child: const Q4());
  }
}

class Q4 extends StatefulWidget {
  const Q4({super.key});

  @override
  State<Q4> createState() => _Q4State();
}

class _Q4State extends State<Q4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 146, 255, 124),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: TextFieldSearch(
                  textStyle:
                      TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  initialList: jobtitle,
                  label: 'Job Title',
                  controller: job),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        fixedSize: Size(MediaQuery.of(context).size.width / 4,
                            MediaQuery.of(context).size.height / 16)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Previous')),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        fixedSize: Size(MediaQuery.of(context).size.width / 4,
                            MediaQuery.of(context).size.height / 16)),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(PageRoute5());
                    },
                    child: Text('Next')),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PageRoute5 extends CupertinoPageRoute {
  PageRoute5() : super(builder: (BuildContext context) => Q5());

  // OPTIONAL IF YOU WISH TO HAVE SOME EXTRA ANIMATION WHILE ROUTING
  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return FadeTransition(opacity: animation, child: const Q5());
  }
}

class Q5 extends StatefulWidget {
  const Q5({super.key});

  @override
  State<Q5> createState() => _Q5State();
}

class _Q5State extends State<Q5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 61, 236, 41),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: TextFieldSearch(
                  textStyle:
                      TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  initialList: soccode,
                  label: 'SOC Name',
                  controller: soc),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        fixedSize: Size(MediaQuery.of(context).size.width / 4,
                            MediaQuery.of(context).size.height / 16)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Previous')),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        fixedSize: Size(MediaQuery.of(context).size.width / 4,
                            MediaQuery.of(context).size.height / 16)),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(PageRoute6());
                    },
                    child: Text('Next')),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PageRoute6 extends CupertinoPageRoute {
  PageRoute6() : super(builder: (BuildContext context) => Q6());

  // OPTIONAL IF YOU WISH TO HAVE SOME EXTRA ANIMATION WHILE ROUTING
  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return FadeTransition(opacity: animation, child: const Q6());
  }
}

class Q6 extends StatefulWidget {
  const Q6({super.key});

  @override
  State<Q6> createState() => _Q6State();
}

class _Q6State extends State<Q6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 148, 169, 146),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: TextField(
                  style: TextStyle(color: Colors.white),
                  controller: wages,
                  decoration: InputDecoration(label: Text('Salary'))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        fixedSize: Size(MediaQuery.of(context).size.width / 4,
                            MediaQuery.of(context).size.height / 16)),
                    onPressed: (() => Navigator.pop(context)),
                    child: const Text('Back')),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        fixedSize: Size(MediaQuery.of(context).size.width / 4,
                            MediaQuery.of(context).size.height / 16)),
                    onPressed: (() =>
                        Navigator.of(context).pushReplacement(PageRoute7())),
                    child: const Text('Next')),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PageRoute7 extends CupertinoPageRoute {
  PageRoute7() : super(builder: (BuildContext context) => Q7());

  // OPTIONAL IF YOU WISH TO HAVE SOME EXTRA ANIMATION WHILE ROUTING
  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return FadeTransition(opacity: animation, child: const Q7());
  }
}
class Q7 extends StatefulWidget {
  const Q7({Key? key}) : super(key: key);

  @override
  State<Q7> createState() => _Q7State();
}

class _Q7State extends State<Q7> {
  var _prediction = '';
  bool _isLoading = false;

  Future<void> _makePostRequest() async {
    final String apiUrl = ENDPOINT;

    setState(() {
      _isLoading = true;
    });

    final response = await http.post(
      Uri.parse(apiUrl),
      body: {
        'emp': employe.text,
        'soc': soc.text,
        'job': job.text,
        'full': fulltime.text,
        'wage': wages.text,
        'work': worksite.text,
      },
    );

    setState(() {
      _isLoading = false;
    });

    if (response.statusCode == 200) {
      setState(() {
        _prediction = response.body;
      });

      if (_prediction == '1') {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Congrats()));
      } else if (_prediction == '0') {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Sorry()));
      }
    } else {
      setState(() {
        _prediction = 'E';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 195, 255, 190),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: TextFieldSearch(
                  textStyle:
                      const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  initialList: const ['Yes', 'No'],
                  label: 'Are you working full time?',
                  controller: fulltime),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        fixedSize: Size(MediaQuery.of(context).size.width / 4,
                            MediaQuery.of(context).size.height / 16)),
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Back')),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        fixedSize: Size(MediaQuery.of(context).size.width / 4,
                            MediaQuery.of(context).size.height / 16)),
                    onPressed: () {
                      _makePostRequest();
                    },
                    child: const Text('Next')),
              ],
            )
          ],
        ),
      ),
      // Show the loading page while fetching data from the backend
      floatingActionButton: _isLoading ? const Loading() : null,
    );
  }
}

// class Q7 extends StatefulWidget {
//   const Q7({super.key});

//   @override
//   State<Q7> createState() => _Q7State();
// }

// class _Q7State extends State<Q7> {
//   var _prediction = '';
//   Future<void> _makePostRequest() async {
//     final String apiUrl = 'http://10.0.2.2:8000/api';

//     final response = await http.post(
//       Uri.parse(apiUrl),
//       body: {
//         'emp': employe.text,
//         'soc': soc.text,
//         'job': job.text,
//         'full': fulltime.text,
//         'wage': wages.text,
//         'work': worksite.text,
//       },
//     );

//     if (response.statusCode == 200) {
//       setState(() {
//         _prediction = response.body;
//         fulltime.text = _prediction;
        
//       });
//     } else {
//       setState(() {
//         _prediction = 'E';
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 195, 255, 190),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             SizedBox(),
//             Padding(
//               padding: const EdgeInsets.all(40.0),
//               child: TextFieldSearch(
//                   textStyle:
//                       TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
//                   initialList: const ['Yes', 'No'],
//                   label: 'Are you working full time?',
//                   controller: fulltime),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.black,
//                         fixedSize: Size(MediaQuery.of(context).size.width / 4,
//                             MediaQuery.of(context).size.height / 16)),
//                     onPressed: (() => Navigator.pop(context)),
//                     child: const Text('Back')),
//                 ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.black,
//                         fixedSize: Size(MediaQuery.of(context).size.width / 4,
//                             MediaQuery.of(context).size.height / 16)),
//                     onPressed: (() => {
                      
//                       _makePostRequest(),
//                           // if (_prediction == '1' || _prediction == '0')
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => const Loading()))
//                         }),
//                     child: const Text('Next')),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

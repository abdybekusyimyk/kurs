import 'package:flutter/material.dart';
import 'package:kurs/alert.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.white30,
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: [Icon(Icons.male), Text('MALE')],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    color: Colors.white30,
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: [Icon(Icons.female), Text('FEMALE')],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                color: Colors.white30,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('HEIGHT'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text('180'), Text('cm')],
                      ),
                      Slider(
                        value: _currentSliderValue,
                        max: 100,
                        // divisions: 2,
                        label: _currentSliderValue.toString(),
                        onChanged: (double value) {
                          setState(() {
                            _currentSliderValue = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.white30,
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        children: [
                          Text('weight'),
                          Text('60'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white10,
                                child: Icon(Icons.remove),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white10,
                                child: Icon(Icons.remove),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    color: Colors.white30,
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        children: [
                          Text('weight'),
                          Text('60'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white10,
                                child: Icon(Icons.remove),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white10,
                                child: Icon(Icons.remove),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () => shoh(context),
        // setState(() {
        //   // shocdio(context);
        //   Main()
        // });
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => Main()));

        child: Container(
          color: Colors.redAccent,
          width: double.infinity,
          height: 50,
          child: Center(child: Text('Conkulotro')),
        ),
      ),
    );
  }
}

// Widget shocdio(BuildContext context) {
//   return Center(
//     child: Container(
//       width: 100,
//       height: 100,
//       color: Colors.white,
//     ),
//   );
// }

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 400,
          color: Colors.white24,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: double.infinity,
                height: 30,
                color: Colors.teal,
                child: Row(
                  children: [
                    Icon(Icons.read_more_outlined),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      "data",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Jyiyntyk",
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 250,
                    height: 250,
                    color: Colors.white54,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("data"),
                        Text("data"),
                        Text("data"),
                      ],
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: double.infinity,
                  height: 30,
                  color: Colors.teal,
                  child: Center(
                    child: Text(
                      "data",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> shoh(BuildContext context) {
  return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: double.infinity,
                height: 30,
                color: Colors.teal,
                child: Row(
                  children: [
                    Icon(Icons.read_more_outlined),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      "data",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Jyiyntyk",
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 250,
                    height: 250,
                    color: Colors.white54,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("data"),
                        Text("data"),
                        Text("data"),
                      ],
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: double.infinity,
                  height: 30,
                  color: Colors.teal,
                  child: Center(
                    child: Text(
                      "data",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      });
}

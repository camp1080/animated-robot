import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Assignment',
      theme: ThemeData(
        fontFamily: 'GeistMono',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Assignment'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset('assets/images/dandadan1.png', width: 200),
                    const SizedBox(width: 6),
                    Image.asset('assets/images/dandadan2.png', width: 200),
                    const SizedBox(width: 6),
                    Image.asset('assets/images/dandadan3.png', width: 200),
                  ],
                ),
              ),

              const SizedBox(height: 6),

              const ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Home - Regular',
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                tileColor: Colors.lightBlueAccent,
              ),

              const SizedBox(height: 6),
              const ListTile(
                leading: CircleAvatar(child: Icon(Icons.star)),
                title: Text(
                  'Star - Bold',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                tileColor: Colors.lightBlueAccent,
              ),

              const SizedBox(height: 6),
              const ListTile(
                leading: Icon(Icons.info),
                title: Text(
                  'Info - Thin',
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
                tileColor: Colors.lightBlueAccent,
              ),
              const SizedBox(height: 6),
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings - Default Font',
                    style: TextStyle(fontFamily: "Roboto")),
                tileColor: Colors.lightBlueAccent,
              ),

              const SizedBox(height: 6),

              // Horizontal ListView
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.network(
                        'https://tinyurl.com/222pyaxf',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 6),
                    SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.network(
                        'https://tinyurl.com/4xk28xae',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 6),
                    SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.network(
                        'https://tinyurl.com/3xa9tj3r',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
// lab2-Nhom13
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/phamhuuthach.jpg"),
              ),
              Text("Phạm Hữu Thạch",
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),),
              Text('Flutter developer',
                style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.teal.shade100,
                    fontSize: 20,
                    letterSpacing:  2.5,
                    fontWeight: FontWeight.bold
                ),),
              SizedBox(height: 20, width: 150,child: Divider(color: Colors.teal.shade100,),),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading:  Icon(Icons.phone, color: Colors.teal,),
                      title: Text('+8426 430 775', style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20),
                      ),
                    )
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading:  Icon(Icons.mail, color: Colors.teal,),
                      title: Text('thachhthlqt@gmail.com', style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20),
                      ),
                    )
                  // Row(
                  //   children: [
                  //     Icon(Icons.mail, color: Colors.teal,),
                  //     SizedBox(width: 10,),
                  //     Text('+22 783 389', style: TextStyle(
                  //       color: Colors.teal.shade900,
                  //       fontFamily: 'Source Sans Pro',
                  //       fontSize: 20
                  //     ),)
                  //   ],
                  // ),
                ),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

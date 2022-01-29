import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final screnn_height = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color.fromRGBO(247, 211, 2, 5),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 30,width: 30,child: Image(image: AssetImage('assets/overlapped.png'),),),
                      SizedBox(width: 10,),
                      Text('Yellow',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27, color: Colors.black ),),
                      Text('Card',
                        style: TextStyle(fontWeight: FontWeight.bold,fontFamily:'Sora-Thin', fontSize: 27, color: Colors.black ),),
                    ],
                  ),
                  SizedBox(height: screnn_height*0.35,),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [Expanded(child: FlatButton(onPressed: () {
                          Navigator.pushReplacementNamed(context, '/wallet');
                      },
                      height: 50,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))) ,
                        child: Text('Get Started', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),color: Colors.white,))
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text('Login', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
                  ),
                  SizedBox(height: 25,)
                   ],
              ),
      ),
    );
  }
}

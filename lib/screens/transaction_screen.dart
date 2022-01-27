import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  _TransactionScreenState createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  TextEditingController? _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screnn_height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 70,),
          Text('Transactions', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35,letterSpacing: 1.5),),
          SizedBox(height: 25,),
          Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1,color: Color.fromRGBO(192, 196, 194,1,)),
                          borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 10,),
                          Expanded(
                            child: TextField(
                              controller: _textEditingController,
                              decoration: const InputDecoration(
                                  hintText: 'Search for transactions',
                                  hintStyle: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromRGBO(72, 74, 73,1,),
                                  ),
                                  border: InputBorder.none
                              ),
                            ),
                          ),
                          Icon(MdiIcons.magnify, size: 30,),
                          SizedBox(width: 10,)
                        ],
                      ),
                    ),
                  ),
                ],
              )
          ),
          Expanded(
            child: SingleChildScrollView( scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //SizedBox(height: screnn_height*0.05,),
                  Center(
                    child: SizedBox(width: 300,height: screnn_height*0.45, child: Image(image: AssetImage('assets/Screenshot_20220117-164031_1642536901487.png'),fit: BoxFit.cover,),),
                  ),
                  Center( child: Column( children: [
                    Text('Nothing to see here',
                      style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold,letterSpacing: 1.1),),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("You haven't made any transactions yet, all transactions will show up here",
                        style: TextStyle(color: Color.fromRGBO(72, 74, 73,1,), fontSize: 19),textAlign: TextAlign.center,),
                    )
                  ],),)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

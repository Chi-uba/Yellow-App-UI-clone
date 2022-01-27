import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({Key? key}) : super(key: key);


  @override
  _SupportScreenState createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  TextEditingController? _textEditingController1 = TextEditingController();
  TextEditingController? _textEditingController2 = TextEditingController();
  TextEditingController? _textEditingController3 = TextEditingController();
  TextEditingController? _textEditingController4 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final screnn_width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container( height: 35, color: Colors.black,
            child: Center(child: Icon(MdiIcons.arrowBottomLeftBoldBox, color: Colors.white,size: 20,)),),
          Container(color: Color.fromRGBO(255, 194, 87,1),height: 60,
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(onPressed: () {}, shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))) ,
                    color: Color.fromRGBO(237, 170, 36,4),height: 30, child: Row(children: [
                      SizedBox(height: 20,width: 20,child: Image(image: AssetImage('assets/chat.png'), fit: BoxFit.cover)),
                      SizedBox(width: 6,),
                      Text('Ask',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.brown[600]),)
                  ],),),
                  SizedBox(width: 20,),
                  Row(children: [
                    SizedBox(height: 20,width: 20,child: Image(image: AssetImage('assets/search.png'), fit: BoxFit.cover)),
                    SizedBox(width: 6,),
                    Text('Answers',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.brown[600]))
                  ],),
                ],
              ),
            ],) , ),
          Expanded(
            child: SingleChildScrollView(scrollDirection: Axis.vertical,
              child: Column(children: [
                Container(height: 200,width:screnn_width ,
                    child: const Expanded(child: Image(fit: BoxFit.cover,image: AssetImage('assets/Screenshot_20220117-164059_1642693197074.png')))),
                const SizedBox(height: 10,),
                SupportTile('Name',_textEditingController1),
                SupportTile('Subject',_textEditingController2),
                SupportTile('Email address',_textEditingController3),
                Row(
                  children: [
                    Expanded(
                      child: Container(child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [
                          Text('How can we help?', style: TextStyle(fontSize: 20, color: Colors.grey[600],fontWeight: FontWeight.bold),),
                          SizedBox(height: 8,),
                          Container(height: 90,decoration: BoxDecoration(
                            border: Border.all(width: 1,color: Colors.grey),
                          ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      controller: _textEditingController4,
                                      decoration: const InputDecoration(
                                          border: InputBorder.none
                                      ),
                                    ),
                                  ),
                                  Row(mainAxisAlignment: MainAxisAlignment.end,children: [
                                    GestureDetector(child: SizedBox(height: 25,width: 25,child: const Image(image: AssetImage('assets/picture.png'),fit: BoxFit.cover,)),
                                      onTap: () {},), const SizedBox(width: 15,),
                                    GestureDetector(child: const Icon(MdiIcons.emoticonExcitedOutline), onTap: () {},), const SizedBox(width: 15,),
                                  ],),
                                  SizedBox(height: 10,)
                                ],
                              ),
                            ),
                          ),

                        ],),
                      ),),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left:20.0, right: 20, top: 10),
                  child: Row(children: [
                    Expanded(child: MaterialButton(onPressed: () {},
                      height: 60, color: const Color.fromRGBO(255, 194, 87,1),
                      child: Text('Send a message',style: TextStyle(color: Colors.brown, fontSize: 20)),))
                  ],),
                ),
                SizedBox(height: 20,)
              ],),
            ),
          ),

        ],
      ),
    );
  }
  Widget SupportTile(String name, TextEditingController? _textEditingController) {
    return Row(
      children: [
        Expanded(
          child: Container(child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [
              Text('$name', style: TextStyle(fontSize: 20, color: Colors.grey[600],fontWeight: FontWeight.bold),),
              SizedBox(height: 8,),
              Container(decoration: BoxDecoration(
                border: Border.all(width: 1.5,color: Colors.grey),
              ),
                child: TextField(
                  controller: _textEditingController,
                  decoration: const InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              )
            ],),
          ),),
        ),
      ],
    );
  }
}

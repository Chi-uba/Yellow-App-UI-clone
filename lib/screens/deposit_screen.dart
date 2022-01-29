import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DepositScreen extends StatefulWidget {
  String screenName;
  String description;
   DepositScreen({Key? key, required this.screenName, required this.description}) : super(key: key);

  @override
  _DepositScreenState createState() => _DepositScreenState();
}

class _DepositScreenState extends State<DepositScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              GestureDetector( onTap: () {
                Navigator.pop(context);
              }, child: Icon(MdiIcons.chevronLeft, size: 40,),),
              const SizedBox(height: 40,),
              Text('${widget.screenName}',style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Text('${widget.description}', style: TextStyle(fontSize: 20, color: Colors.grey[600]),),
              SizedBox(height: 30.0,),
              DepositAndWithdrawalTile('envelope','Unverified','Verify Email', 'A verification link has been sent to your email address'
                  ', please click on the link to complete email verification.'),
              SizedBox(height: 20,),
              DepositAndWithdrawalTile('user', 'Incomplete', 'Tier 1 - NGN50,000 Daily Limit', "We'll need you to share"
                  "a copy of your government issued ID"),
              SizedBox(height: 20,),
              DepositAndWithdrawalTile('padlock', 'Incomplete', 'Create PIN', 'Your PIN is used to login, and to authorise '
                  'transactions you make on your account')
            ],),
          ),
        ),
      ),
    );
  }
  Widget DepositAndWithdrawalTile(String icon, String status, String name, String description) {
    return Row(
      children: [
        Expanded(
          child: Container(decoration: BoxDecoration(color: Colors.grey[50],borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,children: [
                Row(
                  children: [
                    CircleAvatar(backgroundColor: Colors.white,radius: 30,
                      child: GestureDetector(
                        onTap: () {},
                        child: CircleAvatar( backgroundColor: Colors.white, radius: 15,
                        child: Image(image: AssetImage('assets/$icon.png'), fit: BoxFit.cover,)),
                      ),),
                    Spacer(flex: 1,),
                    Container(height: 35,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(12.0,6,12,0),
                        child: Text(status,style: TextStyle(letterSpacing: 0.6,fontWeight: FontWeight.bold,color: Colors.grey[600],fontSize: 16, fontFamily: 'Outfit-VariableFont_wght.ttf'),),
                      ),)
                  ],
                ),
                SizedBox(height: 20,),
                Text(name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text(description, style: TextStyle(color: Colors.grey[600], fontSize: 15),)

          ],
          ),
            ),),
        ),
      ],
    );
  }
}

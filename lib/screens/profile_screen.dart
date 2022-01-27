import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ProfileScreen extends StatefulWidget {
   ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool switch_value = false;

   bool switch_value1 = false;

  @override
  Widget build(BuildContext context) {
    int tier_value = 0;

    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 245, 245,10,),
      body: SingleChildScrollView( scrollDirection: Axis.vertical,
      child: Column( children: [
        Container( height: 200, color: Colors.white,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row( crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(width: 20,),
                  CircleAvatar(radius: 30, backgroundColor: Colors.white,
                    child: Image(image: AssetImage('assets/wallet user.png'),fit: BoxFit.cover,),),
                  SizedBox(width: 20,),
                  Text('ishiuba488@gmail.com',style: TextStyle(color:Color.fromRGBO(72, 74, 73,1),letterSpacing: 1.0,fontSize: 17), )
              ],),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 80.0),
                child: MaterialButton(onPressed: () {}, color: Colors.black, height: 30,minWidth: 50,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  child: Text('Tier ${tier_value}',
                    style:TextStyle( fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18) ,),),
              )
            ],
          ),),
        const SizedBox(height: 10,),
        ProfileTile('Verify Identity', 'Complete your account verification','profile user.png'),
        const SizedBox(height: 2,),
        ProfileTile('Banks', 'Manage saved bank accounts','suitcase.png'),
        const SizedBox(height: 2,),
        ProfileTile('Security', 'Manage password, PIN & two-factor authentication','lock.png'),
        const SizedBox(height: 2,),
        ProfileTile('Preferences', 'Manage notifications & language','settings.png'),
        const SizedBox(height: 2,),
        Container(color: Colors.white,height: 100,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: SizedBox(height: 35, width: 30,child: Image(image: AssetImage('assets/eye-scanner.png'),fit: BoxFit.cover,)),
              ),
              SizedBox(width: 20,),
              Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                SizedBox(height: 10,),
                Text('Privacy Mode', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),),
                SizedBox(height: 5,),
                Container(constraints: BoxConstraints(maxWidth: 300),
                    child: Text('Show or hide your portfolio balance', style: TextStyle(fontSize: 17, color: Color.fromRGBO(72, 74, 73,1,),),))
              ],),
              Spacer(flex: 1,),
              buildSwitch(),
           ]))),
        SizedBox(height: 10,),
        ProfileTile('Refer and Earn', 'Earn commissions for referring Yellow Card to others','arrow-right.png'),
        SizedBox(height: 10,),
        Container( height: 100,color: Colors.white, child: Align( alignment: Alignment.topCenter,child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GestureDetector(
            onTap: (){}, child: Text('Sign out', style: TextStyle(color: Colors.red),),
          ),
        ),))
      ],),),
    );
  }

  Widget ProfileTile(String? tile_name,String? tile_description, String icon) {
    return Container(color: Colors.white,height: 100,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(top: 13.0),
            child: SizedBox(height: 35, width: 30,child: Image(image: AssetImage('assets/$icon'),fit: BoxFit.cover,)),
          ),
          SizedBox(width: 20,),
          Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
            SizedBox(height: 10,),
            Text('$tile_name', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),),
            SizedBox(height: 5,),
            Container(constraints: BoxConstraints(maxWidth: 300),
                child: Text('$tile_description', style: TextStyle(fontSize: 17, color: Colors.grey,),))
          ],),
          Spacer(flex: 1,),
          Center(child: Icon(MdiIcons.chevronRight, color: Colors.grey,))
        ],),
      ) ,);
  }

  Widget buildSwitch() => Switch.adaptive(value: switch_value,
      onChanged: (value) => setState(() => switch_value = value));
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    var amount = 0;
    return GestureDetector(
      onDoubleTap:() {setState(() {
        Navigator.pushReplacementNamed(context, '/splash');
      });
      } ,
      onTap:() {
      Navigator.pushReplacementNamed(context, '/transaction');
    },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            color: Color.fromRGBO(15, 3, 23, 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 4,
                    child: Container(
                      color: Color.fromRGBO(15, 3, 23, 1),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 40,),
                            CircleAvatar(radius: 30, backgroundColor: Colors.white,
                              child: Image(image: AssetImage('assets/wallet user.png'),fit: BoxFit.cover,),),
                            SizedBox(height: 40,),
                            Text('Portfolio Balance', style: TextStyle(color: Colors.white,fontSize: 20),),
                            SizedBox(height: 20,),
                            Text('NGN $amount', style: TextStyle( fontSize: 45, color: Colors.white,
                                fontWeight: FontWeight.bold),),
                            SizedBox(height: 45,),
                            Row(
                              children: [
                                Expanded(
                                  child: FlatButton(color: Color.fromRGBO(247, 211, 2, 5),
                                      onPressed: () {
                                    Navigator.pushNamed(context, '/deposit');
                                      },
                                      height: 55,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                                      child: Text('Deposit', style: TextStyle(color: Colors.black, fontSize: 20),)),
                                ),
                                SizedBox(width: 15,),
                                Expanded(
                                  child: FlatButton(color: Colors.white,
                                      onPressed: () {
                                    Navigator.pushNamed(context, '/withdraw');
                                      },
                                      height: 55,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                                      child: Text('Withdraw', style: TextStyle(color: Colors.black, fontSize: 20),)),
                                ),
                              ],
                            )
                        ],),
                      ),
                      )),
                Expanded(flex: 5,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,borderRadius: BorderRadius.only( topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0))
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Color.fromRGBO(245, 246, 250,1),borderRadius: BorderRadius.circular(15.0)),
                                      height: 120,
                                      child: Row(
                                        children: [
                                          SizedBox(width: 20,),
                                          CircularPercentIndicator(radius: 35,
                                            percent: 0.2, progressColor: Color.fromRGBO(247, 211, 2, 5),
                                            center: Text('18%', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
                                            animation: true,lineWidth: 5,),
                                          SizedBox(width: 20,),
                                          Container( constraints: BoxConstraints(maxWidth: 200),
                                              child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                SizedBox(height: 20,),
                                                Text('Complete Your Setup',
                                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 20), ),
                                              SizedBox(height: 4,),
                                              Text('You need to complete your account setup before you can start trading.',
                                                  style: TextStyle(color: Color.fromRGBO(72, 74, 73,1,)) ,)
                                              ],),),
                                          SizedBox(width: 30,),
                                          Icon(MdiIcons.chevronRight, color: Color.fromRGBO(72, 74, 73,1,),)
                                        ],
                                      ),
                                      ))
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: Color.fromRGBO(245, 246, 250,1),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(
                                  children: [
                                    Container( height: 100, color: Colors.white,
                                    child: Row(
                                      children: [
                                        SizedBox(width: 20,),
                                        SizedBox( height: 40, width: 40,
                                          child: Image(fit: BoxFit.cover,image: AssetImage('assets/naira.png'),),),
                                        SizedBox(width: 30,),
                                        Text('Nigerian Naira', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),),
                                        Spacer(flex: 1,),
                                        Text('NGN ${amount}', style: TextStyle(fontSize: 23),),
                                        SizedBox(width: 20,)
                                      ],
                                    )),
                                    SizedBox(height: 2.0,),
                                    CryptoTile(icon:'bitcoin.png',crypto_currency: 'Bitcoin', abbreviation: 'BTC',),
                                    SizedBox(height: 2.0,),
                                    CryptoTile(icon:'tether.png',crypto_currency: 'USDT', abbreviation: 'USDT',),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CryptoTile extends StatefulWidget {
  String? crypto_currency;
  String? abbreviation;
  String? icon;
   CryptoTile({Key? key,required this.icon,required this.crypto_currency, required this.abbreviation}) : super(key: key);

  @override
  _CryptoTileState createState() => _CryptoTileState();
}

class _CryptoTileState extends State<CryptoTile> {
  var amount = 0;
  double amount_available = 0.00;
  @override
  Widget build(BuildContext context) {
    return Container( height: 100, color: Colors.white,
        child: Row(
          children: [
            SizedBox(width: 20,),
            SizedBox( height: 40, width: 40,
              child: Image(fit: BoxFit.cover,image: AssetImage('assets/${widget.icon}'),),),
            SizedBox(width: 30,),
            Column(
              children: [
                SizedBox(height: 20,),
                Text('${widget.crypto_currency}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),),
                SizedBox(height: 12,),
                Text('${amount_available} ${widget.abbreviation}', style: TextStyle(color: Color.fromRGBO(72, 74, 73,1,), fontSize: 20) ,)
              ],
            ),
            Spacer(flex: 1,),
            Text('NGN ${amount}', style: TextStyle(fontSize: 23),),
            SizedBox(width: 20,)
          ],
        ));
  }
}

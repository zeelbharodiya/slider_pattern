import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class Spage extends StatefulWidget {
  const Spage({Key? key}) : super(key: key);

  @override
  State<Spage> createState() => _SpageState();
}

class _SpageState extends State<Spage> {

  var Slidervalue = 1;


  int i = 0;
  String  k ="";

  @override
  Widget build(BuildContext context) {
    @override
    void initState() {

      super.initState();
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Pattern",
            style: TextStyle(fontSize: 23, color: Colors.orange),
          ),
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(height: 100,),
            Slider(
              min: 0,
                max: 15,
                value: Slidervalue.toDouble(),
                onChanged: (value) {
                  setState(() {
                    Slidervalue = value.toInt();
                    k ="";
                    for(int i = 0;i<=Slidervalue;i++)
                    {
                      for(int j =1;j<=i;j++)
                      {
                        k = k + j.toString() + "  ";
                      }
                      k = k + "\n";
                    }
                  });
            }),
            Text(
              "Pattern < $Slidervalue",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(height: 70,),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: (Slidervalue >= 1) ? Border.all(color: Colors.black , width: 5) : null,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text("$k",style: TextStyle(
                      fontSize: 18,
                    ),),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

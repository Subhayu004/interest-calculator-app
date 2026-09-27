import 'package:flutter/material.dart';

class TipApp extends StatefulWidget{
  const TipApp({super.key});
  @override
  State<TipApp> createState() => _AppDesign();
}

class _AppDesign  extends State<TipApp>{

  TextEditingController amount = TextEditingController();
  TextEditingController percent = TextEditingController();
  double result = 0;

  void calculate(){
    setState(() {
      double bill = double.parse(amount.text);
      double per = double.parse(percent.text);
      double tip =  bill * per/100;
      result = bill + tip;
    });
  }

  Widget input(String msg, TextEditingController controller){
   return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: 50,
        width: 500,
        child: TextField(
          keyboardType: TextInputType.numberWithOptions(decimal: true),
          controller: controller,
          decoration: InputDecoration(
            filled: true,
            fillColor: Color.fromRGBO(253, 255, 255, 1.0),
              focusedBorder : OutlineInputBorder(),
            labelStyle : TextStyle(color: Color.fromRGBO(19, 2, 43, 1.0)),
            labelText: msg,
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      //backgroundColor: Color.fromRGBO(153, 102, 244, 1.0),
      appBar: AppBar(
        title: const Text("Tip Calculator",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // For the Text Field
            input("Enter Your Amount Here",amount),
            // For Spacing
            SizedBox(height: 30),
            input("Enter Your Tip Percent Here",percent),

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor : Color.fromRGBO(221, 205, 244, 1.0)
                ),
                onPressed: calculate, child: Text("Calculate",
            style: TextStyle(
              color: Colors.black
            ),
            )),

            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Text("Final Bill : $result",
              style: TextStyle(
                fontSize: 29,
                fontWeight: FontWeight.bold)
            )
            )
          ],
        ),
      ),
    );
  }
}
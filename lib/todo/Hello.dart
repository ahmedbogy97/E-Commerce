import 'package:flutter/material.dart';
class Hello extends StatelessWidget{
  const Hello({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Expanded(child: child)
            Container(
              color: Colors.blue,
              alignment: Alignment.center,
                padding: EdgeInsets.only(top: 20),
                child: Text("Hello")),
            Container(
              color: Colors.red,
              alignment: Alignment.center,
              child: Text("What to do"),

            ),
            TextButton(
              child: const Text(
                'Button',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => const SignUp()));
              },
            )

          ],

        ),
      ),
    );
  }
}
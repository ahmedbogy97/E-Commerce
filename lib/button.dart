import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String buttonText;

  final GestureTapCallback? onTap;

  const CommonButton({Key? key, required this.buttonText, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: InkWell(
        // radius:10 ,

        onTap: onTap,
        child: Container(
          height: 50,
          width: double.infinity,

          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              buttonText,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

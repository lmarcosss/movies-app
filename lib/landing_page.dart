import 'package:flutter/material.dart';
import 'package:movies/components/primary_button.dart';
import 'package:movies/components/secondary_button.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Material(
        child: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Positioned.fill(
          child: Image.asset(
            "assets/images/the_last_jedi.jpeg",
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: size.height * .33,
          width: size.width,
          padding: EdgeInsets.symmetric(vertical: 29, horizontal: 19),
          decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, .99),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              )),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Watch movies anytime anywhere",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )),
              const Text(
                  "Explore a vast collection of blockbuster movies, timeless classics, and the latest releases.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  )),
              PrimaryButton(onPressed: () {}, text: "Login"),
              SecondaryButton(onPressed: () {}, text: "Sign Up")
            ],
          ),
        ),
      ],
    ));
  }
}

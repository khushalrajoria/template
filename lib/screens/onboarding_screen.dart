import 'package:flutter/material.dart';
import 'package:softair/screens/profile_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Center(
              child: Image.asset("assets/images/onboarding.png"),
            ),
            Positioned(
              bottom: 70,
              left: 69,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                decoration: BoxDecoration(color:const Color.fromARGB(246, 168, 154, 246),
                borderRadius: BorderRadius.circular(16),
                                ),
                                child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: RichText(text: const TextSpan(children: [
                  TextSpan(text: "Welcome\n", style: TextStyle(color: Color.fromRGBO(88, 62, 242, 100), fontSize:
                  24, fontWeight: FontWeight.bold)),
                  TextSpan(text: "What aspect of exploration\ninterests you the most?", style: TextStyle(color: Colors.black, fontSize:
                  18,)),
                ])),
                                ),),
              ),
            ),
            Positioned(
              bottom: 60,
              left: 180,
              child: InkWell(
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));} ,
                child: Container(
                  width: 70,
                  decoration: BoxDecoration(
                color: const Color.fromARGB(255, 89, 62, 242),
                  borderRadius: BorderRadius.circular(18)
                  ),
                  height: 30,
                child: const Icon(Icons.arrow_right_alt_sharp,color: Colors.white,size: 32,),
             
                            ),
              ))
          ],
        ),
      ),
    );
  }
}

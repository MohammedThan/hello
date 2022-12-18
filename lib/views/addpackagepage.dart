import 'package:flutter/material.dart';
import 'package:hello/backend/DataBase.dart';
import 'package:hello/widgets/button.dart';
import 'package:hello/widgets/formfield.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';

import '../widgets/backbutton.dart';

class addpackagepage extends StatelessWidget {
  const addpackagepage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController trackNumController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController locationController = TextEditingController();
    return Scaffold(
      body: Container(
        color: HexColor('F1F6F5'),
        child: Stack(
          children: [
            const Positioned(
              top: 40,
              left: 15,
              child: backbutton(),
            ),
            Positioned(
              top: 40,
              right: 20,
              child:
                  Image.asset('assets/png/logo-no-background.png', scale: 8.5),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset('assets/register.json', height: 300),
                  formField(
                    textcolor: HexColor('472183'),
                    borderColor: HexColor('472183'),
                    borderWidth: 2,
                    icon: Icon(
                      Icons.person_outline,
                      color: HexColor('472183'),
                    ),
                    hint: 'Full name',
                    keyboardType: TextInputType.name,
                    width: 350,
                    controller: nameController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  formField(
                    controller: emailController,
                    borderColor: HexColor('472183'),
                    borderWidth: 2,
                    icon: Icon(Icons.email_outlined, color: HexColor('472183')),
                    hint: 'Email',
                    textcolor: HexColor('472183'),
                    keyboardType: TextInputType.emailAddress,
                    width: 350,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  formField(
                    controller: trackNumController,
                    textcolor: HexColor('472183'),
                    borderColor: HexColor('472183'),
                    borderWidth: 2,
                    icon: Icon(
                      Icons.location_searching_rounded,
                      color: HexColor('472183'),
                    ),
                    hint: 'Track Number',
                    keyboardType: TextInputType.number,
                    width: 350,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  formField(
                    controller: locationController,
                    textcolor: HexColor('472183'),
                    borderColor: HexColor('472183'),
                    borderWidth: 2,
                    icon: Icon(
                      Icons.location_city_rounded,
                      color: HexColor('472183'),
                    ),
                    hint: 'Location',
                    keyboardType: TextInputType.phone,
                    width: 350,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Button(
                    text: 'Add Package',
                    fontSize: 20,
                    width: 250,
                    height: 50,
                    onPressed: () {
                      // DataBase().signUp(
                      //     emailController.text.trim(),
                      //     trackNumController.text.trim(),
                      //     nameController.text.trim(),
                      //     locationController.text.trim());
                      // Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.add_box_outlined,
                      color: HexColor('F1F6F5'),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:finalskincancerdetector/Screens/Nail%20fungus.dart';
import 'package:finalskincancerdetector/Screens/Rosacea.dart';
import 'package:finalskincancerdetector/Screens/login%20and%20homepage.dart';
import 'package:finalskincancerdetector/Screens/melanoma.dart';
import 'package:flutter/material.dart';
import 'package:finalskincancerdetector/Screens/imgpick.dart';
import 'package:finalskincancerdetector/Screens/appointments.dart';
import 'package:finalskincancerdetector/Screens/Offline.dart';
import 'package:finalskincancerdetector/Screens/Online_email.dart';
import 'package:finalskincancerdetector/Screens/modeofcontact.dart';
import 'package:finalskincancerdetector/Screens/Online_whatsapp.dart';
import 'package:finalskincancerdetector/Screens/database.dart';
import 'Screens/Acne.dart';
import 'Screens/Actinic Keratosis.dart';
import 'Screens/Atopicdermatitis.dart';
import 'Screens/Basal Cell Carcinoma.dart';
import 'Screens/Carousel.dart';
import 'Screens/Dermatofibroma.dart';
import 'Screens/Impetigo.dart';
import 'Screens/Mole.dart';
import 'Screens/Moreinfo.dart';
import 'Screens/Seborrheic keratosis.dart';
import 'Screens/Vascular Lesions.dart';
void main() {
    runApp(
      MaterialApp(
          initialRoute: '/carousel',
          routes: {
            '/carousel':(context) => CarouselWithIndicatorDemo(),
            '/login_and_home': (context) => login_and_home(),
            '/imagepicker':(context) => pick_image(),
            '/appointments':(context) => setappontment(),
            '/offline':(context) => OfflineAppointment(),
            '/online_email':(context) => onlineAppointments(),
            '/modeofcontact':(context) => modeofcontact(),
            '/online_whatsapp':(context) => onlineWhatsapp(),
            '/realtimedatabase':(context) => realtimeDatabase(),
            '/moreinfo' : (context) => moreinfo(),
            '/melanomainfo':(context) => melanoma_info(),
            '/basalcellcarcinoma':(context) => basalcellcarcinoma(),
            '/ActinicKeratosis':(context)=> ActinicKeratosis(),
            '/SeborrheicKeratosis':(context)=>SeborrheicKeratosis(),
            '/Dermatofibroma':(context) => Dermatofibroma(),
            '/mole':(context) => mole(),
            '/VascularLesions':(context) => VascularLesions(),
            '/acne':(context) => Acne(),
            '/rosacea':(context) => Rosacea(),
            '/Impetigo':(context) => Impetigo(),
            '/Atopicdermatitis':(context) => Atopicdermatitis(),
            '/nailfungus':(context) => NailFungus()
          }
      ),
    );
}

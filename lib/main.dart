import 'package:burc_app/burc_detay.dart';
import 'package:burc_app/burc_liste.dart';
import 'package:flutter/material.dart';


void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch :Colors.red),

    title: "Burc Uygulaması",
    initialRoute: "/burcListesi",

    routes:{

      "/": (context) => BurcListesi(),
      "/burcListesi": (context) => BurcListesi(),

    },

    onGenerateRoute: (RouteSettings settings){

      List<String> pathElemanlari = settings.name.split("/");
      if(pathElemanlari[1] == "burcDetay"){

        return MaterialPageRoute(builder: (context)=>BurcDetay(int.parse(pathElemanlari[2])));

      }
      return null;
    },


  )
  );



}
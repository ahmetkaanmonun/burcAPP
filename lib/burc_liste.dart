

import 'dart:ui';

import 'package:burc_app/burc_detay.dart';
import 'package:burc_app/utils/strings.dart';
import 'package:flutter/material.dart';

import 'models/burc.dart';

class BurcListesi extends StatelessWidget {

  static List<Burc> tumBurclar;
  @override
  Widget build(BuildContext context) {
   tumBurclar = veriKaynaginiHazirla();
    return Scaffold(
      appBar: AppBar(title: Text("Burçlar Listesi",style: TextStyle(fontSize: 21),),),
      body:ListView.builder(

          itemCount:tumBurclar.length,
          itemBuilder: (context,index) =>
              Card(
                  color: Colors.teal.shade200,
                child: ListTile(

                    title: Text(tumBurclar[index].burcAdi,style: TextStyle(fontSize: 20),),
                    leading: Image.asset("images/" + tumBurclar[index].burcKucukResim,height: 64,width: 64,),
                    subtitle: Text(tumBurclar[index].burcTarihi,style: TextStyle(fontSize: 16),),
                    trailing: Icon(Icons.arrow_forward,color: Colors.orange.shade500,),

                  onTap: (){

                    Navigator.pushNamed(context, "/burcDetay/$index");

                  },

                  ) ,





              ),
      ) ,
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    
    List<Burc> burclar = [];
    
    for(int i = 0;i<12;i++ ){


      String kucukResim = Strings.BURC_ADLARI[i].toLowerCase()+"${i+1}.png";
      String buyukResim = Strings.BURC_ADLARI[i].toLowerCase()+"_buyuk" + "${i+1}.png";

      Burc eklenecekBurc = Burc(Strings.BURC_ADLARI[i], Strings.BURC_TARIHLERI[i], Strings.BURC_GENEL_OZELLIKLERI[i], kucukResim, buyukResim);
      burclar.add(eklenecekBurc);
    }
    return burclar;
  }

  
}

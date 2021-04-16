
import 'package:burc_app/burc_liste.dart';

import 'package:flutter/material.dart';

import 'models/burc.dart';



class BurcDetay extends StatelessWidget {
  int gelenIndex;
  Burc secilenBurc;

  BurcDetay(this.gelenIndex);

  @override
  Widget build(BuildContext context) {
    secilenBurc = BurcListesi.tumBurclar[gelenIndex];

    return Scaffold(
      body: CustomScrollView(

        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            primary: true,
            backgroundColor: Colors.teal.shade200,
            flexibleSpace: FlexibleSpaceBar(
              background : Image.asset("images/" + secilenBurc.burcBuyukResim,fit: BoxFit.cover,),
              centerTitle: true,
              title: Text(
                secilenBurc.burcAdi + " Burcu Ve Özellikleri ",
                style: TextStyle(fontSize: 20),

              ),


            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.all(Radius.circular(10)),


              ),
              child: SingleChildScrollView(
                child: Text(secilenBurc.burcDetayi,style: TextStyle(fontSize: 18),),


              ),
            ),
          ),
        ],
      ),
    );
  }
}

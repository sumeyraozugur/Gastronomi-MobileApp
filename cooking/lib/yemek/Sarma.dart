import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sarma extends StatelessWidget {

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        brightness: Brightness.light,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTextTitleVariation1("Sarma"),
                  //buildTextSubTitleVariation1(""),
                ],
              ),
            ),
              Positioned(
                    right:-90,
                    child: Hero(
                      tag: "assets/images/sarma.jpg",
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/sarma.jpg"),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                  ),
            




            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTextTitleVariation2('Malzemeler', false),
                 
                 
                  buildTextSubTitleVariation1("500 gram tokat yaprağı (salamura)"),
                  buildTextSubTitleVariation1("1 adet limon"),
                  buildTextSubTitleVariation1("Zeytinyağı"),
                  buildTextSubTitleVariation1("İç harcı;"),
                  buildTextSubTitleVariation1("2 orta boy kuru soğan"),
                  buildTextSubTitleVariation1("1,5 su bardağı pirinç"),
                  buildTextSubTitleVariation1("Maydanoz"),
                  buildTextSubTitleVariation1("1 yemek kaşığı salça"),
                  buildTextSubTitleVariation1("Karabiber"),
                  buildTextSubTitleVariation1("Kırmızı pul biber"),
                  buildTextSubTitleVariation1("Kimyon"),
                  buildTextSubTitleVariation1("Nane"),
                  buildTextSubTitleVariation1("Tuz"),
                  buildTextSubTitleVariation1("2 yemek kaşığı sıvı yağ"),

                  SizedBox(
                    height: 16,
                  ),

                  buildTextTitleVariation2('Hazırlanışı', false),

                  //buildTextSubTitleVariation1("STEP 1"),
                  buildTextSubTitleVariation1(
                      """
Öncelikle salamura yapraklar 2-3 dakika sıcak suda bekletilir, yıkanır ve süzgece alınır.
Geniş bir kabın içerisine soğanlar rendelenir üzerine zeytinyağı dökülür.
Pirinç yıkanarak  kabın içerisine eklenir.
Baharatlar, salça ve tuzu da ilave edildikten sonra ince kıyılmış maydanozu da eklenerek karıştırılır.(çiğden bir iç harç olacak)
Yaprağın geniş kısmına iç harçtan konulur ve rulo gibi iki yanlardan kapatarak sarılır. Bu işleme yaprak bitene kadar devam edilir.
Sardığımız yaprakların üzerine zeytinyağı ve limon dilimleri ekleyip yaklaşık 5-6 su bardağı kadar da sıcak su ilave edilerek kısık ateşte pişirilir.


                      """),

                  //buildTextSubTitleVariation1("STEP 2"),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

buildTextTitleVariation2(String text, bool opacity) {
  return Padding(
    padding: EdgeInsets.only(bottom: 16),
    child: Text(
      text,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: opacity ? Colors.grey[400] : Colors.black,
      ),
    ),
  );
}

buildTextSubTitleVariation1(String text) {
  return Padding(
    padding: EdgeInsets.only(bottom: 8),
    child: Text(
      text,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.grey[400],
      ),
    ),
  );
}

buildTextTitleVariation1(String text) {
  return Padding(
    padding: EdgeInsets.only(bottom: 8),
    child: Text(
      text,
      style: GoogleFonts.breeSerif(
        fontSize: 36,
        fontWeight: FontWeight.w900,
        color: Colors.black,
      ),
    ),
  );
}

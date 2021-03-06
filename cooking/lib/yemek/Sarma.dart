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
                 
                 
                  buildTextSubTitleVariation1("500 gram tokat yapra???? (salamura)"),
                  buildTextSubTitleVariation1("1 adet limon"),
                  buildTextSubTitleVariation1("Zeytinya????"),
                  buildTextSubTitleVariation1("???? harc??;"),
                  buildTextSubTitleVariation1("2 orta boy kuru so??an"),
                  buildTextSubTitleVariation1("1,5 su barda???? pirin??"),
                  buildTextSubTitleVariation1("Maydanoz"),
                  buildTextSubTitleVariation1("1 yemek ka???????? sal??a"),
                  buildTextSubTitleVariation1("Karabiber"),
                  buildTextSubTitleVariation1("K??rm??z?? pul biber"),
                  buildTextSubTitleVariation1("Kimyon"),
                  buildTextSubTitleVariation1("Nane"),
                  buildTextSubTitleVariation1("Tuz"),
                  buildTextSubTitleVariation1("2 yemek ka???????? s??v?? ya??"),

                  SizedBox(
                    height: 16,
                  ),

                  buildTextTitleVariation2('Haz??rlan??????', false),

                  //buildTextSubTitleVariation1("STEP 1"),
                  buildTextSubTitleVariation1(
                      """
??ncelikle salamura yapraklar 2-3 dakika s??cak suda bekletilir, y??kan??r ve s??zgece al??n??r.
Geni?? bir kab??n i??erisine so??anlar rendelenir ??zerine zeytinya???? d??k??l??r.
Pirin?? y??kanarak  kab??n i??erisine eklenir.
Baharatlar, sal??a ve tuzu da ilave edildikten sonra ince k??y??lm???? maydanozu da eklenerek kar????t??r??l??r.(??i??den bir i?? har?? olacak)
Yapra????n geni?? k??sm??na i?? har??tan konulur ve rulo gibi iki yanlardan kapatarak sar??l??r. Bu i??leme yaprak bitene kadar devam edilir.
Sard??????m??z yapraklar??n ??zerine zeytinya???? ve limon dilimleri ekleyip yakla????k 5-6 su barda???? kadar da s??cak su ilave edilerek k??s??k ate??te pi??irilir.


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

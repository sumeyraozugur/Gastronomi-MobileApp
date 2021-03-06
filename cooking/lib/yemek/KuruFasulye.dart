
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KuruFasulye extends StatelessWidget {


 
  @override
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
                  buildTextTitleVariation1("Kuru Fasulye"),
                  //buildTextSubTitleVariation1(""),
                ],
              ),

            
            ),
              Positioned(
                    right:-90,
                    child: Hero(
                      tag: "assets/images/kurufasulye.png",
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/kurufasulye.png"),
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
                 
                  buildTextSubTitleVariation1("""
4 yemek ka???????? s??v?? ya??",
2 yemek ka???????? tereya????,
1 adetorta boy kuru so??an,
1 yemek ka???????? domates sal??as??,
500 gram kuru fasulye"),
3 su barda???? su,
1 ??ay ka???????? tuz,                
1 ??ay ka????????toz ??eker,
1/2 ??ay ka????????tatl?? toz k??rm??z?? biber"""),

                  SizedBox(
                    height: 16,
                  ),

                   

                  

                      

                  

                  buildTextTitleVariation2('Haz??rlan??????', false),

                  //buildTextSubTitleVariation1("STEP 1"),
                  buildTextSubTitleVariation1(
                      """
4 yemek ka???????? s??v?? ya?? ve 2 yemek ka???????? tereya????n?? derin bir tencereye aktar??n ve k??zd??r??n.1 adet yemeklik do??ranm???? kuru so??an?? da ekleyin ve pembele??inceye kadar kavurun.
So??anlar kavrulduktan sonra 1 yemek ka???????? domates sal??as??n?? ekleyin ve kokusu ????kana kadar kavurun.
Son olarak bir gece ??nceden suda bekletti??iniz kuru fasulyeleri de tencereye ekleyin.
Sonra 1-2 dakika kar????t??r??n ve 3 su barda???? su, 1 ??ay ka???????? k??rm??z?? toz biber ve 1 ??ay ka???????? tuzu ekleyin, kapa????n?? kapat??p fasulyeler yumu??ayana kadar pi??irin.
Tane tane pi??mi?? pirin?? pilav?? ile servis edin, afiyet olsun!
Afiyet olsun

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

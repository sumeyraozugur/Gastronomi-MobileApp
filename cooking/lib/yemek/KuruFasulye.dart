
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
4 yemek kaşığı sıvı yağ",
2 yemek kaşığı tereyağı,
1 adetorta boy kuru soğan,
1 yemek kaşığı domates salçası,
500 gram kuru fasulye"),
3 su bardağı su,
1 çay kaşığı tuz,                
1 çay kaşığıtoz şeker,
1/2 çay kaşığıtatlı toz kırmızı biber"""),

                  SizedBox(
                    height: 16,
                  ),

                   

                  

                      

                  

                  buildTextTitleVariation2('Hazırlanışı', false),

                  //buildTextSubTitleVariation1("STEP 1"),
                  buildTextSubTitleVariation1(
                      """
4 yemek kaşığı sıvı yağ ve 2 yemek kaşığı tereyağını derin bir tencereye aktarın ve kızdırın.1 adet yemeklik doğranmış kuru soğanı da ekleyin ve pembeleşinceye kadar kavurun.
Soğanlar kavrulduktan sonra 1 yemek kaşığı domates salçasını ekleyin ve kokusu çıkana kadar kavurun.
Son olarak bir gece önceden suda beklettiğiniz kuru fasulyeleri de tencereye ekleyin.
Sonra 1-2 dakika karıştırın ve 3 su bardağı su, 1 çay kaşığı kırmızı toz biber ve 1 çay kaşığı tuzu ekleyin, kapağını kapatıp fasulyeler yumuşayana kadar pişirin.
Tane tane pişmiş pirinç pilavı ile servis edin, afiyet olsun!
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

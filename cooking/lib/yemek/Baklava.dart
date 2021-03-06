import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Baklava extends StatelessWidget {

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
                  buildTextTitleVariation1("Baklava"),
                  //buildTextSubTitleVariation1(""),
                ],
              ),
            ),
             Positioned(
                    right:-90,
                    child: Hero(
                      tag: "assets/images/baklava.jpg",
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/baklava.jpg"),
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
                 
                  buildTextSubTitleVariation1("3 yumurta"),
                  buildTextSubTitleVariation1("1 su barda???? s??t"),
                  buildTextSubTitleVariation1("1 su barda???? s??v?? ya??"),
                  buildTextSubTitleVariation1("1 adet kabartma tozu"),
                  buildTextSubTitleVariation1("1 yemek ka???????? sirke"),
                  buildTextSubTitleVariation1("Yar??m ??ay ka???????? tuz"),
                  buildTextSubTitleVariation1("6 su barda???? un"),
                  buildTextSubTitleVariation1("K??r??lm???? ceviz ya da f??nd??k"),
                  buildTextSubTitleVariation1("A??MAK ??????N;"),
                  buildTextSubTitleVariation1("M??s??r ni??astas??"),
                  buildTextSubTitleVariation1("??ERBET?? ??????N;"),
                  buildTextSubTitleVariation1("4 bardak ??eker"),
                  buildTextSubTitleVariation1("5 bardak su"),
                  buildTextSubTitleVariation1("Bir ka?? damla limon suyu"),
                  buildTextSubTitleVariation1("??ZER?? ??????N;"),
                  buildTextSubTitleVariation1("300 g tereya???? ya da margarin"),

                  SizedBox(
                    height: 16,
                  ),

                  buildTextTitleVariation2('Haz??rlan??????', false),

                  //buildTextSubTitleVariation1("STEP 1"),
                  buildTextSubTitleVariation1(
                      """
Ev baklavas?? haz??rlamak i??in ??ncelikle yumurtay??, s??t??, s??v?? ya????, sirkeyi, kabartma tozunu ve tuzu yo??urma kab??na bo??alt??n ve alabildi??ince un ekleyerek ortalama yumu??al??kta bir hamur elde edinceye kadar yo??urunuz.
Haz??rlad??????n??z hamuru 30 e??it par??aya b??l??n??z.
Bu par??alar?? tek tek tabak b??y??kl??????nde a??arak aralar??na ni??asta serpip 10 ar 10 ar ??st ??ste koyun.
10???arl?? olarak gruplad??????m??z bu ???? par??adan par??alardan her birini merdane yard??m?? ile tepsi b??y??kl??????ne getirin.
Merdane ile a??t??????n??z hamurlar??n aralar??na ceviz ya da f??nd??k serperek ??st ??ste yerle??tirin.
Diledi??iniz ??ekilde kesin ve ??zerine her yerine e??it ??ekilde gelmesine dikkat ederek eritilmi?? ya????n yar??s??n?? d??k??n.
??nceden ??s??t??lm???? 180??C f??r??na s??r??n hafif rengi de??i??ti??inde f??r??ndan alarak kalan ya???? gezdirin ve tekrar f??r??na s??r??n alt?? ??st?? k??zarana kadar pi??irin???
Ev baklavas??n??n kesimi i??in tarifin devam??na yard??mc?? olabilecek foto??raflar ekledim.
Ev Baklavas?? ??erbetinin Yap??l??????;
4 bardak ??eker ve 5 bardak suyu tencereye koyup 15 dk kaynatt??ktan sonra ??erbetin i??erisine bir ka?? damla limon damlatarak 1-2 dk daha kaynat??n.
Bu tarifte kullan??lan tepsi 42 cm ??ap??ndad??r. Bu ??l????ye yak??n bir tepsi tercih edebilirsiniz.
So??uk baklavan??n ??zerine s??cak ??erbeti d??k??n.

Afiyet olsun.

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

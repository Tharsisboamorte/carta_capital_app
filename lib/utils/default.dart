import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultConfig {
  //Fonts
  static String? defaultFont = GoogleFonts
      .workSans()
      .fontFamily;
  static String? newsReader = GoogleFonts
      .newsreader()
      .fontFamily;
  static String? buttonFont = GoogleFonts
      .amiko()
      .fontFamily;

  //Colors
  static Color defaultThemeColor = const Color(0xFFCD1719);
  static Color markedBlue = const Color(0xFF337AC1);
  static Color purpleButton = const Color(0xFF961594);
  static Color darkerWhite = const Color(0xFFF3F3F3);
  static Color borderGrey = const Color(0xFFD2D2D2);
  static Color dimnGrey = const Color(0xFF929292);
  static Color defaultGrey = const Color(0xFF6E6F71);
  static Color aboutText = const Color(0xFF333333);

  //Padding
  static EdgeInsets defaultFieldPadding =
  const EdgeInsets.only(left: 20.0, right: 20.0, top: 26.0, bottom: 8);
  static EdgeInsets defaultCheckPadding =
  const EdgeInsets.only(left: 20.0, right: 20.0, top: 26.0, bottom: 8);

  //TextStyle
  TextStyle defaultTextStyle(bool isBold, bool isRed, bool isUnderline,
      String? font, double size) {
    return TextStyle(
      decoration: isUnderline ? TextDecoration.underline : null,
      fontFamily: font,
      fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      color: isRed ? defaultThemeColor : Colors.black,
      fontSize: size,
    );
  }

  //Button
  ElevatedButton sharpElevatedButton(String title, String page,
      BuildContext context, Color color) {
    return ElevatedButton(
        style: ButtonStyle(
          shape: const MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
          backgroundColor: MaterialStatePropertyAll(color),
        ),
        onPressed: () {
          Navigator.of(context).pushReplacementNamed(page);
        },
        child: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 14,
              fontFamily: DefaultConfig.defaultFont),
        ));
  }

  //TEXTS
  static String? defaultTextCard =
  """Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

Scelerisque eleifend donec pretium lputate sapien nec sagittis aliquam. Pharetra et ultrices neque ornare aenean esmod. Eget nunc scelerisque viverra mauris in. Feugiat nibh sed pulvinar proin gravida hendrerit lectus a. Vitae turpis massa sed elementum tempus. """;

  RichText firstParagraph() {
    return RichText(
        softWrap: true,
        overflow: TextOverflow.visible,
        maxLines: 100,
        strutStyle: StrutStyle(fontFamily: newsReader, fontSize: 19),
        text: TextSpan(
            style: TextStyle(
                color: aboutText, fontFamily: newsReader, fontSize: 19),
            text:
            """A condena????o de Tiradentes, que recentemente celebramos com direito a feriado, ?? epis??dio hist??rico amplamente simb??lico. Exibe a crueldade lusitana a colocar a nossa coloniza????o entre as mais ferozes j?? acontecidas no planeta. Por outro lado, o alferes, al??m de ter o dom de extrair dentes e com esmero o pusesse em pr??tica, era altamente representativo de uma Minas Gerais que, no s??culo XVIII, dava li????es de bem viver, a exibir a contemporaneidade com o mundo europeu, de sorte a prometer um Brasil infinitamente melhor do que o atual.
                """,
            children: const [
              TextSpan(
                  text: """
                      
Em rela????o ?? Minas de 1700, o Brasil de hoje ?? espantosamente atrasado.""",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  )),
              TextSpan(
                  text:
                  """ Nem falo da eleg??ncia da arquitetura de Ouro Preto, Congonhas do Campo,Mariana e Tiradentes, entre outras cidades da ??poca, tampouco me refiro ao ??Aleijadinho, milagroso escultor em pedra-sab??o inspirado por gravuras de obras de ??Michelangelo. Aludo, isto sim, ao avan??o pol??tico daquela importante regi??o brasileira, que por tudo estava t??o ?? frente do Brasil de ent??o, at?? m??sica erudita de qualidade por l?? se ouvia.

N??o evoco poetas sonhadores, mas, como exemplo definitivo, a presen??a da fam??lia Andrada, encabe??ada por Jos?? Bonif??cio de Andrada e Silva, dito o Patriarca da Independ??ncia. Ele, entre outros privil??gios, tinha o de ter viajado para a Europa, ainda no s??culo XVIII, oficialmente para estudar mineralogia, conforme as inten????es de Lisboa, mas tamb??m, e sobretudo, para entender os efeitos da Revolu????o Francesa em todo o chamado Velho Continente. Os ??Andrada, genu??no fruto mineiro, embora o Patriarca tivesse nascido em Santos, seriam bem-vindos at?? hoje, cuidariam com compet??ncia de um pa??s por ora governado por um demente.""")
            ]));
  }

  RichText secondParagraph() {
    return RichText(
        softWrap: true,
        overflow: TextOverflow.visible,
        maxLines: 100,
        strutStyle: StrutStyle(fontFamily: newsReader, fontSize: 19),
        text: TextSpan(
            style: TextStyle(
                color: aboutText, fontFamily: newsReader, fontSize: 19),
            text:
            "Se o Brasil atual se parecesse com a Minas do s??culo XVIII, estar??amos a salvo da desgra??a que se abateu sobre n??s e gerou o pa??s mais desigual do mundo, sempre e implacavelmente distante de uma verdadeira democracia. Como bem sabemos,",
            children: const [
              TextSpan(
                  text: " a casa-grande e a senzala continuam de p??.",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(
                  text:
                  """ Enquanto aquela ?? racista e ignorante como em um passado intocado e inamov??vel, a senzala ainda n??o consegue fazer valer os seus direitos, incapaz de perceber o tamanho da sua infelicidade.

Est?? claro que voltar ?? Minas do s??culo XVIII ?? imposs??vel, como se sabe o tempo galopa. """),
            ]));
  }

  Column quoteText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "???A prioridade do Brasil, hoje, ?? se livrar do presidente habilitado a uma temporada definitiva no hosp??cio???",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontFamily: newsReader,
              fontSize: 19),
          overflow: TextOverflow.visible,
          softWrap: true,
          maxLines: 4,
        ),
        RichText(
          text: TextSpan(
              text: "-IPSUM,",
              children: [
                TextSpan(
                    text: " LOREM.",
                    style: TextStyle(
                        color: dimnGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        fontFamily: defaultFont))
              ],
              style: TextStyle(
                  color: dimnGrey, fontFamily: defaultFont, fontSize: 10)),
        )
      ],
    );
  }

  RichText thirdParagraph() {
    return RichText(
      text: TextSpan(
        style:
        TextStyle(color: aboutText, fontSize: 19, fontFamily: newsReader),
        text:
        "N??o percamos demais tempo para sair da enrascada e novamente surge como ant??doto imediato a figura de",
        children: [
          TextSpan(
              text: "Lula",
              style: TextStyle(
                  color: markedBlue, fontFamily: newsReader, fontSize: 19)),
          const TextSpan(
              text:
              ", cuja campanha ?? Presid??ncia da Rep??blica j?? se iniciou (leia a "),
          TextSpan(
              text: "reportagem de capa",
              style: TextStyle(
                  color: markedBlue,
                  fontFamily: newsReader,
                  fontSize: 19,
                  fontStyle: FontStyle.italic)),
          const TextSpan(text: "At?? engolir "),
          TextSpan(
              text: "Bolsonaro",
              style: TextStyle(
                  color: markedBlue, fontFamily: newsReader, fontSize: 19)),
          const TextSpan(
              text:
              """ , o Brasil passou por uma sequ??ncia de golpes, cujos efeitos at?? hoje perduram. Foi derrubada uma presidenta legitimamente eleita e substitu??da ?? for??a por um usurpador corrupto.

A irregularidade da situa????o est?? escancarada, embora muitos finjam uma oportuna cegueira. Por incr??vel que pare??a, a pol??tica continua a seguir o calend??rio golpista, da?? elei????es marcadas para outubro pr??ximo, a nos obrigar a acreditar em um jogo de faz de conta, para inventar uma normalidade democr??tica inexistente. N??o h?? como escapar da prioridade j?? evocada, e a aceit??-la, a despeito da doen??a cr??nica dos pr??prios poderes da Rep??blica envolvidos nesta pantomima e sempre prontos a agir contra as raz??es que os puseram onde est??o.

O PT velho de guerra acaba de lan??ar a candidatura de Lula, cujo objetivo ?? aceitar a prioridade, de sorte a cumpri-la de imediato. H?? de ser este o primeiro passo no sentido de desfazer o malfeito. ???

"""),
          TextSpan(
              text: "PUBLICADO NA EDI????O N?? 1207 DE ",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                fontFamily: newsReader,
              )),
          TextSpan(
              text: "CARTACAPITAL",
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  fontFamily: newsReader,
                  fontStyle: FontStyle.italic)),
          TextSpan(
              text: ", EM 11 DE MAIO DE 2022.",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                fontFamily: newsReader,
              )),
          TextSpan(
              text: """
              
                                
Este texto aparece na edi????o impressa de""",
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  fontFamily: newsReader)),
          TextSpan(
              text: " CartaCapital ",
              style: TextStyle(
                  fontFamily: newsReader,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                  fontStyle: FontStyle.italic)),
          TextSpan(
              text: "sob o t??tulo ???O ant??doto???",
              style: TextStyle(
                  fontFamily: newsReader,
                  fontWeight: FontWeight.bold,
                  fontSize: 19)),
        ],
      ),
      strutStyle: StrutStyle(fontFamily: newsReader, fontSize: 19),
      softWrap: true,
      overflow: TextOverflow.visible,
      maxLines: 100,
    );
  }

  RichText tagText() {
    return RichText(
        textAlign: TextAlign.justify,
        text: TextSpan(
            text: "TAGS: ",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: defaultFont,
                fontSize: 14),
            children: [
              TextSpan(
                  text: "ELEI????ES 2022, JAIR BOLSONARO E LULA.",
                  style: TextStyle(
                      fontFamily: defaultFont, fontSize: 14, color: aboutText))
            ]));
  }

  Text comentary() {
    return Text(
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam. Pharetra et ultrices neque ornare aenean euismod. Eget nunc scelerisque viverra mauris in. Feugiat nibh sed pulvinar proin gravida hendrerit lectus a. Vitae turpis massa sed elementum tempus. ",
      style: TextStyle(
        letterSpacing: 2,
        fontFamily: defaultFont,
        fontSize: 15,
        fontStyle: FontStyle.italic,
        color: const Color(0xFF0B0B0B),
      ),
      softWrap: true,
      overflow: TextOverflow.visible,
      maxLines: 20,
    );
  }

  RawMaterialButton circularIconButton(IconData icon) {
    return RawMaterialButton(
      onPressed: () {},
      shape: const CircleBorder(),
      elevation: 1.0,
      fillColor: Colors.black,
      padding: const EdgeInsets.all(5.0),
      child: Icon(
        icon,
        color: Colors.white,
        size: 20.0,
      ),
    );
  }

    Container circularLButton(String text){
    return Container(
      height: 25.55,
        width: 25.55,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 1,strokeAlign: StrokeAlign.outside),
          borderRadius: BorderRadius.circular(20)
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.black, fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ),
    );
  }

  ElevatedButton blackElevatedButton(BuildContext context, String page, String label, bool isBold){
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushReplacementNamed(page);
      },
      style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll<Color>(
              Colors.black),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
            side: const BorderSide(
                color: Colors.black, width: 2),
          )
          )
      ),
      child: Text(label,
          style: TextStyle(
              color: Colors.white,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              fontFamily: DefaultConfig.buttonFont)),
    );
  }

}

import 'dart:ui';

import 'package:flash/flash.dart';
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
            """A condenação de Tiradentes, que recentemente celebramos com direito a feriado, é episódio histórico amplamente simbólico. Exibe a crueldade lusitana a colocar a nossa colonização entre as mais ferozes já acontecidas no planeta. Por outro lado, o alferes, além de ter o dom de extrair dentes e com esmero o pusesse em prática, era altamente representativo de uma Minas Gerais que, no século XVIII, dava lições de bem viver, a exibir a contemporaneidade com o mundo europeu, de sorte a prometer um Brasil infinitamente melhor do que o atual.
                """,
            children: const [
              TextSpan(
                  text: """
                      
Em relação à Minas de 1700, o Brasil de hoje é espantosamente atrasado.""",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  )),
              TextSpan(
                  text:
                  """ Nem falo da elegância da arquitetura de Ouro Preto, Congonhas do Campo,Mariana e Tiradentes, entre outras cidades da época, tampouco me refiro ao ­Aleijadinho, milagroso escultor em pedra-sabão inspirado por gravuras de obras de ­Michelangelo. Aludo, isto sim, ao avanço político daquela importante região brasileira, que por tudo estava tão à frente do Brasil de então, até música erudita de qualidade por lá se ouvia.

Não evoco poetas sonhadores, mas, como exemplo definitivo, a presença da família Andrada, encabeçada por José Bonifácio de Andrada e Silva, dito o Patriarca da Independência. Ele, entre outros privilégios, tinha o de ter viajado para a Europa, ainda no século XVIII, oficialmente para estudar mineralogia, conforme as intenções de Lisboa, mas também, e sobretudo, para entender os efeitos da Revolução Francesa em todo o chamado Velho Continente. Os ­Andrada, genuíno fruto mineiro, embora o Patriarca tivesse nascido em Santos, seriam bem-vindos até hoje, cuidariam com competência de um país por ora governado por um demente.""")
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
            "Se o Brasil atual se parecesse com a Minas do século XVIII, estaríamos a salvo da desgraça que se abateu sobre nós e gerou o país mais desigual do mundo, sempre e implacavelmente distante de uma verdadeira democracia. Como bem sabemos,",
            children: const [
              TextSpan(
                  text: " a casa-grande e a senzala continuam de pé.",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(
                  text:
                  """ Enquanto aquela é racista e ignorante como em um passado intocado e inamovível, a senzala ainda não consegue fazer valer os seus direitos, incapaz de perceber o tamanho da sua infelicidade.

Está claro que voltar à Minas do século XVIII é impossível, como se sabe o tempo galopa. """),
            ]));
  }

  Column quoteText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "“A prioridade do Brasil, hoje, é se livrar do presidente habilitado a uma temporada definitiva no hospício”",
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
        "Não percamos demais tempo para sair da enrascada e novamente surge como antídoto imediato a figura de",
        children: [
          TextSpan(
              text: "Lula",
              style: TextStyle(
                  color: markedBlue, fontFamily: newsReader, fontSize: 19)),
          const TextSpan(
              text:
              ", cuja campanha à Presidência da República já se iniciou (leia a "),
          TextSpan(
              text: "reportagem de capa",
              style: TextStyle(
                  color: markedBlue,
                  fontFamily: newsReader,
                  fontSize: 19,
                  fontStyle: FontStyle.italic)),
          const TextSpan(text: "Até engolir "),
          TextSpan(
              text: "Bolsonaro",
              style: TextStyle(
                  color: markedBlue, fontFamily: newsReader, fontSize: 19)),
          const TextSpan(
              text:
              """ , o Brasil passou por uma sequência de golpes, cujos efeitos até hoje perduram. Foi derrubada uma presidenta legitimamente eleita e substituída à força por um usurpador corrupto.

A irregularidade da situação está escancarada, embora muitos finjam uma oportuna cegueira. Por incrível que pareça, a política continua a seguir o calendário golpista, daí eleições marcadas para outubro próximo, a nos obrigar a acreditar em um jogo de faz de conta, para inventar uma normalidade democrática inexistente. Não há como escapar da prioridade já evocada, e a aceitá-la, a despeito da doença crônica dos próprios poderes da República envolvidos nesta pantomima e sempre prontos a agir contra as razões que os puseram onde estão.

O PT velho de guerra acaba de lançar a candidatura de Lula, cujo objetivo é aceitar a prioridade, de sorte a cumpri-la de imediato. Há de ser este o primeiro passo no sentido de desfazer o malfeito. •

"""),
          TextSpan(
              text: "PUBLICADO NA EDIÇÃO Nº 1207 DE ",
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
              
                                
Este texto aparece na edição impressa de""",
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
              text: "sob o título “O antídoto”",
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
                  text: "ELEIÇÕES 2022, JAIR BOLSONARO E LULA.",
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

}

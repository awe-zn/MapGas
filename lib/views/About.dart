import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 14),
          child: Column(
            children: [
              RichText(
                text: const  TextSpan(
                  children: [
                    TextSpan(text: 'Veja como funciona o processo de análise da '),
                    TextSpan(
                      text: 'gasolina',
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff9B9B9B)
                  ),
                ),
              ),
              const SizedBox(height: 11,),
              Container(
                padding: const EdgeInsets.only(top: 8, left: 32, right: 32),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const Text('1',
                          style: TextStyle(
                            color: Color(0xffC4C4C4),
                            fontSize: 40
                          ),
                        ),
                        SizedBox(width: 16,),
                        Container(
                          child: Flexible(
                            fit: FlexFit.tight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                SizedBox(height: 7,),
                                Text('Solicita análise',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text('O cliente deve solicitar o teste ao frentista do posto.',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            )
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 36,),
              Container(
                padding: const EdgeInsets.only(top: 8, left: 32, right: 32),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const Text('2',
                          style: TextStyle(
                              color: Color(0xffC4C4C4),
                              fontSize: 40
                          ),
                        ),
                        SizedBox(width: 16,),
                        Container(
                          child: Flexible(
                              fit: FlexFit.tight,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  SizedBox(height: 7,),
                                  Text('O funcionário faz a mistura',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16
                                    ),
                                  ),
                                  SizedBox(height: 8,),
                                  Text('Coloca-se 50ml de gasolina e 50ml de água na mesma proveta, depois sacode-se o tubo a fim de misturar os líquidos.\n'),
                                  Text.rich(
                                    TextSpan(
                                    children: [
                                      TextSpan(text: 'O ', style: TextStyle(color: Colors.black)),
                                      TextSpan(text: 'álcool anidro ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700
                                          )
                                      ),
                                      TextSpan(
                                          text: 'ue a gasolina possui se une aos 50ml de água adicionados, separando-se do combustível. O volume da água irá aumentar por causa disso, mas não deve ultrapassar os  ', style: TextStyle(color: Colors.black)),
                                      TextSpan(text: '64ml ',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700
                                          )
                                      ),
                                      TextSpan(text: ' Se a quantidade de água for maior do que 64 ml, a gasolina pode estar adulterada.',
                                          style: TextStyle(color: Colors.black),
                                      ),
                                    ]
                                  ))
                                ],
                              )
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 36,),
              Container(
                padding: const EdgeInsets.only(top: 8, left: 32, right: 32),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const Text('3',
                          style: TextStyle(
                              color: Color(0xffC4C4C4),
                              fontSize: 40
                          ),
                        ),
                        SizedBox(width: 16,),
                        Container(
                          child: Flexible(
                              fit: FlexFit.tight,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  SizedBox(height: 7,),
                                  Text('Qualidade atestada',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16
                                    ),
                                  ),
                                  SizedBox(height: 8,),
                                  Text.rich(
                                      TextSpan(
                                          children: [
                                            TextSpan(text: 'Com os valores dentro dos padrões estabelecidos pela ANAC (', style: TextStyle(color: Colors.black)),
                                            TextSpan(text: 'até 64ml ',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w700
                                                )
                                            ),
                                            TextSpan(
                                                text: 'da mistura de álcool e água), o posto já pode ganhar o selo do ', style: TextStyle(color: Colors.black)),
                                            TextSpan(text: 'MapGás ',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w700
                                                )
                                            ),
                                          ]
                                      ))
                                ],
                              )
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ),
      ]
    );
  }
}



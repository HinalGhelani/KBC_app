import 'package:flutter/material.dart';

import 'Screens/page_2.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const QuizApp(),
        'page2': (context) => const Page2(),
      },
    ),
  );
}

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<Map<String, dynamic>> questionBank = [
    {
      'id': '1.',
      'que': "Which of the following corresponds to 'ek bataa do'?",
      'A': 'Pura',
      'B': 'Sawa',
      'C': 'Adha',
      'D': 'Pauna',
      'ans': 'C',
    },
    {
      'id': '2.',
      'que': "Which of the following gods is also known as 'Gauri Nandan'?",
      'A': 'Agni',
      'B': 'Indra',
      'C': 'Hanuman',
      'D': 'Ganesha',
      'ans': 'D',
    },
    {
      'id': '3.',
      'que':
      "In the game of ludo the dices or tokens are of how many colours ?",
      'A': 'One',
      'B': 'Two',
      'C': 'Three',
      'D': 'Four',
      'ans': 'D',
    },
    {
      'id': '4.',
      'que':
      "Which of these are names of national parks located in Madhya Pradesh?",
      'A': 'Krishna and Kanhaiya',
      'B': 'Kanha and Madhav',
      'C': 'Ghanshyam and Murari',
      'D': 'Girdhar and Gopal',
      'ans': 'B',
    },
    {
      'id': '5.',
      'que': "Where was the BRICS summit held in 2014?",
      'A': 'Brazil',
      'B': 'India',
      'C': 'Russia',
      'D': 'China',
      'ans': 'A',
    },
    {
      'id': '6.',
      'que':
      "Who wrote the introduction to the English translation of Rabindranath Tagore's Gitanjali?",
      'A': 'P.B. Shelly',
      'B': 'Alfred Tennyson',
      'C': 'W.B. Yeats',
      'D': 'T.S. Elliot',
      'ans': 'C',
    },
    {
      'id': '7.',
      'que':
      "Which of these leaders was a recipient of a gollantry award in 1987 by a state government for saving two girls from drawing?",
      'A': 'Anandiben Patel',
      'B': 'Vasundhara Raje Scindia',
      'C': 'Uma Bharti',
      'D': 'Mamata Banerjee',
      'ans': 'A',
    },
    {
      'id': '8.',
      'que':
      "The wife of which of these sports person was once captain of Indian volleyball team?",
      'A': 'K.D. Jadav',
      'B': 'Dyan Chand',
      'C': 'Prakash Padukone',
      'D': 'Milka Singh',
      'ans': 'D',
    },
    {
      'id': '9.',
      'que':
      "Starting with the earliest, arrange the following events in Narendra Modi's life in chronological order?",
      'A': 'CM of Gujrat',
      'B': 'Took aath as',
      'C': 'Joined BJP',
      'D': 'All of these',
      'ans': 'D',
    },
    {
      'id': '10.',
      'que': "Which of these terms can only be used for women?",
      'A': 'Dirghayu',
      'B': 'Suhagan',
      'C': 'Chiranjeevi',
      'D': 'Sushil',
      'ans': 'B',
    },
  ];
  TextStyle optionStyle = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  BoxDecoration boxDecor = BoxDecoration(
    color: Colors.white.withOpacity(0.4),
    borderRadius: BorderRadius.circular(18),
  );

  int score = 0, Index = 0, price = 0;
  String select = "";
  var icon, img, result,buton;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "KBC",
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff1C061D),
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
      drawer: const Drawer(
        backgroundColor: Colors.white,
        child: Text(
          "KBC Games",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
      body: (Index < questionBank.length)
          ? IndexedStack(
        index: Index,
        children: questionBank
            .map(
              (e) => Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("build/assets/KBC/Kbcbg.png"),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 60,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff978594),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "$score/10",
                          style: const TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(14),
                    margin: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    // alignment: Alignment.center,
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding:
                                const EdgeInsets.only(bottom: 43),
                                child: Text(
                                  "${e['id']}",
                                  style: const TextStyle(
                                      fontSize: 25,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 7,
                              child: Text(
                                "${e['que']}",
                                style: const TextStyle(
                                    fontSize: 21,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        )),
                  ),
                  // const SizedBox(height: 80),
                  InkWell(
                    onTap: () {
                      setState(() {
                        icon = 'A';
                        select = 'A';
                      });
                    },
                    child: Container(
                      width: 350,
                      height: 50,
                      decoration: boxDecor,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(width: 10),
                          (icon == 'A')
                              ? (const Icon(
                            Icons.adjust_rounded,
                            color: Color(0xff2A0A2B),
                            size: 30,
                          ))
                              : (const Icon(
                            Icons.circle_outlined,
                            color: Color(0xff2A0A2B),
                          )),
                          const SizedBox(width: 30),
                          Text(
                            "${e['A']}",
                            style: const TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        icon = 'B';
                        select = 'B';
                      });
                    },
                    child: Container(
                      width: 350,
                      height: 50,
                      decoration: boxDecor,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(width: 10),
                          (icon == 'B')
                              ? (const Icon(
                            Icons.adjust_rounded,
                            color: Color(0xff2A0A2B),
                            size: 30,
                          ))
                              : (const Icon(
                            Icons.circle_outlined,
                            color: Color(0xff2A0A2B),
                          )),
                          const SizedBox(width: 30),
                          Text(
                            "${e['B']}",
                            style: const TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        icon = 'C';
                        select = 'C';
                      });
                    },
                    child: Container(
                      width: 350,
                      height: 50,
                      decoration: boxDecor,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(width: 10),
                          (icon == 'C')
                              ? (const Icon(
                            Icons.adjust_rounded,
                            color: Color(0xff2A0A2B),
                            size: 30,
                          ))
                              : (const Icon(
                            Icons.circle_outlined,
                            color: Color(0xff2A0A2B),
                          )),
                          const SizedBox(width: 30),
                          Text(
                            "${e['C']}",
                            style: const TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        icon = 'D';
                        select = 'D';
                      });
                    },
                    child: Container(
                      width: 350,
                      height: 50,
                      decoration: boxDecor,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(width: 10),
                          (icon == 'D')
                              ? (const Icon(
                            Icons.adjust_rounded,
                            color: Color(0xff2A0A2B),
                            size: 30,
                          ))
                              : (const Icon(
                            Icons.circle_outlined,
                            color: Color(0xff2A0A2B),
                          )),
                          const SizedBox(width: 30),
                          Text(
                            "${e['D']}",
                            style: const TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        icon = "";
                        Index++;
                        if (e['ans'] == select) {
                          img = "build/assets/KBC/Fires.png";
                          result = "Your Answer Is Correct";
                          buton="Next";
                          score++;
                          price += 10000;
                        } else {
                          img = "build/assets/KBC/Loose.png";
                          result = "Your Answer Is Incorrect";
                          buton="Try Again";
                        }
                        Navigator.of(context).pushNamed('page2',
                            arguments: [img, result, price,buton]);
                      });
                    },
                    child: Center(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 17, vertical: 5),
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.purple,
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0, 2),
                                color: Colors.grey.shade500,
                                blurRadius: 1,
                              )
                            ]),
                        alignment: Alignment.center,
                        child: const Text(
                          "Submit",
                          style: TextStyle(
                              fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  // const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        )
            .toList(),
      )
          : Center(
        child: Container(
          height: h,
          width: w,
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("build/assets/KBC/Kbcbg.png"),
              ),
              color: Colors.transparent),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(image: AssetImage("build/assets/KBC/KBCicon.png")),
              Text(
                "Your Total Score is $score",
                style: const TextStyle(fontSize: 30, color: Colors.white),
              ),
              Text(
                "You Win $price",
                style: const TextStyle(fontSize: 40, color: Colors.white),
              )
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xff19051A),
    );
  }
}
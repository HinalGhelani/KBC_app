import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    List s = ModalRoute.of(context)!.settings.arguments as List;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage(s[0]),
              height: 150,
              width: 150,
            ),
            Text(
              s[1],
              style: const TextStyle(
                  fontSize: 30,
                  color: Color(0xff953F4C),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "You Win\n  ${s[2]}",
              style: const TextStyle(
                  fontSize: 38,
                  color: Color(0xffA77135),
                  fontWeight: FontWeight.w500),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  Navigator.of(context).pop();
                });
              },
              child: Container(
                height: 60,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xff511252),
                          Color(0xff7A297B),
                          Color(0xffD537D7)
                        ]),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade500, offset: const Offset(0, 2))
                    ]),
                alignment: Alignment.center,
                child:  Text(
                  "${s[3]}",
                  style: const TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}

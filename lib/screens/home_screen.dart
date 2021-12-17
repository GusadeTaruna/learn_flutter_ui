import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning/constants/color_constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 20),
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        // ignore: avoid_print
                        print('Drawer Tapped!');
                      },
                      child: SvgPicture.asset('assets/svg/menu.svg')),
                  Container(
                    height: 59,
                    width: 59,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/tes.jpg'))),
                  )
                ],
              ),
            ),

            //Card section
            // ignore: prefer_const_constructors
            SizedBox(
              height: 25,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Good Morning',
                    style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: kBlackColor),
                  ),
                  Text(
                    'Gusade Taruna',
                    style: GoogleFonts.inter(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: kBlackColor),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

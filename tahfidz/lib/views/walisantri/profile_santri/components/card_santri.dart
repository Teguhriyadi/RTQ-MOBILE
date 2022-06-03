import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tahfidz/components/constants.dart';

class CardSantri extends StatelessWidget {
  CardSantri(
      {Key? key,
      required this.size,
      this.nama,
      this.nis,
      this.halaqoh,
      this.jenjang})
      : super(key: key);

  final Size size;
  String? nama;
  String? jenjang;
  String? halaqoh;
  String? foto;
  String? nis;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 19),
      width: size.width,
      height: size.width - 60,
      margin: EdgeInsets.only(top: 5, bottom: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(35),
        boxShadow: const [
          BoxShadow(
              offset: Offset(1, 3),
              blurRadius: 5,
              color: Color.fromRGBO(0, 0, 0, 0.25))
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          CircleAvatar(
            radius: 55,
            backgroundColor: mainColor,
            child: const CircleAvatar(
              foregroundColor: Color.fromRGBO(200, 22, 23, 1),
              backgroundImage: AssetImage('assets/images/avatar.png'),
              radius: 50,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            nama!,
            style: GoogleFonts.poppins(
                fontSize: 16, fontWeight: FontWeight.w600, color: kFontColor),
          ),
          Text(
            nis!,
            style: GoogleFonts.poppins(
                fontSize: 16, fontWeight: FontWeight.w600, color: kFontColor),
          ),
          Text(
            jenjang!,
            style: GoogleFonts.poppins(
                fontSize: 12, fontWeight: FontWeight.w500, color: kFontColor),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Container(
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 23, 159, 255),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(1, 3),
                          blurRadius: 3,
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          spreadRadius: 2)
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "Rekap Nilai",
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
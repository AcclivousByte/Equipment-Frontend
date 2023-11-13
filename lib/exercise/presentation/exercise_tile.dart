import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExerciseTile extends StatelessWidget {
  const ExerciseTile(
      {required this.name,
      required this.isChecked,
      required this.onChange,
      super.key});
  final String name;
  final bool isChecked;
  final VoidCallback onChange;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            GestureDetector(
              onTap: onChange,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Image.asset(
                  'assets/user_image.png',
                  height: MediaQuery.of(context).size.width / 3,
                  width: MediaQuery.of(context).size.width / 3.5,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
                bottom: -5,
                right: -5,
                child: Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    onChange();
                  },
                  shape: const CircleBorder(),
                  checkColor: Colors.green,
                  fillColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.selected)) {
                      return Colors.black;
                    } else {
                      return Colors.white;
                    }
                  }),
                )),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          name,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}

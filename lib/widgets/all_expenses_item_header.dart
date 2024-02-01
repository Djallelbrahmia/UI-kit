import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, this.imageBackround, this.imageColor});
  final String image;
  final Color? imageBackround, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            color: imageBackround,
            shape: OvalBorder(),
          ),
          child: Center(
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                  imageColor ?? Color(0xFF4EB7F2), BlendMode.srcIn),
            ),
          ),
        ),
        Expanded(child: SizedBox()),
        Transform.rotate(
          angle: -1.57 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: imageColor == null ? Color(0xFF064061) : Colors.white,
          ),
        )
      ],
    );
  }
}

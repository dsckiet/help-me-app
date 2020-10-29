import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const Color kRedColor = Color(0xFFDB4437);
const Color kBlueColor = Color(0xFF3498DB);
const Color kGreyColor = Color(0xFFD5D5D5);
const Color kWhiteColor = Color(0xFFFFFFFF);
const Color kFontColor = Color(0xFF707070);
const Color kGreenColor = Color(0xFF2FB056);

Widget kGetAppIcon({double size = 100}) {
  return SvgPicture.asset('assets/images/Hands.svg', height: size.toDouble());
}

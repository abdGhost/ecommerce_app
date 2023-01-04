import 'package:flutter/cupertino.dart';
import 'package:shop_app/util/dimensions.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  TextOverflow textOverFlow;
  double size;
  BigText({
    super.key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.textOverFlow = TextOverflow.ellipsis,
    this.size = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: textOverFlow,
      style: TextStyle(
        color: color,
        fontSize: size == 0 ? Dimensions.font20 : size,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

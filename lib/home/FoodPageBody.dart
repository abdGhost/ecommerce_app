import 'package:flutter/cupertino.dart';

class FoodPageBody extends StatelessWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
        itemCount: 5,
        itemBuilder: (context, position) {
          return _buildPageItem(position);
        },
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return Container(
      height: 220,
      margin: const EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: index.isEven ? const Color(0xFF69c5df) : const Color(0xFF9294cc),
      ),
    );
  }
}

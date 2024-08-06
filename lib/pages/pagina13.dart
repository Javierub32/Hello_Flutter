import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class Pagina13_Swiper extends StatelessWidget {
  const Pagina13_Swiper({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _swiper(),
    );
  }
}

Widget _swiper() {
  return Swiper(
    itemBuilder: (BuildContext context, int index) {
      return Image.network(
        "https://picsum.photos/200/300?random=$index",
        fit: BoxFit.fill,
      );
    },
    itemCount: 10,
    itemWidth: 300,
    itemHeight: 300,
    layout: SwiperLayout.STACK,
  );
}
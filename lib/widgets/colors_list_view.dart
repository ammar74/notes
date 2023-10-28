
import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});

  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive?
    CircleAvatar(
      radius: 38,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 34,
        backgroundColor: color,
      ),
    ) : CircleAvatar(
      radius: 38,
      backgroundColor: color,
    );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {

  int currentIndex=0;

  List<Color> colors=[
    const Color(0xff448AFF),
    const Color(0xffFFD740),
    const Color(0xffFF5252),
    const Color(0xff69F0AE),
    const Color(0xff18FFFF),
    const Color(0xffFFAB40),
    const Color(0xffE040FB),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: GestureDetector(
                onTap: (){
                  currentIndex=index;
                  setState(() {});
                },
                child: ColorItem(
                  isActive: currentIndex==index,
                  color: colors[index],
                ),
              ),
            );
          }),
    );
  }
}



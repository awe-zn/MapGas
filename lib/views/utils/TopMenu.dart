import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopMenu extends StatefulWidget implements PreferredSizeWidget{
  final GlobalKey<ScaffoldState>? scaffoldKey;
  final String? title;

  const TopMenu({
    Key? key,
    this.scaffoldKey,
    this.title,
  }):super(key: key);

  @override
  State<TopMenu> createState() => _TopMenuState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _TopMenuState extends State<TopMenu> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        widget.title!,
        style: const TextStyle(
            color: Color(0xff4F4F4F),
            fontSize: 15,
            fontWeight: FontWeight.w500
        ),
      ),
      centerTitle: true,
      backgroundColor: const Color(0xffFCFCFC),
      actions: [
        IconButton(
          onPressed: (){
            widget.scaffoldKey!.currentState?.openDrawer();
          },
          icon: Icon(Icons.menu),
          color: Color(0xff000000),
        )
      ],
      leading: Padding(
        padding: const EdgeInsets.only(top: 8, left: 12),
        child: Text(
          'Map \nGás',
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w800,
              color: const Color(0xff4F4F4F),
              fontSize: 15.0
          ),
        ),
      ),
    );
  }
}
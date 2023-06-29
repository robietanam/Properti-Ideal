import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextLogo extends StatelessWidget {
  const TextLogo({super.key, required this.text, this.color});

  final String text;
  final Color? color;

  Color get _color => color != null ? color! : Colors.white;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 20.dp, fontWeight: FontWeight.w600, color: _color),
    );
  }
}

class TextJudul extends StatelessWidget {
  const TextJudul({super.key, required this.text, this.color});

  final String text;
  final Color? color;

  Color get _color => color != null ? color! : Colors.black;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 18.sp, fontWeight: FontWeight.w600, color: _color),
    );
  }
}

class TextJudul2 extends StatelessWidget {
  const TextJudul2({super.key, required this.text, this.color});

  final String text;
  final Color? color;

  Color get _color => color != null ? color! : Colors.black;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 16.sp, fontWeight: FontWeight.w600, color: _color),
    );
  }
}

class TextIconDeskripsi extends StatelessWidget {
  const TextIconDeskripsi({super.key, required this.text, this.color});

  final String text;
  final Color? color;

  Color get _color => color != null ? color! : Colors.black;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 12.sp, fontWeight: FontWeight.w600, color: _color),
    );
  }
}

class TextDeskripsi1 extends StatelessWidget {
  const TextDeskripsi1({super.key, required this.text, this.color});

  final String text;
  final Color? color;

  Color get _color => color != null ? color! : Colors.black;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 15.sp, fontWeight: FontWeight.w600, color: _color),
    );
  }
}

class TextDeskripsi2 extends StatelessWidget {
  const TextDeskripsi2({super.key, required this.text, this.color});

  final String text;
  final Color? color;

  Color get _color => color != null ? color! : Colors.white;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 14.sp, fontWeight: FontWeight.normal, color: _color),
    );
  }
}

class TextDeskripsi3 extends StatelessWidget {
  const TextDeskripsi3({super.key, required this.text, this.color});

  final String text;
  final Color? color;

  Color get _color => color != null ? color! : Colors.white;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 2,
      style: TextStyle(
          fontSize: 13.sp,
          fontWeight: FontWeight.w600,
          color: _color,
          overflow: TextOverflow.ellipsis),
    );
  }
}

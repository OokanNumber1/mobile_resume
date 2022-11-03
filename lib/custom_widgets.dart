import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    required this.text,
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({
    required this.detail,
    Key? key,
  }) : super(key: key);

  final String detail;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 12,
          right: 12,
          top: 12.0,
        ),
        child: Center(
          child: Text(
            detail,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

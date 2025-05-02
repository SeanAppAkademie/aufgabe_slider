import 'package:app_akademie_practice/src/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextThemePage extends StatelessWidget {
  const TextThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: BoxConstraints.expand(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('W900', style: Theme.of(context).textTheme.displayLarge),
                  Text(
                    'W800',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  Text('W700', style: Theme.of(context).textTheme.displaySmall),
                  Text(
                    'W600',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ],
              ),
              SizedBox(width: 20.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'W900',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                      color: black,
                      height: 1.4,
                    ),
                  ),
                  Text(
                    'W800',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: black,
                      height: 1.4,
                    ),
                  ),
                  Text(
                    'W700',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: black,
                      height: 1.4,
                    ),
                  ),
                  Text(
                    'W600',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: black,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

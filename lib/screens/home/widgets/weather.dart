import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:previsao_do_tempo/models/forecast.dart';

class Weather extends StatelessWidget {
  final Forecast forecast;

  const Weather(
    this.forecast,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Text(
            this.forecast.dayOfWeek,
          ),
          SvgPicture.asset(
            this.forecast.icon,
          ),
          Text(
            "${this.forecast.temperature}°",
          ),
        ],
      ),
    );
  }
}

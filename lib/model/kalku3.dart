import 'dart:math';

import 'package:glbb/model/kalku.dart';

class Kalku3 extends Kalku {
  double jarak(double v0, double t, double a) {
    double s = v0 * t + 0.5 * a * t * t;
    return s;
  }

  double vnol(double s, double a, double t) {
    double v0 = (s / t) - (0.5 * a * t);
    return v0;
  }

  double percep(double s, double v0, double t) {
    double a = (2 * s - 2 * v0 * t) / (t * t);
    return a;
  }

  double waktu(double v0, double a, double s) {
    double t;
    double d = v0 * v0 + 2 * a * s;
    if (d < 0) {
      t = -1;
    } else {
      double t1 = (-v0 + sqrt(d)) / a;
      double t2 = (-v0 - sqrt(d)) / a;
      t = (t1 <= 0) ? t2 : t1;
    }
    return t;
  }
}

class Kalku{
double vakhir(double v0, double a, double t) {
  double vt = v0 + a * t;
  return vt;
}

double vawal(double vt, double a, double t) {
  double v0 = vt - a * t;
  return v0;
}

double percepatan(double v0, double vt, double t) {
  double a = (vt - v0) / t;
  return a;
}

double waktu(double v0, double vt, double a) {
  double t = (vt - v0) / a;
  return t;
}

double cek(text) {
  double d;
  try {
    d = double.parse(text);
  } catch (e) {
    d = -13.12345;
  }
  return d;
}

bool karakter(double x, double y, double z) {
  if ( (x == -13.12345) || (y == -13.12345) || (z == -13.12345)) {
    return true;
  } else
    return false;
}
}
import 'package:apps/factorial.dart';

int permutations(int n, int r) =>
    n <= 0 && r <= 0 ? 0 : (factorial(n) ~/ factorial(n - r));

int combinations(int n, r) => n <= 0 && r <= 0
    ? 0
    : factorial(n) ~/ (factorial(r) * factorial((n - r) as int));

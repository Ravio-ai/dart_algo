import 'package:apps/factorial.dart';
import 'package:test/test.dart';

void main() {
  test("Factorial", () {
    expect(factorial(5), 120);
    expect(
        factorial(0), 1); // Factorial of 10 is 0, as it's not a natural number
    expect(factorial(-1), 1);
  });
}

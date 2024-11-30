import 'package:apps/stack.dart';

void main() {
  Stack stack = Stack();
  print(stack.isEmpty);
  stack.push(10);
  stack.push(20);
  stack.push(30);
  stack.pop();
  print(stack.toArray());
}

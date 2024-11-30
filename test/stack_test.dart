import 'package:apps/stack.dart';
import 'package:test/test.dart';

void main() {
  test("Stack", () {
    Stack stack = Stack();

    // Push elements onto the stack
    stack.push(1);
    stack.push(2);
    stack.push(3);

    // Check the top element
    expect(stack.peek(), 3);

    // Pop elements from the stack
    expect(stack.pop(), 3);
    expect(stack.pop(), 2);
    expect(stack.pop(), 1);

    // Check if the stack is empty
    expect(stack.isEmpty, true);

    // Push elements onto the stack again
    stack.push(4);
    stack.push(5);

    // Check if the stack is not empty
    expect(stack.isEmpty, false);
  });
}

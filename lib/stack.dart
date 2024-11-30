import 'package:apps/node.dart';

class Stack<T> {
  Node<T>? top;
  late int size;

  Stack() {
    top = null;
    size = 0;
  }

  //getLength
  int get length => size;

  //isEmpty
  bool get isEmpty => top == null;

  //clear
  void clear() {
    top = null;
    size = 0;
  }

  //contains
  bool contains(T element) {
    Node<T>? current = top;
    while (current != null) {
      if (current.data == element) {
        return true;
      }
      current = current.next;
    }
    return false;
  }

  List<T> toArray() {
    List<T> array = [];
    Node<T>? current = top;
    while (current != null) {
      array.add(current.data as T);
      current = current.next;
    }
    return array;
  }

  //peek
  T? peek() {
    if (isEmpty) {
      throw Exception("Stack is empty");
    }
    return top!.data;
  }

  //push
  void push(T element) {
    Node<T> newNode = Node<T>(element);
    newNode.next = top;
    top = newNode;
    size++;
  }

  //pop
  T? pop() {
    if (isEmpty) {
      throw Exception("Stack is empty");
    }
    T? poppedElement = top!.data;
    top = top!.next;
    size--;
    return poppedElement;
  }
}

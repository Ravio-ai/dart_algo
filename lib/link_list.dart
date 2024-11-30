import 'package:apps/node.dart';

class LinkedList<T> {
  Node<T>? head;
  Node<T>? tail;
  late int size;

  LinkedList() {
    head = null;
    tail = null;
    size = 0;
  }
  int getLength() {
    return size;
  }

  bool isEmpty() {
    return size == 0;
  }

  //clear
  void clear() {
    head = null;
    tail = null;
    size = 0;
  }

  //contain
  bool contains(T data) {
    Node<T>? current = head;
    while (current != null) {
      if (current.data == data) {
        return true;
      }
      current = current.next;
    }
    return false;
  }

  //return index
  Node<T>? getIndex(int index) {
    if (index < 0 || index >= size) {
      throw RangeError.index(index, size);
    }
    Node<T>? current = head;
    int i = 0;
    while (i < index) {
      current = current!.next;
      i++;
    }
    return current;
  }

  void addFirst(T data) {
    Node<T> node = Node<T>(data);
    if (head == null) {
      head = node;
      tail = node;
    } else {
      node.next = head;
      head = node;
    }
    size++;
  }

  void addLast(T data) {
    Node<T> node = Node<T>(data);
    if (head == null) {
      head = node;
      tail = node;
    } else {
      tail!.next = node;
      tail = node;
    }
    size++;
  }

  void addAt(int index, T data) {
    Node<T>? node = getIndex(index);
    if (node == null) {
      throw RangeError.index(index, size);
    }
    Node<T> newNode = Node<T>(data);
    if (index == 0) {
      addFirst(data);
    } else if (index == size) {
      addLast(data);
    }
    Node<T>? current = head;
    while (current!.next != node) {
      current = current.next;
    }
    newNode.next = node;
    current.next = newNode;
    size++;
  }

  void removeAt(int index) {
    if (index < 0 || index >= size) {
      throw RangeError.index(index, size);
    }
    Node<T>? node = getIndex(index);
    if (index == 0) {
      head = head!.next;
    } else if (index == size - 1) {
      popLast();
    } else {
      Node<T>? current = head;
      while (current!.next != node) {
        current = current.next;
      }
      current.next = node!.next;
    }
    size--;
  }

  List<T> toArray() {
    List<T> array = [];
    Node<T>? current = head;
    while (current != null) {
      array.add(current.data as T);
      current = current.next;
    }
    return array;
  }

  void popFirst() {
    if (head != null) {
      head = head!.next;
      size--;
    }
  }

  void popLast() {
    if (head != null && head == tail) {
      head = null;
      tail = null;
    } else if (head != null) {
      Node<T>? current = head;
      while (current!.next != tail) {
        current = current.next;
      }
      tail = current;
      tail!.next = null;
    }
    size--;
  }

  void reverse() {
    Node<T>? prev;
    Node<T>? current = head;
    Node<T>? next;
    while (current != null) {
      next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }
    head = prev;
    tail = head!;
  }
}

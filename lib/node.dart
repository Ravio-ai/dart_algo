class Node<T> {
  T? data;
  Node<T>? next;

  Node(T this.data) {
    this.next = null;
  }
}

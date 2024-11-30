import 'package:apps/link_list.dart';

void main() {
  LinkedList list = LinkedList();
  list.addLast("rivo");
  list.addLast(2);
  list.addLast("rio");
  list.addLast(4);
  list.addLast(5);

  print(list.toArray());
  list.reverse();
  print(list.toArray());
}

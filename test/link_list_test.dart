import 'package:apps/link_list.dart';
import 'package:test/test.dart';

void main() {
  test("Size of LinkedList", () {
    LinkedList<String> list = LinkedList<String>();
    list.addLast("rivo");
    list.addLast("rio");
    assert(list.getLength() == 2);
  });
  test("isEmpty of LinkedList", () {
    LinkedList<String> list = LinkedList<String>();
    assert(list.isEmpty());
  });
  test("AddFirst to LinkedList", () {
    LinkedList<String> list = LinkedList<String>();
    list.addFirst("rivo");
    assert(list.getIndex(0)!.data == "rivo");
  });
  test("AddLast to LinkedList", () {
    LinkedList<String> list = LinkedList<String>();
    list.addLast("rivo");
    assert(list.getIndex(0)!.data == "rivo");
  });
  test("GetIndex from LinkedList", () {
    LinkedList<String> list = LinkedList<String>();
    list.addLast("rivo");
    list.addLast("rio");
    assert(list.getIndex(1)!.data == "rio");
  });
  test("RemoveFirst from LinkedList", () {
    LinkedList<String> list = LinkedList<String>();
    list.addLast("rivo");
    list.addLast("rio");
    list.popFirst();
    assert(list.getIndex(0)!.data == "rio");
  });
  test("RemoveLast from LinkedList", () {
    LinkedList<String> list = LinkedList<String>();
    list.addLast("rivo");
    list.addLast("rio");
    list.popLast();
    assert(list.getIndex(0)!.data == "rivo");
  });
  test("Clear LinkedList", () {
    LinkedList<String> list = LinkedList<String>();
    list.addLast("rivo");
    list.addLast("rio");
    list.clear();
    assert(list.isEmpty());
  });
  test("ToString of LinkedList", () {
    LinkedList<String> list = LinkedList<String>();
    list.addLast("rivo");
    list.addLast("rio");
    assert(list.toArray().toString() == "[rivo, rio]");
  });
  test("Contains in LinkedList", () {
    LinkedList<String> list = LinkedList<String>();
    list.addLast("rivo");
    list.addLast("rio");
    assert(list.contains("rivo"));
  });
  test("Reverse LinkedList", () {
    LinkedList<String> list = LinkedList<String>();
    list.addLast("rivo");
    list.addLast("rio");
    list.reverse();
    assert(list.toArray().toString() == "[rio, rivo]");
  });
}

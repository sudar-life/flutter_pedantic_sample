import 'package:flutter_pendantic_sample/src/unnecessary_this_widget.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('omit_local_variable_types', () {
    Map<int, List<Person>> groupByZip(Iterable<Person> people) {
      Map<int, List<Person>> peopleByZip = <int, List<Person>>{};
      for (Person person in people) {
        peopleByZip.putIfAbsent(person.zip!, () => <Person>[]);
        peopleByZip[person.zip]!.add(person);
      }
      return peopleByZip;
    }
  });

  testWidgets('unnecessary_this', (WidgetTester tester) async {
    await tester.pumpWidget(UnnecessaryThisWidget());
  });

  test('unnecessary_new', () {
    var person = Person();
    var person1 = new Person();
  });

  test('curly_braces_in_flow_control_structures', () {
    var a = 'C';
    if (a == 'A')
      print('A입니다.');
    else if (a == 'B')
      print('B입니다.');
    else if (a == 'C') print('B입니다.');
  });

  test('prefer_single_quotes', () {
    print("쌍따옴표를 사용하는 것에 대한 style 검증 error ");
    print("쌍따옴표를 사용하는 것에 대한 'style' 검증 Okey ");
  });
}

class Person {
  int? zip;
}

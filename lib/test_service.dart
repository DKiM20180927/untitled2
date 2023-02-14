import 'package:flutter/material.dart';

class TestService extends StatelessWidget {

  // String id ='';
  // TestService(this.id, {Key? key}) : super(key: key);
  final Person person;
  TestService({required this.person});

  @override
  Widget build(BuildContext context) {
//    return Container(color: Colors.deepPurpleAccent.shade100,);
      return Scaffold(
          backgroundColor: Colors.indigo,
          appBar: AppBar(
            title: Text('Test Service'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
//                Text("이전 화면에서 건네진 값  =>  " + id),
                Text("이전 화면에서 넘어온 이름  =>  " + person.name),
                SizedBox(height: 30),
                ElevatedButton(
                  child: Text("Go to Home Page"),
                  onPressed: () {
                    Navigator.pop(context,'데이터 돌려줌');
                  },
                ),
              ],
            ),
          ),
      );
  }
}

class Person{
  String name;
  int age;
  Person(this.name, this.age);
}
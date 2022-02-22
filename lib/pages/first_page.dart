import 'package:flutter/material.dart';
import 'package:flutter_widget_lifecycle/widget/number_widget.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('First page'),
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                setState(() {
                  number++;
                });
              },
            ),
          ],
        ),
        body: NumberWidget(
          number: number,
        )
        // ListView.separated(
        //   itemCount: 1,
        //   separatorBuilder: (context, index) => const Divider(
        //     height: 2,
        //     color: Colors.black,
        //   ),
        //   itemBuilder: (BuildContext context, int index) {
        //     int number = index + 1;
        //     return NumberWidget(number: number);
        //   },
        // ),
        );
  }
}

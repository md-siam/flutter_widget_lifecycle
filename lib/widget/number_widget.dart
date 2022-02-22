import 'package:flutter/material.dart';

class NumberWidget extends StatefulWidget {
  final int number;
  const NumberWidget({
    Key? key,
    required this.number,
  }) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<NumberWidget> createState() {
    // it create an _NumberWidgetState() object
    // form where our life cycle begins
    print('Number: $number CreateState');
    return _NumberWidgetState();
  }
}

class _NumberWidgetState extends State<NumberWidget> {
  int? number;

  // initialize widget before it is built
  @override
  void initState() {
    super.initState();
    print('Number: ${widget.number} InitState');
    number = widget.number;
  }

  // it is called when the life cycle of the state ends
  @override
  void dispose() {
    print('Number: ${widget.number} Dispose');
    super.dispose();
  }

  // it will check whether the widget is updated
  @override
  void didUpdateWidget(covariant NumberWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('Number: ${widget.number} DidUpdateWidget');
    if (oldWidget.number != widget.number) {
      print('Changed Number');
    }
  }

  // rarely used
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('Number: ${widget.number} DidChangeDependencies');
  }

  // rarely used
  @override
  void deactivate() {
    print('Number: ${widget.number} Deactivate');
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    print('Number: ${widget.number} Build');
    return Container(
      height: 500,
      alignment: Alignment.center,
      child: TextButton(
        child: Text(
          number.toString(),
          style: const TextStyle(fontSize: 80),
        ),
        onPressed: () {
          print('Number: ${widget.number} SetState');
          setState(() {
            number = number! + 1;
          });
        },
      ),
    );
  }
}

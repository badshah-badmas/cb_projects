import 'package:cb_test/screens/steps_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const CbTest());
}

class CbTest extends StatelessWidget {
  const CbTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StepSample(),
    );
  }
}

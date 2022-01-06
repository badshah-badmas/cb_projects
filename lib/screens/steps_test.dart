import 'package:flutter/material.dart';

class StepSample extends StatefulWidget {
  const StepSample({Key? key}) : super(key: key);

  @override
  _StepSampleState createState() => _StepSampleState();
}

class _StepSampleState extends State<StepSample> {
  int index = 0;
  int firstStepCount = 0;
  int scndStepCount = 0;
  int thrdStepCount = 0;
  int frthStepCount = 0;
  int ffthStepcount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Step Test"),
      ),
      body: SafeArea(
        child: Stepper(
          currentStep: index,
          onStepTapped: onStepTapped,
          onStepContinue: onContinue,
          steps: [
            Step(
                title: const Text("1st step"),
                content: Container(
                  child: Center(
                    child: Text(firstStepCount.toString()),
                  ),
                )),
            Step(
                title: const Text("2nd step"),
                content: Text(scndStepCount.toString())),
            Step(
                title: const Text("3rd step"),
                content: Text(thrdStepCount.toString())),
            Step(
                title: const Text("4th step"),
                content: Text(frthStepCount.toString())),
            Step(
                title: const Text("5th step"),
                content: Text(ffthStepcount.toString()))
          ],
        ),
      ),
    );
  }

  void onStepTapped(_index) {
    counting(_index);
    setState(() {
      index = _index;
    });
  }

  void onContinue() {
    counting(index + 1);
    setState(() {
      if (index >= 0 && index < 4) {
        index += 1;
      } else {
        index = 0;
      }
    });
  }

  void counting(int index) {
    if (index == 0 || index == 6) {
      setState(() {
        firstStepCount += 1;
      });
    } else if (index == 1) {
      setState(() {
        scndStepCount += 1;
      });
    } else if (index == 2) {
      setState(() {
        thrdStepCount += 1;
      });
    } else if (index == 3) {
      setState(() {
        frthStepCount += 1;
      });
    } else if (index == 4) {
      setState(() {
        ffthStepcount += 1;
      });
    }
  }
}

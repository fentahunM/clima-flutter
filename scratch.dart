void main() async {
  task1();
  String task2Data = await task2();
  task3(task2Data);
}

void task1() {
  print('Task 1 complete');
}

Future task2() async {
  Duration threeSeconds = Duration(seconds: 3);
  // sleep(threeSeconds);
  String result = 'initial';
  await Future.delayed(threeSeconds, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(task2data) {
  print('Task 3 complete with $task2data');
}

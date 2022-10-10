// Copyright ©2022, GM Consult (Pty) Ltd.
// BSD 3-Clause License
// All rights reserved

import 'package:really_bored/really_bored.dart';
import 'package:test/test.dart';
import 'package:gmconsult_dev/gmconsult_dev.dart';

void main() {
  group('really_bored', () {
    test('First Test', () async {
      // get a busywork activity and print it.
      Activity? activity = await Bored.type(ActivityType.busywork);
      expect(activity == null, false);
      if (activity != null) {
        Console.out(title: activity.activity, results: [activity.toJson()]);
      }

      // get a random activity
      activity = await Bored.random;
      expect(activity == null, false);
      if (activity != null) {
        Console.out(title: activity.activity, results: [activity.toJson()]);
      }
    });
  });
}

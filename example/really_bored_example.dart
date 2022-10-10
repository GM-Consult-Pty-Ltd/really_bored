// Copyright ©2022, GM Consult (Pty) Ltd.
// BSD 3-Clause License
// All rights reserved

// ignore_for_file: unused_import
import 'package:really_bored/really_bored.dart';
import 'package:gmconsult_dev/gmconsult_dev.dart';

void main() async {
//

  // get a busywork activity and print it.
  Activity? activity = await Bored.type(ActivityType.busywork);

  if (activity != null) {
    Console.out(title: activity.activity, results: [activity.toJson()]);
  }

  // get a random activity
  activity = await Bored.random;

  if (activity != null) {
    Console.out(title: activity.activity, results: [activity.toJson()]);
  } else {
    print('No activity found!');
  }

  // get a activity using parameters
  activity = await Bored.kitchenSink(
      minPrice: 0.2, maxPrice: 1.0, minAccessibility: 0.6, participants: 2);
  if (activity != null) {
    Console.out(title: activity.activity, results: [activity.toJson()]);
  } else {
    print('No activity found!');
  }
}

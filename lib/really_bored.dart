// Copyright ©2022, GM Consult (Pty) Ltd.
// BSD 3-Clause License
// All rights reserved

/// This is a simple DART implementation of the [Bored API](https://www.boredapi.com/)
/// we built to test our [core dart libraries](https://pub.dev/packages/gmconsult_dart_core).

/// It is by no means intended as a full API implementation.
///
/// The [Bored API](https://www.boredapi.com/) helps you find things to do when
/// you're bored! There are fields like the number of participants, activity
/// type, and more that help you narrow down your results.
///
/// We provide a few static methods that asynchronously returns an activity
/// from the API based on parameters, or just go for [Bored.random].
library really_bored;

import 'package:really_bored/really_bored.dart';

export 'src/bored.dart' show Bored;
export 'src/activity.dart' show Activity;
export 'src/activity_type.dart' show ActivityType;

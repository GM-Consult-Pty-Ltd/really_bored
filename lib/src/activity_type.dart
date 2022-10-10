// Copyright ©2022, GM Consult (Pty) Ltd.
// BSD 3-Clause License
// All rights reserved

import 'package:really_bored/src/_index.dart';

/// Enumeration of [Activity.type]
enum ActivityType {
  //

  /// Educational activity.
  education,

  /// Not work... Why's that not on the list?
  recreational,

  /// Just chill la, but with friends.
  social,

  /// D.I.Y.
  diy,

  /// How's the shine on your halo?
  charity,

  /// Yum.
  cooking,

  /// Just chill la.
  relaxation,

  /// Play a musical instruement or listen to your favorite tunes.
  music,

  /// Just wasting time.
  busywork
}

/// Parses a [value] to [ActivityType].
ActivityType activityTypeFromString(String value) => value.toActivityType();

/// Extension on String for parsing a String to [ActivityType]
extension ActivityTypeExtension on String {
  //

  /// Parses a String to [ActivityType].
  ActivityType toActivityType() {
    final retVal = ActivityType.values
        .where((element) => element.toString() == this || element.name == this);
    if (retVal.isNotEmpty) {
      return retVal.first;
    }
    throw ('Not a valid ActivityType');
  }
}

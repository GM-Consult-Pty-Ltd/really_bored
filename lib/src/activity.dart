// Copyright ©2022, GM Consult (Pty) Ltd.
// BSD 3-Clause License
// All rights reserved

import 'package:really_bored/src/_index.dart';

/// Simple object model for testing
class Activity {
//

  /// The deserializer rquired by the [ApiEndpoint].
  static Activity fromJson(Map<String, dynamic> json) {
    final activity = json['activity'];
    final key = json['key'];
    final type = json['type'];
    final link = json['link'];
    final participants = json['participants'];
    final price = json['price'];
    final accessibility = json['accessibility'];
    if (activity is String &&
        key is String &&
        type is String &&
        link is String &&
        participants is num &&
        price is num &&
        accessibility is num) {
      return Activity(int.parse(key), type.toActivityType(), activity, link,
          participants.toInt(), price.toDouble(), accessibility.toDouble());
    }
    throw ('The json is not a valid Bored object');
  }

  /// The serializer required by the [ApiEndpoint].
  Map<String, dynamic> toJson() => {
        'key': key.toString(),
        'type': type.name,
        'activity': activity,
        'link': link,
        'participants': participants.toString(),
        'price': price.toStringAsFixed(2),
        'accesibility': accessibility.toStringAsFixed(2)
      };

  /// The primary key (id) of this activity.
  final int key;

  /// The type of activity.
  final ActivityType type;

  /// Description of the queried activity.
  final String activity;

  /// Url to a page on the InterWeb where you can find this activity
  final String link;

  /// The number of people that this activity could involve.
  final int participants;

  /// A rating  on a scale of 0 to 1.0 of the subjective cost of the event
  /// with zero being free.
  ///
  /// I guess its not gonna be the same rating for Elon and me.
  final double price;

  /// A rating on a scale of 0 to 1.0 describing how possible an event is to
  /// do with zero being the most accessible.
  final double accessibility;

  /// Const default generative constructor.
  ///
  ///
  const Activity(this.key, this.type, this.activity, this.link,
      this.participants, this.price, this.accessibility)
      : assert(participants > -1, 'The participants cannot be less than 1!'),
        assert(price >= 0 && price <= 1.0,
            'The price rating must be between 0.0 and 1.0 (inclusive)!'),
        assert(accessibility >= 0 && accessibility <= 1.0,
            'The accesibility rating must be between 0.0 and 1.0 (inclusive)!');
}

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

  /// Object property,
  final int key;

  /// Object property,
  final ActivityType type;

  /// Object property,
  final String activity;

  /// Object property,
  final String link;

  /// Object property,
  final int participants;

  /// Object property,
  final double price;

  /// Object property,
  final double accessibility;

  /// Const default generative constructor.
  const Activity(this.key, this.type, this.activity, this.link,
      this.participants, this.price, this.accessibility);
}

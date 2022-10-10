// Copyright ©2022, GM Consult (Pty) Ltd.
// BSD 3-Clause License
// All rights reserved

import 'package:gmconsult_dart_core/dart_core.dart';
import 'package:gmconsult_dart_core/type_definitions.dart';
import 'package:really_bored/src/_index.dart';

/// A simple implementation of `The Bored API`.
///
/// See https://www.boredapi.com/documentation
///
/// A sample JSON response body from the API follows below.
/// ```json
///   { 'activity': 'Learn a new programming language',
///     'type': 'education',
///     'participants': 1,
///     'price': 0.1,
///     'link': '',
///     'key': '5881028',
///     'accessibility': 0.25 }
/// ```
class Bored extends ApiEndpointBase<Activity> {
//

  /// Initialize the endpoint with the [queryParameters].
  const Bored._(this.queryParameters);

  /// Static method to build the query parameters.
  static Map<String, String>? _getQueryParameters(
      {int? id,
      ActivityType? type,
      int? participants,
      double? minPrice,
      double? maxPrice,
      double? minAccessibility,
      double? maxAccessibility}) {
    assert(participants == null || participants > -1,
        'The participants cannot be less than 1!');
    assert(minPrice == null || (minPrice >= 0 && minPrice <= 1),
        'The price rating must be between 0.0 and 1.0 (inclusive)!');
    assert(maxPrice == null || (maxPrice >= 0 && maxPrice <= 1),
        'The price rating must be between 0.0 and 1.0 (inclusive)!');
    assert((maxPrice ?? 1.0) >= (minPrice ?? 0),
        'The minPrice cannot be more than the maxPrice!');
    assert(
        minAccessibility == null ||
            (minAccessibility >= 0 && minAccessibility <= 1),
        'The accesibility rating must be between 0.0 and 1.0 (inclusive)!');
    assert(
        maxAccessibility == null ||
            (maxAccessibility >= 0 && maxAccessibility <= 1),
        'The accesibility rating must be between 0.0 and 1.0 (inclusive)!');
    assert((maxAccessibility ?? 1.0) >= (minAccessibility ?? 0),
        'The minAccessibility cannot be more than the maxAccessibility!');

    final queryParams = <String, String>{};
    if (id != null) {
      {
        queryParams['key'] = id.toString();
      }
    }
    if (type != null) {
      {
        queryParams['type'] = type.name;
      }
    }
    if (minPrice != null) {
      {
        queryParams['minprice'] = minPrice.toString();
      }
    }
    if (maxPrice != null) {
      {
        queryParams['maxprice'] = maxPrice.toString();
      }
    }
    if (participants != null) {
      {
        queryParams['participants'] = participants.toString();
      }
    }
    if (minAccessibility != null) {
      {
        queryParams['minaccessibility'] = minAccessibility.toString();
      }
    }
    if (id != null) {
      {
        queryParams['maxaccessibility'] = maxAccessibility.toString();
      }
    }
    return queryParams.isEmpty ? null : queryParams;
  }

  /// Returns a random activity.
  static Future<Activity?> get random => Bored._(null).get();

  /// Get a random activity by type.
  static Future<Activity?> type(ActivityType type) =>
      Bored._(_getQueryParameters(type: type)).get();

  /// When too many parameters just ain't enough.
  static Future<Activity?> kitchenSink(
          {int? id,
          ActivityType? type,
          int? participants,
          double? minPrice,
          double? maxPrice,
          double? minAccessibility,
          double? maxAccessibility}) =>
      Bored._(_getQueryParameters(
              id: id,
              type: type,
              participants: participants,
              minPrice: minPrice,
              maxPrice: maxPrice,
              minAccessibility: minAccessibility,
              maxAccessibility: maxAccessibility))
          .get();

  /// Only if you can be bothered to read the docs.
  ///
  /// Initialize the API and then call get() or getJson().
  ///
  /// We haven't attempted posting to the `Bored Api` and we suggest you don't
  /// either...
  factory Bored(
          {int? id,
          ActivityType? type,
          int? participants,
          double? minPrice,
          double? maxPrice,
          double? minAccessibility,
          double? maxAccessibility}) =>
      Bored._(_getQueryParameters(
          id: id,
          type: type,
          participants: participants,
          minPrice: minPrice,
          maxPrice: maxPrice,
          minAccessibility: minAccessibility,
          maxAccessibility: maxAccessibility));

  /// We haven't attempted posting to the `Bored Api` and we suggest you don't
  /// either...
  @override
  Future<Activity?> post(Activity? obj) async {
    return obj;
  }

  @override
  Future<Map<String, dynamic>?> getJson() async {
    final json = await super.getJson();
    if (json != null) {
      if (json['activity'] == null) {
        return null;
      }
    }
    return json;
  }

  /// We haven't attempted posting to the `Bored Api` and we suggest you don't
  /// either...
  @override
  Future<Map<String, dynamic>?> postJson(JSON? json) async {
    return json;
  }

  @override
  JsonDeserializer<Activity> get deserializer => Activity.fromJson;

  @override
  String get host => 'www.boredapi.com';

  @override
  String get path => 'api/activity';

  @override
  HttpProtocol get protocol => HttpProtocol.https;

  @override
  final Map<String, String>? queryParameters;

  @override
  JsonSerializer<Activity> get serializer => (obj) => obj.toJson();

  @override
  Map<String, String>? get headers => null;
}

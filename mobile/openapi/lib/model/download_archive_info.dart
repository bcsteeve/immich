//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DownloadArchiveInfo {
  /// Returns a new [DownloadArchiveInfo] instance.
  DownloadArchiveInfo({
    required this.size,
    this.assetIds = const [],
  });

  int size;

  List<String> assetIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DownloadArchiveInfo &&
     other.size == size &&
     other.assetIds == assetIds;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (size.hashCode) +
    (assetIds.hashCode);

  @override
  String toString() => 'DownloadArchiveInfo[size=$size, assetIds=$assetIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'size'] = this.size;
      json[r'assetIds'] = this.assetIds;
    return json;
  }

  /// Returns a new [DownloadArchiveInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DownloadArchiveInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return DownloadArchiveInfo(
        size: mapValueOfType<int>(json, r'size')!,
        assetIds: json[r'assetIds'] is Iterable
            ? (json[r'assetIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<DownloadArchiveInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DownloadArchiveInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DownloadArchiveInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DownloadArchiveInfo> mapFromJson(dynamic json) {
    final map = <String, DownloadArchiveInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DownloadArchiveInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DownloadArchiveInfo-objects as value to a dart map
  static Map<String, List<DownloadArchiveInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DownloadArchiveInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DownloadArchiveInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'size',
    'assetIds',
  };
}


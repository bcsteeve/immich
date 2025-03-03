//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AssetStatsResponseDto {
  /// Returns a new [AssetStatsResponseDto] instance.
  AssetStatsResponseDto({
    required this.images,
    required this.videos,
    required this.total,
  });

  int images;

  int videos;

  int total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AssetStatsResponseDto &&
     other.images == images &&
     other.videos == videos &&
     other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (images.hashCode) +
    (videos.hashCode) +
    (total.hashCode);

  @override
  String toString() => 'AssetStatsResponseDto[images=$images, videos=$videos, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'images'] = this.images;
      json[r'videos'] = this.videos;
      json[r'total'] = this.total;
    return json;
  }

  /// Returns a new [AssetStatsResponseDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AssetStatsResponseDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return AssetStatsResponseDto(
        images: mapValueOfType<int>(json, r'images')!,
        videos: mapValueOfType<int>(json, r'videos')!,
        total: mapValueOfType<int>(json, r'total')!,
      );
    }
    return null;
  }

  static List<AssetStatsResponseDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssetStatsResponseDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssetStatsResponseDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AssetStatsResponseDto> mapFromJson(dynamic json) {
    final map = <String, AssetStatsResponseDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AssetStatsResponseDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AssetStatsResponseDto-objects as value to a dart map
  static Map<String, List<AssetStatsResponseDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AssetStatsResponseDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AssetStatsResponseDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'images',
    'videos',
    'total',
  };
}


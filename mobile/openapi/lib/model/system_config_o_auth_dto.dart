//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SystemConfigOAuthDto {
  /// Returns a new [SystemConfigOAuthDto] instance.
  SystemConfigOAuthDto({
    required this.enabled,
    required this.issuerUrl,
    required this.clientId,
    required this.clientSecret,
    required this.scope,
    required this.storageLabelClaim,
    required this.buttonText,
    required this.autoRegister,
    required this.autoLaunch,
    required this.mobileOverrideEnabled,
    required this.mobileRedirectUri,
  });

  bool enabled;

  String issuerUrl;

  String clientId;

  String clientSecret;

  String scope;

  String storageLabelClaim;

  String buttonText;

  bool autoRegister;

  bool autoLaunch;

  bool mobileOverrideEnabled;

  String mobileRedirectUri;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SystemConfigOAuthDto &&
     other.enabled == enabled &&
     other.issuerUrl == issuerUrl &&
     other.clientId == clientId &&
     other.clientSecret == clientSecret &&
     other.scope == scope &&
     other.storageLabelClaim == storageLabelClaim &&
     other.buttonText == buttonText &&
     other.autoRegister == autoRegister &&
     other.autoLaunch == autoLaunch &&
     other.mobileOverrideEnabled == mobileOverrideEnabled &&
     other.mobileRedirectUri == mobileRedirectUri;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabled.hashCode) +
    (issuerUrl.hashCode) +
    (clientId.hashCode) +
    (clientSecret.hashCode) +
    (scope.hashCode) +
    (storageLabelClaim.hashCode) +
    (buttonText.hashCode) +
    (autoRegister.hashCode) +
    (autoLaunch.hashCode) +
    (mobileOverrideEnabled.hashCode) +
    (mobileRedirectUri.hashCode);

  @override
  String toString() => 'SystemConfigOAuthDto[enabled=$enabled, issuerUrl=$issuerUrl, clientId=$clientId, clientSecret=$clientSecret, scope=$scope, storageLabelClaim=$storageLabelClaim, buttonText=$buttonText, autoRegister=$autoRegister, autoLaunch=$autoLaunch, mobileOverrideEnabled=$mobileOverrideEnabled, mobileRedirectUri=$mobileRedirectUri]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'enabled'] = this.enabled;
      json[r'issuerUrl'] = this.issuerUrl;
      json[r'clientId'] = this.clientId;
      json[r'clientSecret'] = this.clientSecret;
      json[r'scope'] = this.scope;
      json[r'storageLabelClaim'] = this.storageLabelClaim;
      json[r'buttonText'] = this.buttonText;
      json[r'autoRegister'] = this.autoRegister;
      json[r'autoLaunch'] = this.autoLaunch;
      json[r'mobileOverrideEnabled'] = this.mobileOverrideEnabled;
      json[r'mobileRedirectUri'] = this.mobileRedirectUri;
    return json;
  }

  /// Returns a new [SystemConfigOAuthDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SystemConfigOAuthDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return SystemConfigOAuthDto(
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        issuerUrl: mapValueOfType<String>(json, r'issuerUrl')!,
        clientId: mapValueOfType<String>(json, r'clientId')!,
        clientSecret: mapValueOfType<String>(json, r'clientSecret')!,
        scope: mapValueOfType<String>(json, r'scope')!,
        storageLabelClaim: mapValueOfType<String>(json, r'storageLabelClaim')!,
        buttonText: mapValueOfType<String>(json, r'buttonText')!,
        autoRegister: mapValueOfType<bool>(json, r'autoRegister')!,
        autoLaunch: mapValueOfType<bool>(json, r'autoLaunch')!,
        mobileOverrideEnabled: mapValueOfType<bool>(json, r'mobileOverrideEnabled')!,
        mobileRedirectUri: mapValueOfType<String>(json, r'mobileRedirectUri')!,
      );
    }
    return null;
  }

  static List<SystemConfigOAuthDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SystemConfigOAuthDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SystemConfigOAuthDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SystemConfigOAuthDto> mapFromJson(dynamic json) {
    final map = <String, SystemConfigOAuthDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SystemConfigOAuthDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SystemConfigOAuthDto-objects as value to a dart map
  static Map<String, List<SystemConfigOAuthDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SystemConfigOAuthDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SystemConfigOAuthDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'enabled',
    'issuerUrl',
    'clientId',
    'clientSecret',
    'scope',
    'storageLabelClaim',
    'buttonText',
    'autoRegister',
    'autoLaunch',
    'mobileOverrideEnabled',
    'mobileRedirectUri',
  };
}


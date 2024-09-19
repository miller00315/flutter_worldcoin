///[action] The action to check. This is the same action that was passed to IDKit. Defaults to an empty string for Sign in with World ID.
///[nullifierHash] The ZKP's nullifier hash, as provided by IDKit. See IDKit response for details. Defaults to an empty string.
///[externalNullifier] The ZKP's external nullifier. This parameter is deprecated and will be removed in a future release, and should no longer be used. Instead, pass the action parameter.
library;

class GetActionMetadata {
  String? action;
  String? nullifierHash;
  String? externalNullifier;

  GetActionMetadata({this.action, this.nullifierHash, this.externalNullifier});

  factory GetActionMetadata.fromJson(Map<String, dynamic> json) =>
      GetActionMetadata(
        action: json['action'],
        nullifierHash: json['nullifier_hash'],
        externalNullifier: json['external_nullifier'],
      );

  Map<String, dynamic> toJson() => {
        'action': action,
        'nullifier_hash': nullifierHash,
        'external_nullifier': externalNullifier,
      };
}

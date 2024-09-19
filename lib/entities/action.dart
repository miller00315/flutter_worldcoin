
///[name] The action's human-readable name as configured in the Developer Portal.
///[action] The action identifier as configured in the Developer Portal. Typically a slugified version of the action's name.
///[description] The action's description as configured in the Developer Portal.
///[maxVerifications] The maximum number of verifications allowed for this action. Will be 0 if the action is configured for unlimited verifications.
///[maxAccountsPerUser] The maximum number of accounts allowed per user for Sign in with World ID. Will always be 1.
///[externalNullifier] The action's external nullifier. Intended for internal use only.
///[status] Will return active if the action is active, otherwise will return inactive.
///[typename] Always returns action.
library;

class Action {
  String? externalNullifier;
  String? name;
  String? action;
  String? description;
  int? maxVerifications;
  int? maxAccountsPerUser;
  String? typename;

  Action({
    this.externalNullifier,
    this.name,
    this.action,
    this.description,
    this.maxVerifications,
    this.maxAccountsPerUser,
    this.typename,
  });

  factory Action.fromJson(Map<String, dynamic> json) => Action(
        externalNullifier: json['external_nullifier'],
        name: json['name'],
        action: json['action'],
        description: json['description'],
        maxVerifications: json['max_verifications'],
        maxAccountsPerUser: json['max_accounts_per_user'],
        typename: json['__typename'],
      );

  Map<String, dynamic> toJson() => {
        "external_nullifier": externalNullifier,
        "name": name,
        "action": action,
        "description": description,
        "max_verifications": maxVerifications,
        "max_accounts_per_user": maxAccountsPerUser,
        "__typename": typename
      };

  @override
  String toString() {
    return 'Action('
        'externalNullifier: $externalNullifier, '
        'name: $name, '
        'action: $action, '
        'description: $description, '
        'maxVerifications: $maxVerifications, '
        'maxAccountsPerUser: $maxAccountsPerUser, '
        'typename: $typename'
        ')';
  }
}

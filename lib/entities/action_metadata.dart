import 'package:flutter_worldcoin/enums/can_you_verify.dart';
import './action.dart';

class ActionMetadata {
  String? id;
  bool? isStaging;
  bool? isVerified;
  String? name;
  String? verifiedAppLogo;
  String? engine;
  String? typename;
  bool? signInWithWorldId;
  CanYouVerify? canUserVerify;
  Action? action;

  ActionMetadata({
    this.id,
    this.isStaging,
    this.isVerified,
    this.name,
    this.verifiedAppLogo,
    this.engine,
    this.typename,
    this.signInWithWorldId,
    this.canUserVerify,
    this.action,
  });

  factory ActionMetadata.fromJson(Map<String, dynamic> json) => ActionMetadata(
        id: json['id'],
        isStaging: json['is_staging'],
        isVerified: json['is_verified'],
        name: json['name'],
        verifiedAppLogo: json['verified_app_logo'],
        engine: json['eng'],
        typename: json['__typename'],
        signInWithWorldId: json['sign_in_with_world_id'],
        canUserVerify: CanYouVerify.values.firstWhere(
          (e) => e.value == json['can_user_verify'],
        ),
        action: Action.fromJson(json['action']),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "is_staging": isStaging,
        "is_verified": isVerified,
        "name": name,
        "verified_app_logo": verifiedAppLogo,
        "engine": engine,
        "__typename": typename,
        "sign_in_with_world_id": signInWithWorldId,
        "can_user_verify": canUserVerify,
        "action": action?.toJson(),
      };
}

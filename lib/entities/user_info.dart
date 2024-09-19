import 'package:flutter_worldcoin/entities/human_verification.dart';
import 'package:flutter_worldcoin/entities/worldcoin_verification_level.dart';

class UserInfo {
   final String sub;
  final HumanVerification? deprecatedVerification;
  final WorldcoinVerificationLevel? verification;
  final String? email;
  final String? name;
  final String? givenName;
  final String? familyName;

  UserInfo({
    required this.sub,
    this.deprecatedVerification,
    this.verification,
    this.email,
    this.name,
    this.givenName,
    this.familyName,
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) {
    return UserInfo(
      sub: json['sub'],
      deprecatedVerification: json['https://id.worldcoin.org/beta'] != null
          ? HumanVerification.fromJson(json['https://id.worldcoin.org/beta'])
          : null,
      verification: json['https://id.worldcoin.org/v1'] != null
          ? WorldcoinVerificationLevel.fromJson(json['https://id.worldcoin.org/v1'])
          : null,
      email: json['email'],
      name: json['name'],
      givenName: json['given_name'],
      familyName: json['family_name'],
    );
  }
}




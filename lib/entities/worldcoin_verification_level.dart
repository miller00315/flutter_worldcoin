import 'package:flutter_worldcoin/enums/verification_level.dart';

class WorldcoinVerificationLevel {
  final VerificationLevel? verificationLevel;

  WorldcoinVerificationLevel({
    required this.verificationLevel,
  });

  factory WorldcoinVerificationLevel.fromJson(Map<String, dynamic> json) {
    return WorldcoinVerificationLevel(
      verificationLevel: VerificationLevel.values.firstWhere(
        (e) => e.value == json['verification_level'],
      ),
    );
  }
}

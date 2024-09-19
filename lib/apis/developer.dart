import 'package:flutter_worldcoin/entities/action_metadata.dart';
import 'package:flutter_worldcoin/entities/jwk_keys.dart';
import 'package:flutter_worldcoin/entities/precheck.dart';
import 'package:flutter_worldcoin/entities/proof.dart';
import 'package:flutter_worldcoin/entities/verify_proof.dart';

class Developer {
  final String base_url = 'https://developer.worldcoin.org';

  /// POST https://developer.worldcoin.org/api/v2/verify/{app_id}
  Future<Proof> verifyProof(VerifyProof data) async {
    return Proof();
  }

  /// POST https://developer.worldcoin.org/api/v1/precheck/{app_id}
  Future<ActionMetadata> getActionMetadata(Precheck data) async {
    return ActionMetadata();
  }

  /// GET https://developer.worldcoin.org/api/v1/jwks
  Future<List<JwkKeys>> getJwkKeys() async {
    return [];
  }
}

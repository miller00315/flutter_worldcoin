library flutter_worldcoin;

final baseDeveloperUrl = 'https://developer.worldcoin.org';

/// A Calculator.
class Calculator {
  final String appId;

  final Map<String, dynamic> headers = {
    'ContentType': 'Content-Type: application/json',
    'UserAgent': ''
  };

  Calculator({required this.appId});

  verifyProof() {

  }

  getActionMetadata({
    required String action,
    required String nullifierHash,
    required String externalNullifier
  }) {

  } 
}

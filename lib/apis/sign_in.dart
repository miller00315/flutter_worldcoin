import 'package:flutter_worldcoin/entities/authorize_params.dart';
import 'package:flutter_worldcoin/entities/exchange_code.dart';
import 'package:flutter_worldcoin/entities/exchange_code_data_params.dart';
import 'package:flutter_worldcoin/entities/introspect.dart';
import 'package:flutter_worldcoin/entities/introspect_request_data.dart';
import 'package:flutter_worldcoin/entities/open_id_conection_discovery.dart';
import 'package:flutter_worldcoin/entities/user_info.dart';

class SignIn {
  final String baseUrl = 'https://id.worldcoin.org';

  /// https://id.worldcoin.org/.well-known/openid-configuration
  Future<OpenIdConectionDiscovery> getOpenIDConnectDiscovery() async {
    return OpenIdConectionDiscovery();
  }

  /// https://id.worldcoin.org/authorize?redirect_uri=https%3A%2F%2Fdocs.worldcoin.org%2Ftry-callback&response_type=code&scope=openid+profile+email&client_id=app_ce4cb73cb75fc3b73b71ffb4de178410
  Future<Uri> getAuthorize(AuthoraizeParams params) async {
    return Uri.parse('');
  }

  /// -X POST https://id.worldcoin.org/token \
  // -H "Authorization: Basic YXBwXzU1MGU4MjkwODJmYzU1OGUxMTJlMDYyMGMxYzdhNT..." \
  // -H "Content-Type: application/x-www-form-urlencoded" \
  // -d "code=23e5edda0f731dfdddace390&grant_type=authorization_code&redirect_uri=https%3A%2F%2Fdocs.worldcoin.org%2Fapi%2Fauth"
  Future<ExchangeCode> getExchangeCode(ExchangeCodeDataParams params) async {
    return ExchangeCode();
  }

  /// -X POST https://id.worldcoin.org/introspect \
  /// -H "Authorization: Basic YXBwXzU1MGU4MjkwODJmYzU1OGUxMTJlMDYyMGMxYzdhNT..." \
  /// -H "Content-Type: application/x-www-form-urlencoded" \
  /// --data-urlencode "token=eyJhbGciOiJSUzI1NiIsImtpZCI6Imp3a18yZmViZjY3MDc3N2UyY2NlNzY5YzUxOGM3MDNkNTNjMStN..."
  Future<Introspect> getIntrospect(IntrospectRequestData data) async {
    return Introspect();
  }

  /// -X POST https://id.worldcoin.org/userinfo \
  /// -H "Authorization: Bearer eyJhbGciOiJSUzI1NiIsImtpZ.eyCI6I.mp3a18yZmViZjY3MDc3N2UyY2NlN..."
  Future<UserInfo> getUserInfo() async {
    return UserInfo();
  }
}

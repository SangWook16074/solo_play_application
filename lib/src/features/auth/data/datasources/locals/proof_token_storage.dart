import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class ProofTokenStorage {
  Future<void> saveProofToken(String proofToken);

  Future<void> deleteProofToken();
}

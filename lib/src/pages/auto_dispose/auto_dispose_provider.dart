import 'package:flutter_riverpod/flutter_riverpod.dart';

/// provider 를 global variable 로 선언
final autoDisposeHelloProvider =
    Provider.autoDispose<String>((ProviderRef ref) {
  print('[autoDisposHelloProvider] created');

  ref.onDispose(() {
    print('[autoDisposeHelloProvider] disposed');
  });
  return 'Hello';
});

final autoDisposeWoldProvider = Provider.autoDispose<String>((ProviderRef ref) {
  print('[autoDisposWorldProvider] created');

  ref.onDispose(() {
    print('[autoDisposeWorldProvider] disposed');
  });
  return 'World';
});

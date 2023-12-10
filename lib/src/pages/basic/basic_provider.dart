import 'package:flutter_riverpod/flutter_riverpod.dart';

/// provider 를 global variable 로 선언

final helloProvider = Provider<String>((ProviderRef ref) {
  ref.onDispose(() {
    print('[helloProvider] disposed');
  });

  return 'Hello';
});

final worldProvider = Provider<String>((ProviderRef ref) {
  ref.onDispose(() {
    print('[worldProvider] disposed');
  });

  return 'World';
});

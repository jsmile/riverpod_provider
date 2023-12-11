// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'basic_provider.g.dart';

/// provider 를 global variable 로 선언

// final helloProvider = Provider<String>((ProviderRef ref) {
//   ref.onDispose(() {
//     print('[helloProvider] disposed');
//   });

//   return 'Hello';
// });

// final worldProvider = Provider<String>((ProviderRef ref) {
//   ref.onDispose(() {
//     print('[worldProvider] disposed');
//   });

//   return 'World';
// });

@Riverpod(keepAlive: true) // keepAlive: true 를 추가하면, provider 가 dispose 되지 않음.
String hello(HelloRef ref) {
  ref.onDispose(() {
    print('[helloProvider] disposed');
  });

  return 'Hello';
}

@Riverpod(keepAlive: true)
String world(WorldRef ref) {
  ref.onDispose(() {
    print('[WorldProvider] disposed');
  });

  return 'World';
}

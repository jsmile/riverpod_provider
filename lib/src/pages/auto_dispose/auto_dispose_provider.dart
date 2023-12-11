// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auto_dispose_provider.g.dart';

/// provider 를 global variable 로 선언
// final autoDisposeHelloProvider =
//     Provider.autoDispose<String>((ProviderRef ref) {
//   print('[autoDisposHelloProvider] created');

//   ref.onDispose(() {
//     print('[autoDisposeHelloProvider] disposed');
//   });
//   return 'Hello';
// });

// final autoDisposeWoldProvider = Provider.autoDispose<String>((ProviderRef ref) {
//   print('[autoDisposWorldProvider] created');

//   ref.onDispose(() {
//     print('[autoDisposeWorldProvider] disposed');
//   });
//   return 'World';
// });

@riverpod
String autoDisposeHello(AutoDisposeHelloRef ref) {
  print('### autoDisposHelloProvider created');

  ref.onDispose(() {
    print('### autoDisposeHelloProvider disposed');
  });
  return 'Hello';
}

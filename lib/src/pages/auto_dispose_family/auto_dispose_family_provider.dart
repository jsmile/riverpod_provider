import 'package:flutter_riverpod/flutter_riverpod.dart';

final autoDisposeFamilyHelloProvider =
    Provider.autoDispose.family<String, String>((ProviderRef ref, String name) {
  print('### autoDisposeFamilyHelloProvider : created !');

  ref.onDispose(() {
    print('### autoDisposeFamilyHelloProvider : disposed !');
  });

  return 'Hello $name';
});

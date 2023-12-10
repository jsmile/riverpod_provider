import 'package:flutter_riverpod/flutter_riverpod.dart';

final autoDisposeFamilyHelloTestProvider =
    Provider.autoDispose.family<String, String>((ProviderRef ref, String name) {
  print('### autoDisposeFamilyHelloTestProvider( $name ) : created !');

  ref.onDispose(() {
    print('### autoDisposeFamilyHelloTestProvider( $name ) : disposed !');
  });

  return 'Hello $name';
});

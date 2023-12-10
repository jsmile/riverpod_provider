import 'package:flutter_riverpod/flutter_riverpod.dart';

final familyHelloProvider =
    Provider.family<String, String>((ProviderRef ref, String name) {
  print('### familyHelloProvider : created !');

  ref.onDispose(() {
    print('### familyHelloProvider : disposed !');
  });

  return 'Hello $name';
});

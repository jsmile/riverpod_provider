// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'family_provider.g.dart';

// final familyHelloProvider =
//     Provider.family<String, String>((ProviderRef ref, String name) {
//   print('### familyHelloProvider : created !');

//   ref.onDispose(() {
//     print('### familyHelloProvider : disposed !');
//   });

//   return 'Hello $name';
// });

@riverpod
String familyHello(FamilyHelloRef ref, {required String p_name}) {
  // name --> p_name  :  name 을 p_name 으로 변경하여 duplicate parameter name 을 방지함.
  print('### familyHelloProvider : created !');

  ref.onDispose(() {
    print('### familyHelloProvider : disposed !');
  });

  return 'Hello $p_name';
}

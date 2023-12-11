import 'package:equatable/equatable.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auto_dispose_family_provider.g.dart';

// final autoDisposeFamilyHelloProvider =
//     Provider.autoDispose.family<String, String>((ProviderRef ref, String name) {
//   print('### autoDisposeFamilyHelloProvider : created !');

//   ref.onDispose(() {
//     print('### autoDisposeFamilyHelloProvider : disposed !');
//   });

//   return 'Hello $name';
// });

class Counter extends Equatable {
  final int count;

  const Counter({
    required this.count,
  });

  @override
  String toString() => 'Counter(count: $count)';

  @override
  List<Object> get props => [count];
}

final counterProvider =
    Provider.autoDispose.family<int, Counter>((ref, counter) {
  print('### counterProvider $counter : created !');

  ref.onDispose(() {
    print('### counterProvider : disposed !');
  });

  return counter.count;
});

// final autoDisposeFamilyHelloProvider =
//     Provider.autoDispose.family<String, String>((ref, name) {
//   print('### autoDisposeFamilyHelloProvider : created !');

//   ref.onDispose(() {
//     print('### autoDisposeFamilyHelloProvider : disposed !');
//   });

//   return 'Hello $name';
// });

@riverpod
String autoDisposeFamilyHello(AutoDisposeFamilyHelloRef ref,
    {required String p_name}) {
  print('### autoDisposeFamilyHelloProvider : created !');

  ref.onDispose(() {
    print('### autoDisposeFamilyHelloProvider : disposed !');
  });

  return 'Hello $p_name';
}

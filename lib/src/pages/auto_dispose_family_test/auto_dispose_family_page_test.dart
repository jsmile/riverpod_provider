import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'auto_dispose_family_provider_test.dart';

/// 동일한 type 의 Provider 들을 parameter 에 따라 여러개 만들어도
/// 각각의 provider 들은 별도로 Dispose 됨.

class AutoDisposeFamilyTestPage extends ConsumerStatefulWidget {
  const AutoDisposeFamilyTestPage({super.key});

  @override
  ConsumerState<AutoDisposeFamilyTestPage> createState() =>
      _AutoDisposeFamilyTestPageState();
}

class _AutoDisposeFamilyTestPageState
    extends ConsumerState<AutoDisposeFamilyTestPage> {
  String name = 'John';

  @override
  Widget build(BuildContext context) {
    final helloThere = ref.watch(autoDisposeFamilyHelloTestProvider(name));

    return Scaffold(
      appBar: AppBar(
        title: const Text('AutoDisposeFamilyProvider'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              helloThere,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(height: 10),
            FilledButton(
              onPressed: () {
                setState(() {
                  name = name == 'John' ? 'Jane' : 'John';
                });
              },
              child: Text('Change Name'),
            ),
          ],
        ),
      ),
    );
  }
}

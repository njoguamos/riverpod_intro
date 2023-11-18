import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final nameProvider = Provider<String>((ref) {
  return "From Riverpod";
});

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.limeAccent),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello World'),
        ),
        body: Center(
          child: Text(name),
        ),
      ),
    );
  }
}

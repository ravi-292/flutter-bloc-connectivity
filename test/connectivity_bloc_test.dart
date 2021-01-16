import 'package:bloc_test/bloc_test.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_connectivity/connectivity/bloc/connectivity_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

class MockConnectivityCubit extends MockBloc<ConnectivityResult>
    implements ConnectivityCubit {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group('whenListen', () {
    test("Let's mock the ConnectivityCubit's stream!", () {
      final cubit = MockConnectivityCubit();

      whenListen(
          cubit,
          Stream.fromIterable([
            ConnectivityResult.wifi,
            ConnectivityResult.none,
            ConnectivityResult.mobile,
            ConnectivityResult.mobile,
            ConnectivityResult.wifi,
            ConnectivityResult.none,
          ]));

      expectLater(
          cubit,
          emitsInOrder(<ConnectivityResult>[
            ConnectivityResult.wifi,
            ConnectivityResult.none,
            ConnectivityResult.mobile,
            ConnectivityResult.mobile,
            ConnectivityResult.wifi,
            ConnectivityResult.none,
          ]));
    });
  });

  group('ConnectivityCubit', () {
    blocTest<ConnectivityCubit, ConnectivityResult>(
      'emits ConnectivityResult.none when nothing is called',
      build: () => ConnectivityCubit(),
      expect: const <ConnectivityResult>[],
    );
  });
}

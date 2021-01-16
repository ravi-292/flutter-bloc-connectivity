import 'package:flutter_bloc/flutter_bloc.dart';

class ConnectivityObserver extends BlocObserver {
  @override
  void onChange(Cubit cubit, Change change) {
    print('${cubit.runtimeType} $change');
    print('Hello from observer');
    super.onChange(cubit, change);
  }
}

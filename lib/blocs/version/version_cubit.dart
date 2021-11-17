import 'package:bloc/bloc.dart';
import 'package:clash_dashboard_flutter/repository/clash_apis.dart';
import 'package:equatable/equatable.dart';

part 'version_state.dart';

class VersionCubit extends Cubit<VersionState> {
  final ClashApis api;

  VersionCubit({required this.api}) : super(const VersionState('')) {
    api.getVersion().then((value) {
      emit(VersionState(value.version));
    });
  }
}

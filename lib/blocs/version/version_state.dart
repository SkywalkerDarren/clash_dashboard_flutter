part of 'version_cubit.dart';

class VersionState extends Equatable {
  final String version;

  const VersionState(this.version);

  @override
  List<Object?> get props => [version];
}

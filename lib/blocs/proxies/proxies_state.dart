part of 'proxies_bloc.dart';

abstract class ProxiesState extends Equatable {
  const ProxiesState();
}

class ProxiesInitial extends ProxiesState {
  @override
  List<Object> get props => [];
}

class ProxiesUpdate extends ProxiesState {
  final String text;

  const ProxiesUpdate(this.text);
  @override
  List<Object?> get props => [text];

}

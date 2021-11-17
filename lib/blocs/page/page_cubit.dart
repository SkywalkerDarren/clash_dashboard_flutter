import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'page_state.dart';

class PageCubit extends Cubit<PageState> {
  PageCubit() : super(const PageState(Page.proxies));

  void gotoPage(Page page) {
    emit(PageState(page));
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_app/data/models/info.dart';
import 'package:repo_api/repo_api.dart';

part 'bloc_page_home_event.dart';
part 'bloc_page_home_state.dart';

part 'bloc_page_home.freezed.dart';
part 'bloc_page_home.g.dart';

/// Bloc de la pagina Home
class BlocPageHome extends Bloc<BlocPageHomeEvent, BlocPageHomeState> {
  /// {@macro BlocPageHome}
  BlocPageHome({required this.repoApi}) : super(const BlocPageHomeState()) {
    on<BlocPageHomeEvent>(_onHomeEvent);
  }
  Future<void> _onHomeEvent(
    BlocPageHomeEvent event,
    Emitter<BlocPageHomeState> emit,
  ) {
    return event.when(
      get: () async {
        emit(state.copyWith(status: HomeStatus.loading));
        try {
          final response = await repoApi.getImagenes();

          final listInfo = response.map(Info.fromJson).toList();

          emit(state.copyWith(status: HomeStatus.success, listInfo: listInfo));
        } catch (e) {
          emit(
            state.copyWith(
              status: HomeStatus.error,
              error: e.toString(),
            ),
          );
        }
      },
    );
  }

  final RepoApi repoApi;
}

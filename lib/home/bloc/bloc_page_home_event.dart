part of 'bloc_page_home.dart';

///Eventos del home
@freezed
class BlocPageHomeEvent with _$BlocPageHomeEvent {
  ///Cuando se ejecuta este evento, se llama a [RepoApi]
  ///para traer una lista de imagenes de prueba
  const factory BlocPageHomeEvent.get() = _getImagenes;
}

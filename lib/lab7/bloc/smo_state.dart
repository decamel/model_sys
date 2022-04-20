part of 'smo_bloc.dart';

@freezed
class SmoState with _$SmoState {
  const factory SmoState.initial() = _Initial;
  const factory SmoState.done({
    required ComposeProps def,
    required ComposeProps accure,
  }) = _Done;
}

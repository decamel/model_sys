part of 'multismo_bloc.dart';

@freezed
class MultismoState with _$MultismoState {
  const factory MultismoState.initial() = _Initial;
  const factory MultismoState.done({
    required ComposeProps def,
    required ComposeProps accure,
  }) = _Done;
}

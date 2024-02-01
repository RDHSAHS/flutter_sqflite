import 'package:flutter/material.dart';
import 'package:flutter_base/src/models/user.dart';
import 'package:flutter_base/src/services/remote_datasource.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final RemoteDatasource remoteDatasource;
  UserBloc({required this.remoteDatasource}) : super(UserInitial()) {
    on<LoadUser>((event, emit) async {
      emit(UserLoading());
      try {
        final result = await remoteDatasource.getusers();
        emit(UserLoaded(result.data));
      } catch (error) {
        emit(UserError(error.toString()));
      }
    });
  }
}

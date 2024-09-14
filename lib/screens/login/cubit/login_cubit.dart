import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu_e_commerce_app/screens/login/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
	LoginCubit() : super(const LoginState(isLoading: true));
	
	Future<void> loadInitialData() async {
		final stableState = state;
		try {
		  emit(state.copyWith(isLoading: true));
		  emit(state.copyWith(isLoading: false));
		} catch (error) {
		  emit(state.copyWith(error: error.toString()));
		  emit(stableState.copyWith(isLoading: false));
		}
	}
}

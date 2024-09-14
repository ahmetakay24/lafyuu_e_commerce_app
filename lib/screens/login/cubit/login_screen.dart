import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu_e_commerce_app/screens/login/cubit/login_cubit.dart';
import 'package:lafyuu_e_commerce_app/screens/login/cubit/login_state.dart';

class LoginScreen extends StatefulWidget {
	const LoginScreen({super.key});
	
	@override
	_LoginScreenState createState() => _LoginScreenState();
}
	
class _LoginScreenState extends State<LoginScreen> {
	final screenCubit = LoginCubit();
	
	@override
	void initState() {
		screenCubit.loadInitialData();
		super.initState();
	}
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: BlocConsumer<LoginCubit, LoginState>(
				bloc: screenCubit,
				listener: (BuildContext context, LoginState state) {
					if (state.error != null) {
						// TODO your code here
					}
				},
				builder: (BuildContext context, LoginState state) {
					if (state.isLoading) {
						return const Center(child: CircularProgressIndicator());
					}
	
					return buildBody(state);
				},
			),
		);
	}
	
	Widget buildBody(LoginState state) {
		return ListView(
			children: const [
				// TODO your code here
			],
		);
	}
}

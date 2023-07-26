import 'package:auto_route/auto_route.dart';
import 'package:e_shoping_app/features/login/controller/login_notifier_pod.dart';
import 'package:e_shoping_app/features/login/state/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage(
  name: 'LoginScreenRouter',
  deferredLoading: true,
)
class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final formkey = GlobalKey<FormBuilderState>();

  login() {
    if (formkey.currentState!.validate()) {
      final username = formkey.currentState!.fields["Username"]!.value;
      final password = formkey.currentState!.fields["Password"]!.value;

      ref.read(loginStatePod.notifier).login(
          username: username,
          password: password,
          onSuccess: () {
            const snackBar = SnackBar(
              content: Text('Login Success'),
            );

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          onError: () {
            const snackBar = SnackBar(
              content: Text('Login Error'),
            );

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FormBuilder(
        initialValue: const {"Username": 'mor_2314', "Password": '83r5^_'},
        key: formkey,
        child: [
          FormBuilderTextField(
            name: 'Username',
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              label: "Username".text.make(),
            ),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(errorText: "Enter Your username")
            ]),
          ).p(10),
          FormBuilderTextField(
            name: 'Password',
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(label: "Password".text.make()),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(errorText: "enter your password")
            ]),
          ).p(10),
          Consumer(
            builder: (_, WidgetRef ref, __) {
              final loginAsync = ref.watch(loginStatePod);
              return loginAsync.when(
                data: (data) => data.map(
                  initialLoginState: (p0) => ElevatedButton(
                    onPressed: () {
                      login();
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        backgroundColor: Colors.greenAccent),
                    child: const Text("Submit"),
                  ),
                  loadingState: (p0) => ElevatedButton(
                    onPressed: null,
                    style: ElevatedButton.styleFrom(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        backgroundColor: Colors.greenAccent),
                    child: const CircularProgressIndicator(),
                  ),
                  loadedState: (p0) => ElevatedButton(
                    onPressed: null,
                    style: ElevatedButton.styleFrom(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        backgroundColor: Colors.greenAccent),
                    child: const Text("Loging Success"),
                  ),
                  loagingErrorState: (p0) => ElevatedButton(
                    onPressed: () {
                      login();
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        backgroundColor: Colors.greenAccent),
                    child: const Text("Error"),
                  ),
                ),
                error: (error, stackTrace) => ElevatedButton(
                  onPressed: () {
                    login();
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      backgroundColor: Colors.greenAccent),
                  child: const Text("Error"),
                ),
                loading: () => ElevatedButton(
                  onPressed: null,
                  style: ElevatedButton.styleFrom(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      backgroundColor: Colors.greenAccent),
                  child: const CircularProgressIndicator(),
                ),
              );
            },
          )
        ]
            .vStack(
              crossAlignment: CrossAxisAlignment.center,
              alignment: MainAxisAlignment.center,
            )
            .p(20),
      ),
    );
  }
}

import 'package:boilerplate_login/features/presentation/widgets/container_button_widget.dart';
import 'package:boilerplate_login/features/presentation/widgets/header_widget.dart';
import 'package:boilerplate_login/features/presentation/widgets/textfield_container_widget.dart';
import 'package:boilerplate_login/features/presentation/widgets/textfield_password_container_widget.dart';
import 'package:boilerplate_login/features/presentation/widgets/theme/style.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 22),
          child: Column(
            children: [
              const HeaderWidget(title: "Login"),
              TextFieldContainerWidget(
                controller: _emailController,
                prefixIcon: Icons.email,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFieldPasswordContainerWidget(
                controller: _passwordController,
                prefixIcon: Icons.lock,
                keyboardType: TextInputType.visiblePassword,
              ),
              const SizedBox(
                height: 10,
              ),
              _forgotPasswordWidget(),
              const SizedBox(
                height: 10,
              ),
              ContainerButtonWidget(
                  title: "Login",
                  onTap: () {
                    print('login done!');
                  }),
              const SizedBox(
                height: 10,
              ),
              _rowTextWidget(),
              const SizedBox(
                height: 10,
              ),
              _rowGoogleWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _forgotPasswordWidget() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text(""),
      Text(
        "Forgot Password?",
        style: TextStyle(
          color: greenColor,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
    ],
  );
}

Widget _rowTextWidget() {
  return Row(
    children: [
      const Text('Not registered yet?'),
      InkWell(
        onTap: () {
          //FIXME: navigate to register page...
        },
        child: Text(
          'Register Now!',
          style: TextStyle(
            color: greenColor,
          ),
        ),
      )
    ],
  );
}

Widget _rowGoogleWidget() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      InkWell(
        onTap: (){
          //FIXME: google login...
        },
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.red,
          ),
          child: const Icon(
            Icons.g_mobiledata,
            color: Colors.white,
          ),
        ),
      )
    ],
  );
}

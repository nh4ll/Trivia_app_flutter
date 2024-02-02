import 'package:flutter/material.dart';

import '../../main.dart';
import '../../utils/colours/colors.dart';
import '../../utils/strings/strings.dart';
import 'signup_appbar.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  final FocusNode focusNodeEmail = FocusNode();
  final FocusNode focusNodePassword = FocusNode();
  final FocusNode focusNodeConfirmPassword = FocusNode();
  final TextEditingController controllerUsername = TextEditingController();
  final TextEditingController controllerEmail = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();
  // final TextEditingController controllerConFirmPassword = TextEditingController();
  bool obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;




    return Scaffold(
      appBar: buildAppBar(context),
      backgroundColor: isLightTheme ? Light.background : Dark.background,
      body: SizedBox(
        width: screenSize.width,
        height: screenSize.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenSize.height * .02,
              ),
              // Text In First Page
              Text(
                Signup.h1,
                style: TextStyle(
                    fontFamily: "Lato",
                    color: isLightTheme ? Light.text : Dark.text,
                    // color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 37),
              ),
              SizedBox(
                height: screenSize.height * .01,
              ),
              Text(
                Signup.h2,
                style: TextStyle(
                    fontFamily: "Lato",
                    color: isLightTheme ? Light.text : Dark.text,
                    fontWeight: FontWeight.bold,
                    fontSize: 21),
              ),
              SizedBox(
                height: screenSize.height * .03,
              ),
              TextFormField(
                controller: controllerUsername,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "Username",
                  prefixIcon: const Icon(Icons.person_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter username.";
                    // } else if (_boxAccounts.containsKey(value)) {
                    //   return "Username is already registered.";
                  }

                  return null;
                },
                onEditingComplete: () => focusNodeEmail.requestFocus(),
              ),
              SizedBox(
                height: screenSize.height * .01,
              ),
              TextFormField(
                controller: controllerEmail,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: const Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter email.";
                  } else if (!(value.contains('@') && value.contains('.'))) {
                    return "Invalid email";
                  }
                  return null;
                },
                onEditingComplete: () => focusNodeEmail.requestFocus(),
              ),
              SizedBox(
                height: screenSize.height * .01,
              ),TextFormField(
                controller: controllerPassword,
                obscureText: obscurePassword,
                focusNode: focusNodePassword,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: const Icon(Icons.password_outlined),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obscurePassword = !obscurePassword;
                        });
                      },
                      icon: obscurePassword
                          ? const Icon(Icons.visibility_outlined)
                          : const Icon(Icons.visibility_off_outlined)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter password.";
                  } else if (value.length < 8) {
                    return "Password must be at least 8 character.";
                  }
                  return null;
                },
                onEditingComplete: () =>
                    focusNodeConfirmPassword.requestFocus(),
              ),
              SizedBox(
                height: screenSize.height * .025,
              ),
              // const Spacer(),
              const Divider(
                color: Colors.black,
                indent: 10,
                endIndent: 10,
              ),
              SizedBox(
                height: screenSize.height * .015,
              ),
              const Center(child: Text(Signup.anotherOption,style:TextStyle(
                fontSize: 20
              )),),
              SizedBox(
                height: screenSize.height * .025,
              ),
              // I Have already an account/Create Account Button
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4.5, left: 4.5),
                    child: SizedBox(
                      // margin: EdgeInsets.only(top: screenSize.height * .04),
                      height: screenSize.height * .075,
                      width: screenSize.width * .95,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              isLightTheme ? Light.buttonLowerLayer : Dark.buttonLowerLayer),
                        ),
                        onPressed: () {},
                        child: const Text(''),
                      ),
                    ),
                  ),
                  SizedBox(
                    // margin: EdgeInsets.only(top: screenSize.height * .04),
                    height: screenSize.height * .075,
                    width: screenSize.width * .95,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            isLightTheme ? Light.buttonUpperLayer : Dark.buttonUpperLayer),
                      ),
                      onPressed: () {},
                      child: Text(
                        Signup.continueWithGoogle,
                        style: TextStyle(
                            color: isLightTheme ? Light.text : Dark.text),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenSize.height * .015,
              ),
              // Stack(
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.only(top: 4.5, left: 4.5),
              //       child: SizedBox(
              //         // margin: EdgeInsets.only(top: screenSize.height * .04),
              //         height: screenSize.height * .075,
              //         width: screenSize.width * .95,
              //         child: ElevatedButton(
              //             style: ButtonStyle(
              //               backgroundColor: MaterialStateProperty.all<Color>(
              //                   isLightTheme ? Light.buttonLowerLayer : Dark.buttonLowerLayer),
              //             ),
              //             onPressed: () {},
              //             child: const Text('')),
              //       ),
              //     ),
              //     SizedBox(
              //       // margin: EdgeInsets.only(top: screenSize.height * .04),
              //       height: screenSize.height * .075,
              //       width: screenSize.width * .95,
              //       child: ElevatedButton(
              //         style: ButtonStyle(
              //           backgroundColor: MaterialStateProperty.all<Color>(
              //               isLightTheme ? Light.buttonUpperLayer : Dark.buttonUpperLayer),
              //         ),
              //         onPressed: () {},
              //         child: Text(
              //           "SignupEX.getStarted",
              //           style: TextStyle(
              //               color: isLightTheme ? Light.text : Dark.text),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),

              SizedBox(
                height: screenSize.height * .1,
              ),
            ],
          ),
        ),
      ),
    );
  }
      @override
  void dispose() {
    focusNodeEmail.dispose();
    focusNodePassword.dispose();
    focusNodeConfirmPassword.dispose();
    controllerUsername.dispose();
    controllerEmail.dispose();
    controllerPassword.dispose();
    super.dispose();
  }
}

// import 'package:flutter/material.dart';
// import 'package:lbh_accounts/utils/const/provider/login_signupEX/signupEX_provider.dart';
// import 'package:provider/provider.dart';
// import 'package:hive_flutter/hive_flutter.dart';

class SignupEX extends StatefulWidget {
  const SignupEX({super.key});

  @override
  State<SignupEX> createState() => _SignupEXState();
}

class _SignupEXState extends State<SignupEX> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  final FocusNode _focusNodeEmail = FocusNode();
  final FocusNode _focusNodePassword = FocusNode();
  final FocusNode _focusNodeConfirmPassword = FocusNode();
  final TextEditingController _controllerUsername = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  final TextEditingController _controllerConFirmPassword = TextEditingController();

  // final Box _boxAccounts = Hive.box("accounts");
  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              const SizedBox(height: 100),
              Text(
                "Register",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 10),
              Text(
                "Create your account",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 35),
              TextFormField(
                controller: _controllerUsername,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "Username",
                  prefixIcon: const Icon(Icons.person_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter username.";
                    // } else if (_boxAccounts.containsKey(value)) {
                    //   return "Username is already registered.";
                  }

                  return null;
                },
                onEditingComplete: () => _focusNodeEmail.requestFocus(),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _controllerEmail,
                focusNode: _focusNodeEmail,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: const Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter email.";
                  } else if (!(value.contains('@') && value.contains('.'))) {
                    return "Invalid email";
                  }
                  return null;
                },
                onEditingComplete: () => _focusNodePassword.requestFocus(),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _controllerPassword,
                obscureText: obscurePassword,
                focusNode: _focusNodePassword,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: const Icon(Icons.password_outlined),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obscurePassword = !obscurePassword;
                        });
                      },
                      icon: obscurePassword
                          ? const Icon(Icons.visibility_outlined)
                          : const Icon(Icons.visibility_off_outlined)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter password.";
                  } else if (value.length < 8) {
                    return "Password must be at least 8 character.";
                  }
                  return null;
                },
                onEditingComplete: () =>
                    _focusNodeConfirmPassword.requestFocus(),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _controllerConFirmPassword,
                obscureText: obscurePassword,
                focusNode: _focusNodeConfirmPassword,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  prefixIcon: const Icon(Icons.password_outlined),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obscurePassword = !obscurePassword;
                        });
                      },
                      icon: obscurePassword
                          ? const Icon(Icons.visibility_outlined)
                          : const Icon(Icons.visibility_off_outlined)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter password.";
                  } else if (value != _controllerPassword.text) {
                    return "Password doesn't match.";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 50),
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        // _boxAccounts.put(
                        //   _controllerUsername.text,
                        //   _controllerConFirmPassword.text,
                        // );
                        // context.read<SignupEXProvider>().createAccWithEmailPass(
                        //       _controllerUsername.text,
                        //       _controllerPassword.text,
                        //     );
                        // .then((_) => Navigator.pushReplacementNamed(context, "/login"))

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            width: 200,
                            backgroundColor:
                                Theme.of(context).colorScheme.secondary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            behavior: SnackBarBehavior.floating,
                            content: const Text("Registered Successfully"),
                          ),
                        );

                        _formKey.currentState?.reset();

                        Navigator.pop(context);
                      }
                    },
                    child: const Text("Register"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account?"),
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text("Login"),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _focusNodeEmail.dispose();
    _focusNodePassword.dispose();
    _focusNodeConfirmPassword.dispose();
    _controllerUsername.dispose();
    _controllerEmail.dispose();
    _controllerPassword.dispose();
    _controllerConFirmPassword.dispose();
    super.dispose();
  }
}
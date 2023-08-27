import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Practice Of Widgets'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Stack(children: [
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1683009427590-dd987135e66c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80'),
                            fit: BoxFit.cover),
                        border: Border.all(color: Colors.lightBlue, width: 1),
                        boxShadow: const [
                          BoxShadow(color: Colors.lightBlue, blurRadius: 10)
                        ]),
                    child: const Center(
                      child: Text(
                        "Wrapped Text OF CONTAINER 1 By Container 2.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.red.shade200,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          image: const DecorationImage(
                              image: AssetImage('images/logo.png'),
                              fit: BoxFit.cover),
                          border: Border.all(
                              color: const Color.fromARGB(255, 144, 79, 117),
                              width: 1),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(255, 144, 79, 117),
                                blurRadius: 10)
                          ]),
                      child: const Expanded(
                        child: CircleAvatar(
                          radius: 100,
                          backgroundImage: AssetImage('images/logo.png'),
                        ),
                      )),
                ]),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: RichText(
                    text: TextSpan(
                        text: 'Dont have an account?  ',
                        style: Theme.of(context).textTheme.bodyMedium,
                        children: const [
                      TextSpan(
                          text: 'Sign up ',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                    ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

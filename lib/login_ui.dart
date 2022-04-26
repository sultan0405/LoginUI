import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class LoginView extends StatefulWidget {
  LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(children: [
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        child: Image.asset('top.png', height: 320, )),
                      Positioned(
                        left:0,
                        child: Container(
                          margin: EdgeInsets.only(left: 15,top: 30),
                          width: 160,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(child: Image.asset('_logo.png',),
                              ),
                              Expanded(child: Text('Logo', style: Theme.of(context).textTheme.headline4,))
                            ],
                          ),
                        ),
                      ),
              
                      Positioned(
                        top:200,
                        child: Container(
                          width:MediaQuery.of(context).size.width ,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 320,
                                height: 220,
                                decoration: BoxDecoration(
                                color: Colors.white24,
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:  [
                                     Text('Login', style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.w600,color: Color.fromARGB(255, 12, 61, 100))),
                                    const TextField(
                                      decoration: InputDecoration(
                                        labelText: 'Email',
                                        contentPadding: EdgeInsets.symmetric(horizontal: 10)
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 15),
                                      child: const TextField(
                                        decoration: InputDecoration(
                                          labelText: 'Password',
                                          focusColor: Colors.white,
                                          contentPadding: EdgeInsets.symmetric(horizontal: 10)
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:5.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children:[
                                         TextButton(
                                          onPressed: (){}, child: const Text('Forgot password?')),
                                        ]
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // 
            ]),
          ),
        ),
      )
    );
  }
}
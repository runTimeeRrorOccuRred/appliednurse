import 'package:applied_nurse/utils/button_component.dart';
import 'package:applied_nurse/utils/utils.dart';
import 'package:flutter/material.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState createState() => _HomePageState();
}


class _HomePageState extends ConsumerState<HomePage> {
  bool value=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: AppSizes.p60),
              child: Align(
                alignment: Alignment.topCenter,
                  child: Image.asset('assets/images/applied_nurse_logo_1.5x.png'),),
            ),
           const SizedBox(height: AppSizes.p20,
            ),
            Align(
                alignment: Alignment.topCenter,
                child: Image.asset('assets/images/welcome_1x.png'),),
           const SizedBox(height: AppSizes.p40,),
           Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: AppSizes.p14,right: AppSizes.p14),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle:const TextStyle(fontSize: AppSizes.p20,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey,),
                            borderRadius: BorderRadius.circular(18)
                        ,),
                        hintText: "Enter Your Email Address",
                        hintStyle:const TextStyle(fontSize: AppSizes.p24),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: TextFormField(
                    obscureText: true,

                    decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.remove_red_eye,
                          size: AppSizes.p32,),

                        labelText: "Password",
                        labelStyle: const TextStyle(fontSize: AppSizes.p20,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey,),
                            borderRadius: BorderRadius.circular(AppSizes.p20),
                        ),
                        hintText: "Enter Your Password",
                        hintStyle: const TextStyle(fontSize: AppSizes.p24),
                    ),
                  ),
                ),
                const SizedBox(height: AppSizes.p14,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          checkColor: royalBlue,
                          value: value, onChanged: (value)=>
                        setState(() {
                          this.value=value!;
                        })
                        ,),
                       const Text('Remember me',style: TextStyle(color: Colors.black,
                        fontSize: AppSizes.p24,),)
                      ,],
                    ),
                   const Padding(
                      padding: EdgeInsets.only(right: AppSizes.p14),
                      child: Text('Forgot Password?',
                      style: TextStyle(fontSize: AppSizes.p24,color: royalBlue
                      ,),),
                    )
                  ,],
                ),
                const SizedBox(height: AppSizes.p14,),
                CustomButtonComponent(text: "Login",),
                const SizedBox(height: AppSizes.p32,),
                // RichText(
                //     textAlign: TextAlign.center,
                //     textDirection: TextDirection.rtl,
                //     maxLines: 1,
                //     text: TextSpan(text: 'Dont have an account?',
                //     children: [
                //       TextSpan(text: 'Register')
                //     ]))
                Center(
                    child: InkWell(
                      onTap: (){
                       // context.pushNamed(AppRoute.signUp.name);
                      },
                      child: RichText(
                        textAlign: TextAlign.end,
                        textDirection: TextDirection.ltr,
                        maxLines: 1,
                        text: const TextSpan(
                          text: "Don't have an account?  ",
                          style: TextStyle(color: Colors.black,
                          fontSize: AppSizes.p20,),
                          children: [
                            TextSpan(
                                text: 'Register', style: TextStyle(color: royalBlue),),
                          ],
                        ),
                      ),
                    ),),

              ],
           ),
          ],
        ),
      ),
    );
  }
}

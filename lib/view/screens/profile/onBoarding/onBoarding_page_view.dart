// ignore: file_names
import 'package:applied_nurse/utils/utils.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends ConsumerStatefulWidget {
  const OnBoardingPage({super.key});

  @override
  ConsumerState<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends ConsumerState<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kGrey.withOpacity(0.18),
        title: const Text(
          "OnBoarding",
          style: TextStyle(color: richBalck, fontSize: 22),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            mainAxisSpacing: 20,
            crossAxisSpacing: 16,
          ),
          itemCount: 10,
          itemBuilder: (context, index) {
            return DecoratedBox(
              // height: 500,
              decoration: BoxDecoration(
                //  color: rowColumnColor
                border: Border.all(color: kGrey),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    'assets/images/rect_image.png',
                    //fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/circle_image.png',
                    //fit: BoxFit.cover,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 6),
                    height: 1,
                    color: royalBlue,
                  ),
                  const Spacer(),
                  Container(
                    decoration: const BoxDecoration(
                      color: rowColumnColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Deposite Form',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              color: richBalck,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Text(
                          "Open July 14,2024",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: Color(0xFF808080), fontSize: 12,),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class ShimmerEffect extends StatelessWidget {
  // final double top;
  // final double bottom;
  // final double left;
  // final double right;
  final double width;
  final double height;
  const ShimmerEffect({required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppSizes.p6),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: kBlack.withOpacity(0.1),
          borderRadius: BorderRadius.circular(AppSizes.p16),
        ),
        //child: Text("jfhe"),
      ),
    );
  }
}

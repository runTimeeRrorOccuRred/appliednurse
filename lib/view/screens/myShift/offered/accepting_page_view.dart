import 'package:applied_nurse/utils/button_component.dart';
import 'package:applied_nurse/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AcceptingPage extends ConsumerStatefulWidget {
  const AcceptingPage({super.key});

  @override
  ConsumerState<AcceptingPage> createState() => _AcceptingPageState();
}

class _AcceptingPageState extends ConsumerState<AcceptingPage> {
  String dropDownValue = 'Why do you want a call out?';

  int index = 0;

  List<String> items = [
    'Why do you want a call out?',
    'Option 1',
    'Option 2',
    'Others',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhite,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: AppSizes.p20,
            top: AppSizes.p50,
            right: AppSizes.p20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: AppSizes.p12,
              ),
              SizedBox(
                width: AppSizes.p60,
                height: AppSizes.p60,
                child: Image.asset(
                  'assets/images/apollo_logo1.5x.png',
                ),
              ),
              const SizedBox(
                height: AppSizes.p12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nurse Required",
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: kBlack,
                              fontSize: AppSizes.p16,
                              fontWeight: FontWeight.w500,),),),
                  const SizedBox(
                    height: AppSizes.p4,
                  ),
                  Text(
                    "Apollo Hospital",
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: AppSizes.p14,
                            fontWeight: FontWeight.w500,),),
                  ),
                  const SizedBox(
                    height: AppSizes.p16,
                  ),
                  Text("About Company",
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: kBlack,
                              fontSize: AppSizes.p16,
                              fontWeight: FontWeight.w500,),),),
                  const SizedBox(
                    height: AppSizes.p4,
                  ),
                  Text(
                    "Lorem ipsum dolor "
                    "sit amet consectetur. Risus orci etiam "
                    "purus nisi eros faucibus. Sollicitudin "
                    "tempor nulla donec phasellus purus sed "
                    "sed at sit. In sed rhoncus quis enim amet "
                    "adipiscing libero vel. Vitae"
                    " mauris a id aliquam.",
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: AppSizes.p14,
                            fontWeight: FontWeight.w500,),),
                  ),
                  const SizedBox(
                    height: AppSizes.p12,
                  ),
                  Text(
                    "Shift Rate",
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: kBlack,
                            fontSize: AppSizes.p16,
                            fontWeight: FontWeight.w500,),),
                  ),
                  const SizedBox(
                    height: AppSizes.p12,
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: AppSizes.p10,
                      right: AppSizes.p10,
                      top: AppSizes.p6,
                      bottom: AppSizes.p6,
                    ),
                    decoration: BoxDecoration(
                      color: royalBlue.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Text(
                      "\$446.00/hr",
                      style: TextStyle(color: royalBlue),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.p20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Shift Time & Schedule",
                        style: TextStyle(color: richBalck),
                      ),
                      const SizedBox(
                        height: AppSizes.p12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                              left: AppSizes.p14,
                              top: AppSizes.p12,
                              bottom: AppSizes.p12,
                              right: 55,
                            ),
                            decoration: BoxDecoration(
                              color: success.withOpacity(0.08),
                              borderRadius: BorderRadius.circular(AppSizes.p10),
                              border: Border.all(
                                color: success,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.access_time_filled,
                                      color: success,
                                    ),
                                    SizedBox(
                                      width: AppSizes.p8,
                                    ),
                                    Text(
                                      'Shift Start',
                                      style: TextStyle(color: richBalck),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: AppSizes.p4,
                                ),
                                Text("12:00 PM",
                                    style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                            color: Colors.grey.shade800,
                                            fontSize: AppSizes.p16,
                                            fontWeight: FontWeight.w500,),),),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: AppSizes.p3),
                            padding: const EdgeInsets.only(
                              left: AppSizes.p14,
                              top: AppSizes.p12,
                              bottom: AppSizes.p12,
                              right: 65,
                            ),
                            decoration: BoxDecoration(
                              color: redColor.withOpacity(0.08),
                              borderRadius: BorderRadius.circular(AppSizes.p10),
                              border: Border.all(
                                color: redColor,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.access_time_filled,
                                      color: redColor,
                                    ),
                                    SizedBox(
                                      width: AppSizes.p8,
                                    ),
                                    Text(
                                      'Shift End',
                                      style: TextStyle(color: richBalck),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: AppSizes.p4,
                                ),
                                Text("19:00 PM",
                                    style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                            color: Colors.grey.shade800,
                                            fontSize: AppSizes.p16,
                                            fontWeight: FontWeight.w500,),),),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: AppSizes.p16,
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          top: AppSizes.p10,
                          left: AppSizes.p16,
                          right: AppSizes.p4,
                          bottom: AppSizes.p16,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: kGrey,
                          ),
                          borderRadius: BorderRadius.circular(AppSizes.p10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Shift Type',
                              style: TextStyle(color: richBalck),
                            ),
                            const SizedBox(
                              height: AppSizes.p10,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                    left: AppSizes.p10,
                                    right: AppSizes.p10,
                                    top: AppSizes.p6,
                                    bottom: AppSizes.p6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: royalBlue.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.business_center_sharp,
                                        color: royalBlue,
                                      ),
                                      const SizedBox(
                                        width: AppSizes.p6,
                                      ),
                                      Text(
                                        "Night Shift",
                                        style: GoogleFonts.montserrat(
                                            textStyle: const TextStyle(
                                                color: royalBlue,
                                                fontSize: AppSizes.p14,
                                                fontWeight: FontWeight.w500,),),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: AppSizes.p10,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                    left: AppSizes.p10,
                                    right: AppSizes.p10,
                                    top: AppSizes.p6,
                                    bottom: AppSizes.p6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: royalBlue.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.location_on,
                                        color: royalBlue,
                                      ),
                                      const SizedBox(
                                        width: AppSizes.p6,
                                      ),
                                      Text(
                                        "Kolkata,West Bnegal",
                                        style: GoogleFonts.montserrat(
                                            textStyle: const TextStyle(
                                                color: royalBlue,
                                                fontSize: AppSizes.p14,
                                                fontWeight: FontWeight.w500,),),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: AppSizes.p10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                    left: AppSizes.p10,
                                    right: AppSizes.p10,
                                    top: AppSizes.p6,
                                    bottom: AppSizes.p6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: royalBlue.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.location_on,
                                        color: royalBlue,
                                      ),
                                      const SizedBox(
                                        width: AppSizes.p6,
                                      ),
                                      Text(
                                        "5 km",
                                        style: GoogleFonts.montserrat(
                                            textStyle: const TextStyle(
                                                color: royalBlue,
                                                fontSize: AppSizes.p14,
                                                fontWeight: FontWeight.w500,),),
                                      ),
                                    ],
                                  ),
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      "Get Direction",
                                      style: TextStyle(
                                        color: royalBlue,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: royalBlue,
                                      size: 15,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: AppSizes.p16,
                  ),
                  const SizedBox(
                    height: AppSizes.p20,
                  ),
                  CustomButtonComponent(
                    text: 'Accept',
                    blueButton: true,
                    onTap: () => showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return StatefulBuilder(
                          builder: (context, set) {
                            return Container(
                              color: kWhite,
                              padding: const EdgeInsets.only(top: AppSizes.p40),
                              height: (index == 3) ? 600 : 240,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: AppSizes.p14,
                                        right: AppSizes.p14,),
                                    child: DropdownButtonFormField(
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          //<-- SEE HERE
                                          borderSide: BorderSide(
                                            color: Colors.grey.withOpacity(0.8),
                                          ),
                                          borderRadius: BorderRadius.circular(
                                              AppSizes.p10,),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          //<-- SEE HERE
                                          borderSide: const BorderSide(
                                              color: Colors.grey,),
                                          borderRadius: BorderRadius.circular(
                                              AppSizes.p10,),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                      ),
                                      value: dropDownValue,
                                      icon:
                                          const Icon(Icons.keyboard_arrow_down),
                                      items: items.map((String dataItem) {
                                        return DropdownMenuItem(
                                          value: dataItem,
                                          child: Text(
                                            dataItem,
                                            style: const TextStyle(
                                                fontSize: AppSizes.p14,),
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: (String? newValue) {
                                        set(() {
                                          dropDownValue = newValue!;
                                          index = items.indexOf(dropDownValue);
                                          print(index);
                                        });
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    height: AppSizes.p16,
                                  ),

                                  if (index == 1)
                                    Column(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: AppSizes.p16,),
                                          child: Text(
                                            "By submitting this call out you have"
                                            " confirmed that you have also"
                                            "informed the facility of the call out.",
                                            style: TextStyle(color: richBalck),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: AppSizes.p20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  left: AppSizes.p16,),
                                              width: 190,
                                              height: 40,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            AppSizes.p10,),
                                                  ),
                                                  backgroundColor: Colors.white
                                                      .withOpacity(0.8),
                                                ),
                                                child: const Text(
                                                  "Cancel",
                                                  style: TextStyle(
                                                      color: Colors.black,),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  right: AppSizes.p12,),
                                              width: 190,
                                              height: 40,
                                              child: ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            AppSizes.p10,),
                                                  ),
                                                  backgroundColor:
                                                      royalBlue.withOpacity(1),
                                                ),
                                                child: const Text(
                                                  "Submit",
                                                  style: TextStyle(
                                                      color: Colors.white,),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  else
                                    (index == 3)
                                        ? Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: AppSizes.p14,
                                                    right: AppSizes.p14,),
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color: kGrey,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              AppSizes.p10,),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color: kGrey,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              AppSizes.p10,),
                                                    ),
                                                    hintText:
                                                        'Enter your reason here...',
                                                  ),
                                                  maxLines: 6,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: AppSizes.p16,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                  left: AppSizes.p16,
                                                  right: AppSizes.p10,
                                                ),
                                                child: Text(
                                                  textAlign: TextAlign.start,
                                                  "By submitting this call out you have"
                                                  " confirmed that you have also"
                                                  "informed the facility of the call out.",
                                                  style:
                                                      TextStyle(color: kGrey),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: AppSizes.p28,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: AppSizes.p14,),
                                                    width: 195,
                                                    height: 40,
                                                    child: ElevatedButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      AppSizes
                                                                          .p10,),
                                                        ),
                                                        backgroundColor: kWhite,
                                                      ),
                                                      child: const Text(
                                                        "Cancel",
                                                        style: TextStyle(
                                                            color: kBlack,),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right:
                                                                AppSizes.p12,),
                                                    width: 195,
                                                    height: 40,
                                                    child: ElevatedButton(
                                                      onPressed: () {},
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      AppSizes
                                                                          .p10,),
                                                        ),
                                                        backgroundColor:
                                                            royalBlue,
                                                      ),
                                                      child: const Text(
                                                        "Submit",
                                                        style: TextStyle(
                                                            color: kWhite,),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          )
                                        : Container(),
                                  // dropDownValue.toLowerCase()=="others".toLowerCase()?
                                  // TextFormField():Container()
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.p16,
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (value) => AlertDialog(
                          backgroundColor: kWhite,
                          title: Column(
                            children: [
                              Image.asset("assets/images/declineshift.png"),
                              const SizedBox(
                                height: AppSizes.p16,
                              ),
                              Text(
                                "Decline Shift",
                                style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 22,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: AppSizes.p6,
                              ),
                              Text(
                                "Are you sure you want to decline?\n"
                                "This action can not be undone.",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: kGrey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // content: Builder(builder: (context)
                          //   {
                          //     return Container(
                          //      width: MediaQuery.of(context).size.width-400,
                          //       height: MediaQuery.of(context).size.height-400,
                          //     );
                          //   },),
                          content: const SizedBox(
                            width: 100,
                          ),
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {
                                    context.pop();
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey.shade300,),
                                      borderRadius: BorderRadius.circular(10),
                                      color:
                                          Colors.grey.shade400.withOpacity(0.2),
                                    ),
                                    width: 110,
                                    height: AppSizes.p40,
                                    child: const Center(
                                      child: Text(
                                        "Cancel",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: AppSizes.p16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    context.pop();
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.red),
                                      borderRadius: BorderRadius.circular(10),
                                      color: HexColor('#EA3333'),
                                    ),
                                    width: 110,
                                    height: AppSizes.p40,
                                    child: const Center(
                                      child: Text(
                                        "Decline",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: AppSizes.p16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black54,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade200,
                      ),
                      width: MediaQuery.of(context).size.width * 0.93,
                      height: AppSizes.p54,
                      child: const Center(
                        child: Text(
                          "Decline",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: AppSizes.p14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: AppSizes.p10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

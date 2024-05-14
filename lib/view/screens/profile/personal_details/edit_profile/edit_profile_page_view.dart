import 'package:applied_nurse/utils/button_component.dart';
import 'package:applied_nurse/utils/utils.dart';
import 'package:applied_nurse/view/screens/profile/personal_details/edit_profile/custom_text_field.dart';
import 'package:applied_nurse/view/screens/profile/personal_details/edit_profile/edit_profile_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';

class EditProfilePage extends ConsumerStatefulWidget {
  const EditProfilePage({super.key});

  @override
  ConsumerState<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends ConsumerState<EditProfilePage> {
  final dobController = TextEditingController();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();
  bool showIcon = true;
  late ImageFileDataModel _viewModel;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
    _viewModel = ref.read(imageFileDataModel);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  color: kGrey.withOpacity(0.18),
                ),
                width: MediaQuery.of(context).size.width,
                height: 180,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: AppSizes.p50,
                        left: AppSizes.p16,
                      ),
                      child: InkWell(
                        onTap: () {
                          context.pop();
                        },
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          color: richBalck,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 95,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: AppSizes.p40),
                      child: Text(
                        "Edit Profile",
                        style: TextStyle(
                          color: richBalck,
                          fontSize: AppSizes.p24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: Padding(
                    padding:
                        const EdgeInsets.only(top: 100, left: AppSizes.p20),
                    child: CircleAvatar(
                        backgroundColor: kWhite,
                        maxRadius: 52,
                        child:

                            //  ClipPath(
                            //   clipper:
                            //       const ShapeBorderClipper(shape: CircleBorder()),
                            //   clipBehavior: Clip.hardEdge,
                            //   child:
                            //       (ref.watch(imageFileDataModel).imageFile != null)
                            //           ? Image.file(
                            //               ref.watch(imageFileDataModel).imageFile!)
                            //           : Image.asset('images/newimage.png'),
                            // ))

                            //     ClipRRect(
                            //   borderRadius: BorderRadius.circular(500),
                            //   child: ref.watch(imageFileDataModel).imageFile != null
                            //       ? Image.file(
                            //           ref.watch(imageFileDataModel).imageFile!,
                            //           fit: BoxFit.cover,
                            //         )
                            //       : SizedBox(),
                            // )
                            // ),

                            CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 52,
                          backgroundImage:
                              (ref.watch(imageFileDataModel).imageFile != null)
                                  ? Image.file(
                                      ref.watch(imageFileDataModel).imageFile!,
                                      fit: BoxFit.cover,
                                    ).image
                                  : Image.asset(
                                      'assets/icons/person_icon.png',
                                      fit: BoxFit.contain,
                                    ).image,
                        ))),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 120),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Michael Mitc",
                        style: blackTextColor.copyWith(fontSize: AppSizes.p20),
                      ),
                      const Text(
                        "Position: Nurse",
                        style: blackTextColor,
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _viewModel.imageFileData();
                },
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 100,
                    top: 170,
                  ),
                  // alignment: Alignment.bottomCenter,
                  child: const CircleAvatar(
                    maxRadius: 12,
                    backgroundColor: royalBlue,
                    child: Icon(
                      Icons.photo_camera_rounded,
                      size: AppSizes.p16,
                      color: kWhite,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: AppSizes.p20,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextField(
                    controller: _nameController,
                    labelText: "Full Name",
                  ),

                  const SizedBox(
                    height: AppSizes.p16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: GestureDetector(
                      onTap: () async {
                        DateTime? date = DateTime(1900);
                        date = await showDatePicker(
                          builder: (context, child) {
                            return Theme(
                              data: Theme.of(context).copyWith(
                                colorScheme: const ColorScheme.light(
                                  primary: royalBlue,
                                ),
                              ),
                              child: child!,
                            );
                          },
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100),
                        );
                        if (date != null) {
                          final String formattedDate =
                              DateFormat('dd-MM-yyyy').format(date);
                          print(formattedDate);
                          setState(() {
                            dobController.text = formattedDate;
                          });
                        } else {
                          print("Not Selected");
                        }
                      },
                      child: TextFormField(
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            color: richBalck,
                            fontSize: AppSizes.p14,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        enabled: false,
                        //enableInteractiveSelection: true,
                        keyboardType: TextInputType.datetime,
                        //enabled: true,
                        controller: dobController,
                        cursorColor: royalBlue,

                        decoration: InputDecoration(
                          suffixIcon: const Icon(
                            Icons.calendar_month,
                            color: Color(0xFF808080),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: kGrey),
                            borderRadius: BorderRadius.circular(AppSizes.p10),
                          ),
                          labelText: "Date of birth",
                          labelStyle: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              color: richBalck,
                              fontSize: AppSizes.p14,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: royalBlue,
                            ),
                            borderRadius: BorderRadius.circular(AppSizes.p10),
                          ),
                          hintStyle: const TextStyle(
                            fontSize: AppSizes.p14,
                            color: royalBlue,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.p20,
                  ),

                  CustomTextField(
                    controller: _addressController,
                    labelText: "Address",
                  ),
                  const SizedBox(
                    height: AppSizes.p20,
                  ),

                  CustomTextField(
                    controller: _emailController,
                    labelText: "Email Address",
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: AppSizes.p20,
                  ),

                  CustomTextField(
                    controller: _phoneController,
                    labelText: "Phone Number",
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Emergency Contact Details',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: royalBlue,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Please provide emergency contact person details',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF4F4F4F),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                      ],
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //     left: AppSizes.p14,
                  //     right: AppSizes.p14,
                  //   ),
                  //   child: TextFormField(
                  //     autocorrect: false,
                  //     enableSuggestions: false,
                  //     style: GoogleFonts.montserrat(
                  //       textStyle: const TextStyle(
                  //         color: richBalck,
                  //         fontSize: AppSizes.p14,
                  //         fontWeight: FontWeight.w400,
                  //         decoration: TextDecoration.none,
                  //       ),
                  //     ),
                  //     // style: TextStyle(fontFamily: 'Montserrat', color: Colors.black, fontWeight: FontWeight.bold),
                  //     decoration: InputDecoration(
                  //       prefixIcon: const Icon(
                  //         Icons.location_on,
                  //         color: royalBlue,
                  //         size: AppSizes.p24,
                  //       ),
                  //       labelText: "Name",
                  //       labelStyle: GoogleFonts.montserrat(
                  //         textStyle: const TextStyle(
                  //           color: richBalck,
                  //           fontSize: AppSizes.p14,
                  //           fontWeight: FontWeight.w400,
                  //           decoration: TextDecoration.none,
                  //         ),
                  //       ),
                  //       enabledBorder: OutlineInputBorder(
                  //         borderSide: const BorderSide(color: kGrey),
                  //         borderRadius: BorderRadius.circular(AppSizes.p10),
                  //       ),
                  //       focusedBorder: OutlineInputBorder(
                  //         borderSide: const BorderSide(
                  //           color: royalBlue,
                  //         ),
                  //         borderRadius: BorderRadius.circular(AppSizes.p10),
                  //       ),
                  //       hintText: "Jenny Wilson",
                  //       hintStyle: GoogleFonts.montserrat(
                  //         textStyle: const TextStyle(
                  //           color: richBalck,
                  //           fontSize: AppSizes.p14,
                  //           fontWeight: FontWeight.w400,
                  //           decoration: TextDecoration.none,
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  CustomTextField(
                    controller: _nameController,
                    labelText: "Name",
                  ),
                  gapH16,
                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //     left: AppSizes.p14,
                  //     right: AppSizes.p14,
                  //   ),
                  //   child: TextFormField(
                  //     autocorrect: false,
                  //     enableSuggestions: false,
                  //     style: GoogleFonts.montserrat(
                  //       textStyle: const TextStyle(
                  //         color: richBalck,
                  //         fontSize: AppSizes.p14,
                  //         fontWeight: FontWeight.w400,
                  //         decoration: TextDecoration.none,
                  //       ),
                  //     ),
                  //     // style: TextStyle(fontFamily: 'Montserrat', color: Colors.black, fontWeight: FontWeight.bold),
                  //     decoration: InputDecoration(
                  //       prefixIcon: const Icon(
                  //         Icons.location_on,
                  //         color: royalBlue,
                  //         size: AppSizes.p24,
                  //       ),
                  //       labelText: "Reltionship",
                  //       labelStyle: GoogleFonts.montserrat(
                  //         textStyle: const TextStyle(
                  //           color: richBalck,
                  //           fontSize: AppSizes.p14,
                  //           fontWeight: FontWeight.w400,
                  //           decoration: TextDecoration.none,
                  //         ),
                  //       ),
                  //       enabledBorder: OutlineInputBorder(
                  //         borderSide: const BorderSide(color: kGrey),
                  //         borderRadius: BorderRadius.circular(AppSizes.p10),
                  //       ),
                  //       focusedBorder: OutlineInputBorder(
                  //         borderSide: const BorderSide(
                  //           color: royalBlue,
                  //         ),
                  //         borderRadius: BorderRadius.circular(AppSizes.p10),
                  //       ),
                  //       hintText: "Mother",
                  //       hintStyle: GoogleFonts.montserrat(
                  //         textStyle: const TextStyle(
                  //           color: richBalck,
                  //           fontSize: AppSizes.p14,
                  //           fontWeight: FontWeight.w400,
                  //           decoration: TextDecoration.none,
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  CustomTextField(
                    controller: _addressController,
                    labelText: "Relationship",
                    // prefixIcon: const Icon(Icons.location_city,
                    // color: royalBlue,
                    // size: AppSizes.p24,
                    // ),
                  ),
                  gapH16,
                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //     left: AppSizes.p14,
                  //     right: AppSizes.p14,
                  //   ),
                  //   child: TextFormField(
                  //     autocorrect: false,
                  //     enableSuggestions: false,
                  //     style: GoogleFonts.montserrat(
                  //       textStyle: const TextStyle(
                  //         color: richBalck,
                  //         fontSize: AppSizes.p14,
                  //         fontWeight: FontWeight.w400,
                  //         decoration: TextDecoration.none,
                  //       ),
                  //     ),
                  //     // style: TextStyle(fontFamily: 'Montserrat', color: Colors.black, fontWeight: FontWeight.bold),
                  //     decoration: InputDecoration(
                  //       prefixIcon: const Icon(
                  //         Icons.location_on,
                  //         color: royalBlue,
                  //         size: AppSizes.p24,
                  //       ),
                  //       labelText: "Phone Number",
                  //       labelStyle: GoogleFonts.montserrat(
                  //         textStyle: const TextStyle(
                  //           color: richBalck,
                  //           fontSize: AppSizes.p14,
                  //           fontWeight: FontWeight.w400,
                  //           decoration: TextDecoration.none,
                  //         ),
                  //       ),
                  //       enabledBorder: OutlineInputBorder(
                  //         borderSide: const BorderSide(color: kGrey),
                  //         borderRadius: BorderRadius.circular(AppSizes.p10),
                  //       ),
                  //       focusedBorder: OutlineInputBorder(
                  //         borderSide: const BorderSide(
                  //           color: royalBlue,
                  //         ),
                  //         borderRadius: BorderRadius.circular(AppSizes.p10),
                  //       ),
                  //       hintText: "+123 9280000030",
                  //       hintStyle: GoogleFonts.montserrat(
                  //         textStyle: const TextStyle(
                  //           color: richBalck,
                  //           fontSize: AppSizes.p14,
                  //           fontWeight: FontWeight.w400,
                  //           decoration: TextDecoration.none,
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  CustomTextField(
                    controller: _phoneController,
                    labelText: "Phone Number",
                    // prefixIcon: const Icon(Icons.location_city,
                    // color: royalBlue,
                    // size: AppSizes.p24,
                    // ),
                    keyboardType: TextInputType.number,
                  ),

                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 16),

            //alignment: Alignment.bottomCenter,
            child: Center(
              child: CustomButtonComponent(
                text: 'Update',
                blueButton: true,
                onTap: () {
                  context.pop();
                  context.pop();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

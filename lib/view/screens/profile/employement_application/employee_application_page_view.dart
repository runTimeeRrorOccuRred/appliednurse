// ignore_for_file: avoid_print

import 'dart:io';

import 'package:applied_nurse/utils/button_component.dart';
import 'package:applied_nurse/utils/utils.dart';
import 'package:applied_nurse/view/screens/profile/employement_application/widgets/textformfield_widget.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';
import 'package:signature/signature.dart';

class EmployeeApplicationPage extends ConsumerStatefulWidget {
  const EmployeeApplicationPage({super.key});

  @override
  ConsumerState<EmployeeApplicationPage> createState() =>
      _EmployeeApplicationPageState();
}

class _EmployeeApplicationPageState
    extends ConsumerState<EmployeeApplicationPage> {
  File? file;
  int index = 0;
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  String dropDownValue = 'Select your job position';
  bool customIcon = false;
  final dobController = TextEditingController();
  List<String> items = [
    'Select your job position',
    'Option 1',
    'Option 2',
    'Others',
  ];
  SignatureController controller = SignatureController(
    penStrokeWidth: 6,
    penColor: Colors.black,
  );
  @override
  Widget build(BuildContext context) {
    setState(() {
      print(firstNameController.text);
    });

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kGrey.withOpacity(0.1),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            context.pop();
          },
        ),
        centerTitle: true,
        title: const Text(
          "Employment Application",
          style: TextStyle(color: richBalck, fontSize: AppSizes.p20),
        ),
      ),
      backgroundColor: Colors.grey.shade50,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: AppSizes.p16,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: AppSizes.p16,
                right: AppSizes.p16,
              ),
              child: Card(
                color: Colors.white,
                elevation: 0,
                shadowColor: kGrey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: AppSizes.p16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: AppSizes.p16),
                      child: Text(
                        'Upload Resume',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: royalBlue,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSizes.p16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: AppSizes.p16),
                      child: Row(
                        children: [
                          Text(
                            'Please Upload Resume',
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: AppSizes.p6,
                          ),
                          //Image.asset('assets/images/thumbsup1x.png')
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: AppSizes.p16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: AppSizes.p16,
                        right: AppSizes.p16,
                      ),
                      child: GestureDetector(
                        onTap: () async {
                          final FilePickerResult? result =
                              await FilePicker.platform.pickFiles(
                            type: FileType.custom,
                            allowedExtensions: ['doc', 'docx', 'pdf'],
                          );

                          if (result != null) {
                            final fileData = File(result.files.single.path!);
                            setState(() {
                              file = fileData;
                            });

                            print(file);
                          }
                        },
                        child: DottedBorder(
                          dashPattern: const [6, 4],
                          borderType: BorderType.RRect,
                          radius: const Radius.circular(8),
                          color: royalBlue,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 55,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Browse To Upload',
                                  style: GoogleFonts.montserrat(
                                    textStyle: const TextStyle(
                                      fontSize: 18,
                                      color: royalBlue,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                //  if (file != null)
                                // Visibility(
                                //     child: Container(
                                //         constraints:
                                //             BoxConstraints(maxWidth: 100),
                                //         child: Text(
                                //             '${file?.path.split('/').last}'))),
                                const SizedBox(
                                  width: AppSizes.p20,
                                ),
                                Image.asset('assets/images/newUpload1x.png'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: AppSizes.p16,
                    ),
                    Visibility(
                      visible: file == null ? false : true,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: AppSizes.p14,
                          right: AppSizes.p16,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: HexColor('#10BAAB').withOpacity(0.18),
                          ),

                          //elevation: 0,
                          child: Padding(
                            padding: const EdgeInsets.all(18),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  constraints: const BoxConstraints(
                                    maxWidth: 250,
                                  ),
                                  child: Text(
                                    maxLines: 2,
                                    file != null
                                        ? '${file?.path.split("/").last}'
                                        : '',
                                    style: const TextStyle(
                                      color: richBalck,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2,
                                      color: richBalck,
                                    ),
                                    borderRadius:
                                        BorderRadius.circular(AppSizes.p5),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(3),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          file = null;
                                        });
                                      },
                                      child: Icon(
                                        Icons.close,
                                        size: 14,
                                        color: richBalck,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: file == null ? 0 : 16,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: AppSizes.p16),
                      child: Text(
                        "Acceptable file formats: .doc, .docx, .pdf, 20MB max",
                        style: TextStyle(fontSize: AppSizes.p12),
                      ),
                    ),
                    const SizedBox(
                      height: AppSizes.p16,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: AppSizes.p20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 1,
                    width: 60,
                    decoration: BoxDecoration(border: Border.all(color: kGrey)),
                  ),
                  Text(
                    "OR COMPLETE APPLICATION",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: richBalck,
                      ),
                    ),
                  ),
                  Container(
                    height: 1,
                    width: 60,
                    decoration: BoxDecoration(border: Border.all(color: kGrey)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: AppSizes.p16,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: AppSizes.p16,
                right: AppSizes.p16,
              ),
              child: Card(
                color: kWhite.withOpacity(1),
                elevation: 0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(color: customIcon ? royalBlue : kWhite),
                    borderRadius: BorderRadius.circular(AppSizes.p10),
                  ),
                  child: ExpansionTile(
                    shape: const Border(),
                    expandedCrossAxisAlignment: CrossAxisAlignment.start,
                    title: Text(
                      'Complete application Below',
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    textColor: customIcon ? royalBlue : richBalck,
                    trailing: customIcon
                        ? const Icon(
                            Icons.arrow_drop_up,
                            color: royalBlue,
                            size: AppSizes.p32,
                          )
                        : const Icon(
                            Icons.arrow_drop_down_circle_rounded,
                            color: kGrey,
                            size: AppSizes.p32,
                          ),
                    onExpansionChanged: (value) {
                      setState(() {
                        customIcon = value;
                      });
                    },
                    children: [
                      const SizedBox(
                        height: AppSizes.p20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: AppSizes.p14,
                          right: AppSizes.p14,
                        ),
                        child: DropdownButtonFormField(
                          decoration: InputDecoration(
                            labelText: "Title",
                            enabledBorder: OutlineInputBorder(
                              //<-- SEE HERE
                              borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.8),
                              ),
                              borderRadius: BorderRadius.circular(AppSizes.p10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              //<-- SEE HERE
                              borderSide: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(AppSizes.p10),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          value: dropDownValue,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: items.map((String dataItem) {
                            return DropdownMenuItem(
                              value: dataItem,
                              child: Text(
                                dataItem,
                                style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropDownValue = newValue!;
                              index = items.indexOf(dropDownValue);
                            });
                          },
                        ),
                      ),
                      const SizedBox(
                        height: AppSizes.p16,
                      ),
                      TextFormFieldWidget(
                        labelText: "First Name",
                        hintText: 'Enter your First Name',
                        icon: const Icon(
                          Icons.person,
                          color: royalBlue,
                        ),
                        textController: firstNameController,
                      ),
                      const SizedBox(
                        height: AppSizes.p16,
                      ),
                      TextFormFieldWidget(
                        hintText: 'Enter your middle Name',
                        labelText: "Middle Name",
                        icon: const Icon(
                          Icons.person,
                          color: royalBlue,
                        ),
                      ),
                      const SizedBox(
                        height: AppSizes.p16,
                      ),
                      TextFormFieldWidget(
                        labelText: 'Last Name',
                        hintText: 'Enter your last name',
                        icon: const Icon(
                          Icons.person,
                          color: royalBlue,
                        ),
                        textController: lastNameController,
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
                              "Not Selected";
                            }
                          },
                          child: TextFormField(
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            keyboardType: TextInputType.datetime,
                            enabled: false,
                            controller: dobController,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: kGrey),
                                borderRadius:
                                    BorderRadius.circular(AppSizes.p10),
                              ),
                              suffixIcon: const Icon(
                                Icons.calendar_month,
                                color: royalBlue,
                              ),
                              labelText: "Date of birth",
                              labelStyle: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius:
                                    BorderRadius.circular(AppSizes.p10),
                              ),
                              hintText: "dd/mm/yyyy",
                              hintStyle: const TextStyle(
                                fontSize: AppSizes.p14,
                                color: royalBlue,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: AppSizes.p16,
                      ),
                      TextFormFieldWidget(
                        labelText: 'Address',
                        hintText: 'Enter your address',
                        icon: const Icon(
                          Icons.location_on,
                          color: royalBlue,
                        ),
                      ),
                      const SizedBox(
                        height: AppSizes.p16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: AppSizes.p16),
                        child: Text(
                          'Employment History',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              color: royalBlue,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: AppSizes.p16,
                      ),
                      TextFormFieldWidget(
                        labelText: 'Company Name',
                        hintText: 'Enter your company name',
                        icon: const Icon(
                          Icons.location_city,
                          color: royalBlue,
                        ),
                      ),
                      const SizedBox(
                        height: AppSizes.p16,
                      ),
                      TextFormFieldWidget(
                        labelText: 'Address',
                        hintText: "Enter your address",
                        icon: const Icon(
                          Icons.location_on,
                          color: royalBlue,
                        ),
                      ),
                      const SizedBox(
                        height: AppSizes.p16,
                      ),
                      TextFormFieldWidget(
                        labelText: 'Phone Number',
                        hintText: 'Enter your phone number',
                        icon: const Icon(
                          Icons.phone,
                          color: royalBlue,
                        ),
                      ),
                      const SizedBox(
                        height: AppSizes.p16,
                      ),
                      TextFormFieldWidget(
                        labelText: 'Position held',
                        hintText: 'Enter your position',
                        icon: const Icon(Icons.person_pin, color: royalBlue),
                      ),
                      const SizedBox(
                        height: AppSizes.p16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: AppSizes.p16),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: royalBlue),
                                borderRadius:
                                    BorderRadius.circular(AppSizes.p6),
                              ),
                              padding: const EdgeInsets.all(1),
                              child: const Icon(
                                Icons.add,
                                size: 18,
                                color: royalBlue,
                              ),
                            ),
                            const SizedBox(
                              width: AppSizes.p10,
                            ),
                            Text(
                              "Add Employment History",
                              style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: royalBlue,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: AppSizes.p20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: AppSizes.p16),
                        child: Text(
                          "Reference",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: royalBlue,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: AppSizes.p16),
                        child: Text(
                          "Reference should not be family or friends",
                          style: blackTextColor,
                        ),
                      ),
                      const SizedBox(
                        height: AppSizes.p16,
                      ),
                      TextFormFieldWidget(
                        labelText: 'Name',
                        hintText: 'Enter your name',
                        icon: const Icon(
                          Icons.person,
                          color: royalBlue,
                        ),
                      ),
                      const SizedBox(
                        height: AppSizes.p16,
                      ),
                      TextFormFieldWidget(
                        labelText: 'Relationship',
                        hintText: 'Enter your relationship',
                        icon: const Icon(
                          Icons.group,
                          color: royalBlue,
                        ),
                      ),
                      const SizedBox(
                        height: AppSizes.p16,
                      ),
                      TextFormFieldWidget(
                        textInput: TextInputType.number,
                        labelText: 'Phone number',
                        hintText: 'Enter phone number',
                        icon: const Icon(
                          Icons.phone,
                          color: royalBlue,
                        ),
                      ),
                      const SizedBox(
                        height: AppSizes.p16,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: AppSizes.p6,
            ),
            const SizedBox(
              height: AppSizes.p16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: AppSizes.p16),
              child: Text(
                "I certify that my answers are true and complete "
                "to the best of my knowledge. If this application leads"
                "to employment, I understand that false or misleading "
                "information in my application or interview may result"
                "in my release.",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Color(0xFF4F4F4F),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: AppSizes.p16,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: AppSizes.p16,
                right: AppSizes.p16,
              ),
              child: Container(
                height: 251,
                decoration: BoxDecoration(
                    color: rowColumnColor.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(AppSizes.p10),
                    border: Border.all(color: kGrey.withOpacity(0.4))),
                child: Signature(
                  controller: controller,
                  backgroundColor: rowColumnColor.withOpacity(0.6),
                ),
              ),
            ),
            const SizedBox(
              height: AppSizes.p16,
            ),
            GestureDetector(
              onTap: () {
                controller.clear();
              },
              child: Container(
                padding: const EdgeInsets.only(right: AppSizes.p16),
                alignment: Alignment.bottomRight,
                child: const Text(
                  'Clear',
                  style: blueTextColor,
                ),
              ),
            ),
            const SizedBox(
              height: AppSizes.p16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: AppSizes.p16),
              child: Text(
                "I agree to be legally bound by the document Lorem "
                "ipsum dolor sit amet consectetur. Adipiscing "
                "ultrices adipiscing sollicitudin ultricies."
                " Dui tellus pellentesque sed diam orci.",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Color(0xFF4F4F4F),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: AppSizes.p16,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Center(
                child: CustomButtonComponent(
                  text: 'Submit',
                  blueButton: true,
                  onTap: () {
                    print(firstNameController.text);
                    print(lastNameController.text);
                    context.pop();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void openFile(PlatformFile file) {
  // ignore: unnecessary_null_checks
  OpenFile.open(file.path!);
}

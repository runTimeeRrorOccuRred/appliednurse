import 'dart:io';

import 'package:applied_nurse/utils/button_component.dart';
import 'package:applied_nurse/utils/utils.dart';
import 'package:applied_nurse/view/screens/profile/upload_document/upload_document_page_view_model.dart';
import 'package:applied_nurse/view/screens/profile/upload_document/widgets/upload_card.dart';
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

class UploadDocumentPage extends ConsumerStatefulWidget {
  const UploadDocumentPage({super.key});

  @override
  ConsumerState<UploadDocumentPage> createState() => _UploadDocumentPageState();
}

class _UploadDocumentPageState extends ConsumerState<UploadDocumentPage> {
  SignatureController controller = SignatureController(
    penStrokeWidth: 6,
    penColor: Colors.black,
  );
  late UploadFileDataModel _viewModel;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
    _viewModel = ref.read(uploadFileData);
  }

  File? nursingFile;
  File? blsFile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kGrey.withOpacity(0.1),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            context.pop();
          },
        ),
        centerTitle: true,
        title: const Text(
          "Upload Document",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: AppSizes.p24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UploadCard(
                  showResume: true,
                  showCard: true,
                  title: 'Nursing Or CNA License *',
                  onTap: () async {
                    _viewModel.setNurseFile(context);
                  },
                  onDelete: () {
                    _viewModel.deleteNurseFile();
                  },
                  file: ref.watch(uploadFileData).nurseFile,
                  expiryDate: ref.watch(uploadFileData).expiryDate,

                  //file: nursingFile,
                ),
                const SizedBox(
                  height: 10,
                ),
                UploadCard(
                  showResume: false,
                  showCard: true,
                  title: 'BLS Or CPR Certification',
                  onTap: () async {
                    await _viewModel.setBlsFile(context);
                  },
                  onDelete: () {
                    _viewModel.deleteBlsFile();
                  },
                  file: ref.watch(uploadFileData).blsFile,
                  expiryDate: ref.watch(uploadFileData).expiryDate,
                ),
                const SizedBox(
                  height: 10,
                ),
                UploadCard(
                  showResume: false,
                  title: 'Demaintia Training Certificate',
                  showCard: true,
                  onTap: () async {
                    await _viewModel.setDemaintiaTrainingFile(context);
                  },
                  onDelete: () {
                    _viewModel.deleteDemaintiaTrainingFile();
                  },
                  file: ref.watch(uploadFileData).demaintiaTrainingFile,
                  expiryDate: ref.watch(uploadFileData).expiryDate,
                ),
                UploadCard(
                  showResume: false,
                  title: 'TB Screening Documentation',
                  showCard: true,
                  onTap: () async {
                    await _viewModel.setTbScreeningFile(context);
                  },
                  onDelete: () {
                    _viewModel.deleteTbScreeningFile();
                  },
                  file: ref.watch(uploadFileData).tbScreeningFile,
                  expiryDate: ref.watch(uploadFileData).expiryDate,
                ),
                const SizedBox(
                  height: 10,
                ),
                UploadCard(
                  showResume: false,
                  title: 'Driver License/State ID',
                  showCard: true,
                  onTap: () async {
                    await _viewModel.setDriverLicenseFile(context);
                  },
                  onDelete: () {
                    _viewModel.deleteDriverLicenseFile();
                  },
                  file: ref.watch(uploadFileData).driverLicenseFile,
                  expiryDate: ref.watch(uploadFileData).expiryDate,
                ),
                const SizedBox(
                  height: 10,
                ),
                UploadCard(
                  showResume: false,
                  title: 'Covid Vaccination/Medical Exemption',
                  showCard: false,
                  onTap: () async {
                    await _viewModel.setCovidVaccinationFile();
                  },
                  onDelete: () {
                    _viewModel.deleteCovidVaccinationFile();
                  },
                  file: ref.watch(uploadFileData).covidVaccinationFile,
                  expiryDate: ref.watch(uploadFileData).expiryDate,
                ),
                const SizedBox(
                  height: 10,
                ),
                UploadCard(
                  title: 'Social Security Guard',
                  showCard: false,
                  showResume: false,
                  onTap: () async {
                    await _viewModel.setSociaLSecurityFile();
                  },
                  onDelete: () {
                    _viewModel.deleteSociaLSecurityFile();
                  },
                  file: ref.watch(uploadFileData).sociaLSecurityFile,
                  expiryDate: ref.watch(uploadFileData).expiryDate,
                ),
                const SizedBox(
                  height: 10,
                ),
                UploadCard(
                  title: 'Upload Requested Document',
                  showCard: false,
                  showResume: false,
                  onTap: () async {
                    await _viewModel.setRequestedDocumentFile();
                  },
                  onDelete: () {
                    _viewModel.deleteRequestedDocumentFile();
                  },
                  file: ref.watch(uploadFileData).requestedDocumentFile,

                  // expiryDate: ref.watch(uploadFileData).expiryDate,
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        left: AppSizes.p16,
                        right: AppSizes.p16,
                      ),
                      child: Text(
                        'I certify that my answers are true and complete to the best of my knowledge. If this application leads to employment, I understand that false or misleading information in my application or interview may result in my release.',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF808080),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
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
                      // child: DecoratedBox(
                      //   decoration: BoxDecoration(
                      //       color: rowColumnColor,
                      //       border: Border.all(color: kWhite),),
                      //   child: TextFormField(
                      //     maxLines: 10,
                      //     decoration: InputDecoration(
                      //         enabledBorder: OutlineInputBorder(
                      //           borderSide:
                      //               BorderSide(color: kGrey.withOpacity(0.4)),
                      //           borderRadius:
                      //               BorderRadius.circular(AppSizes.p10),
                      //         ),
                      //         focusedBorder: OutlineInputBorder(
                      //           borderSide:
                      //               BorderSide(color: kGrey.withOpacity(0.4)),
                      //           borderRadius:
                      //               BorderRadius.circular(AppSizes.p10),
                      //         ),
                      //         hintText: 'Enter your text here...',
                      //         helperStyle: GoogleFonts.montserrat(
                      //             textStyle: const TextStyle(
                      //                 fontSize: 12,
                      //                 fontWeight: FontWeight.w500,),),),
                      //   ),
                      // ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: AppSizes.p16),
                      child: GestureDetector(
                        onTap: () {
                          controller.clear();
                        },
                        child: Container(
                          alignment: Alignment.bottomRight,
                          child: const Text(
                            'Clear',
                            style: TextStyle(
                              color: royalBlue,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: AppSizes.p16,
                        right: AppSizes.p16,
                      ),
                      child: Text(
                        "I agree to be legally bound by the document Lorem ipsum dolor sit amet consectetur. Adipiscing ultrices adipiscing sollicitudin ultricies. Dui tellus pellentesque sed diam orci.",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF808080),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Center(
                  child: CustomButtonComponent(
                    text: 'Preview Document',
                    blueButton: false,
                    onTap: () => context.pop(),
                  ),
                ),
                const SizedBox(
                  height: AppSizes.p20,
                ),
                Center(
                  child: CustomButtonComponent(
                    text: 'Submit',
                    blueButton: true,
                    onTap: () => context.pop(),
                  ),
                ),
                const SizedBox(
                  height: AppSizes.p20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

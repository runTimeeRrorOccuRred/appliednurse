// ignore_for_file: must_be_immutable

import 'dart:io';
import 'package:applied_nurse/utils/utils.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class UploadCard extends ConsumerStatefulWidget {
  final String title;
  bool showCard;
  bool showResume;
  Function()? onTap;
  File? file;
  Function()? onDelete;
  String? expiryDate;
  UploadCard({
    super.key,
    required this.title,
    required this.showCard,
    required this.showResume,
    this.onTap,
    this.file,
    this.onDelete,
    this.expiryDate,
  });

  @override
  ConsumerState<UploadCard> createState() => _UploadCardState();
}

class _UploadCardState extends ConsumerState<UploadCard> {
  TextEditingController? dobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_statements
    if (widget.showCard == true) {
      widget.file != null
          ? dobController!.text = widget.expiryDate ?? ""
          : dobController!.clear();
    }

    return Padding(
      padding: const EdgeInsets.only(left: AppSizes.p16, right: AppSizes.p16),
      child: Card(
        elevation: 0,
        color: const Color(0xFFF5F9FF),
        child: Padding(
          padding: const EdgeInsets.only(
            left: AppSizes.p16,
            right: AppSizes.p16,
            top: AppSizes.p10,
            bottom: AppSizes.p10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  color: richBalck,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: AppSizes.p12,
              ),
              GestureDetector(
                onTap: () {
                  widget.onTap!();
                },
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.circular(8),
                  ),
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
                          const Text(
                            'Browse To Upload',
                            style: TextStyle(
                              color: royalBlue,
                              fontSize: 18,
                            ),
                          ),
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
              const SizedBox(
                height: AppSizes.p16,
              ),
              if (widget.showCard)
                GestureDetector(
                  // onTap: widget.onTap,
                  child: TextFormField(
                    enabled: false,
                    autocorrect: false,
                    enableSuggestions: false,
                    cursorColor: royalBlue,
                    keyboardType: TextInputType.datetime,
                    controller: dobController,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.calendar_month,
                        color: Color(0xFF808080),
                      ),
                      labelText: "Expiry Date",
                      labelStyle: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: richBalck,
                          fontSize: AppSizes.p14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(AppSizes.p20),
                      ),
                      hintText: "dd/mm/yyyy",
                      hintStyle: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: richBalck,
                          fontSize: AppSizes.p14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                )
              else
                const SizedBox(),
              gapH10,
              Visibility(
                // ignore: avoid_bool_literals_in_conditional_expressions
                visible: widget.file == null ? false : true,
                child: Container(
                  decoration: BoxDecoration(
                    color: HexColor('#10BAAB').withOpacity(0.18),
                    borderRadius: BorderRadius.circular(6),
                  ),

                  //elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          constraints: const BoxConstraints(
                            maxWidth: 200,
                          ),
                          child: Text(
                            widget.file != null
                                ? widget.file!.path.split("/").last
                                : "",
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                            maxLines: 2,
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
                            borderRadius: BorderRadius.circular(AppSizes.p5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3),
                            child: GestureDetector(
                              onTap: () {
                                widget.onDelete!();
                                // if (widget.file ==
                                //     ref.watch(uploadFileData).nurseFile) {
                                //   ref.read(uploadFileData).deleteNurseFile();
                                // } else if (widget.file ==
                                //     ref.watch(uploadFileData).blsFile) {
                                //   ref.read(uploadFileData).deleteBlsFile();
                                // } else if (widget.file ==
                                //     ref
                                //         .watch(uploadFileData)
                                //         .requestedDocumentFile) {
                                //   ref
                                //       .read(uploadFileData)
                                //       .deleteRequestedDocumentFile();
                                // } else if (widget.file ==
                                //     ref
                                //         .watch(uploadFileData)
                                //         .demaintiaTrainingFile) {
                                //   ref
                                //       .read(uploadFileData)
                                //       .deleteDemaintiaTrainingFile();
                                // } else if (widget.file ==
                                //     ref.watch(uploadFileData).tbScreeningFile) {
                                //   ref
                                //       .read(uploadFileData)
                                //       .deleteTbScreeningFile();
                                // } else if (widget.file ==
                                //     ref
                                //         .watch(uploadFileData)
                                //         .driverLicenseFile) {
                                //   ref
                                //       .read(uploadFileData)
                                //       .deleteDriverLicenseFile();
                                // } else if (widget.file ==
                                //     ref
                                //         .watch(uploadFileData)
                                //         .covidVaccinationFile) {
                                //   ref
                                //       .read(uploadFileData)
                                //       .deleteCovidVaccinationFile();
                                // } else if (widget.file ==
                                //     ref
                                //         .watch(uploadFileData)
                                //         .sociaLSecurityFile) {
                                //   ref
                                //       .read(uploadFileData)
                                //       .deleteSociaLSecurityFile();
                                // }
                              },
                              child: const Icon(
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
              SizedBox(
                height: widget.file == null ? 0 : 16,
              ),
              const Text(
                'Acceptable file formats: .doc,.docx,'
                '.pdf, .pptx,\n.jpg,.jpeg, .png, .xlsx, '
                '.txt and .gif, 20MB max.',
                style: TextStyle(color: Color(0xFF808080)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

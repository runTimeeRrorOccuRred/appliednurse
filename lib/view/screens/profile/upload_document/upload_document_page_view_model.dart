import 'dart:io';

import 'package:applied_nurse/helpers/base_screen_view.dart';
import 'package:applied_nurse/helpers/base_view_model.dart';
import 'package:applied_nurse/utils/colors.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

final uploadFileData =
    ChangeNotifierProvider((ref) => UploadFileDataModel(ref: ref));

class UploadFileDataModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  UploadFileDataModel({required this.ref}) : super();

  String? _expiryDate;
  File? _nurseFile;
  File? _blsFile;
  File? _demaintiaTrainingFile;
  File? _tbScreeningFile;
  File? _driverLicenseFile;
  File? _covidVaccinationFile;
  File? _sociaLSecurityFile;
  File? _requestedDocumentFile;

  //GETTER

  File? get nurseFile => _nurseFile;
  File? get blsFile => _blsFile;
  File? get demaintiaTrainingFile => _demaintiaTrainingFile;
  File? get tbScreeningFile => _tbScreeningFile;
  File? get driverLicenseFile => _driverLicenseFile;
  File? get covidVaccinationFile => _covidVaccinationFile;
  File? get sociaLSecurityFile => _sociaLSecurityFile;
  File? get requestedDocumentFile => _requestedDocumentFile;

  String? get expiryDate => _expiryDate;

  //SETTER

  //FOR UPLOADING DOCUMENT FILES

  // ignore: type_annotate_public_apis
  Future<void> setNurseFile(context) async {
    final FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx'],
    );
    if (result != null) {
      final fileData = File(result.files.single.path!);
      _nurseFile = fileData;

      DateTime? date;
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
        firstDate: DateTime(DateTime.now().year),
        lastDate: DateTime(DateTime.now().year + 10),
      );
      if (date != null) {
        final String formattedDate = DateFormat('dd-MM-yyyy').format(date);
        print(formattedDate);
        _expiryDate = formattedDate;
      } else {
        _nurseFile = null;
      }
    }
    notifyListeners();
  }

  Future<void> setBlsFile(context) async {
    final FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx'],
    );
    if (result != null) {
      final fileData = File(result.files.single.path!);
      _blsFile = fileData;
      DateTime? date;
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
        firstDate: DateTime(DateTime.now().year),
        lastDate: DateTime(DateTime.now().year + 10),
      );
      if (date != null) {
        final String formattedDate = DateFormat('dd-MM-yyyy').format(date);
        print(formattedDate);
        _expiryDate = formattedDate;
      } else {
        _blsFile = null;
      }
    }
    notifyListeners();
  }

  Future<void> setDemaintiaTrainingFile(context) async {
    final FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx'],
    );
    if (result != null) {
      final fileData = File(result.files.single.path!);
      _demaintiaTrainingFile = fileData;
      DateTime? date;
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
        firstDate: DateTime(DateTime.now().year),
        lastDate: DateTime(DateTime.now().year + 10),
      );
      if (date != null) {
        final String formattedDate = DateFormat('dd-MM-yyyy').format(date);
        print(formattedDate);
        _expiryDate = formattedDate;
      } else {
        _demaintiaTrainingFile = null;
      }
    }
    notifyListeners();
  }

  Future<void> setTbScreeningFile(context) async {
    final FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx'],
    );
    if (result != null) {
      final fileData = File(result.files.single.path!);
      _tbScreeningFile = fileData;

      DateTime? date;
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
        firstDate: DateTime(DateTime.now().year),
        lastDate: DateTime(DateTime.now().year + 10),
      );
      if (date != null) {
        final String formattedDate = DateFormat('dd-MM-yyyy').format(date);
        print(formattedDate);
        _expiryDate = formattedDate;
      } else {
        _tbScreeningFile = null;
      }
    }
    notifyListeners();
  }

  Future<void> setDriverLicenseFile(context) async {
    final FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx'],
    );
    if (result != null) {
      final fileData = File(result.files.single.path!);
      _driverLicenseFile = fileData;
      // final String dayDate = DateTime.now().day.toString();
      // final String monthDate = DateTime.now().month.toString();
      // final String yearDate = (DateTime.now().year + 10).toString();
      // _expiryDate =
      //     "$dayDate/${int.parse(monthDate) < 10 ? '0$monthDate' : monthDate}/$yearDate";
      DateTime? date;
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
        firstDate: DateTime(DateTime.now().year),
        lastDate: DateTime(DateTime.now().year + 10),
      );
      if (date != null) {
        final String formattedDate = DateFormat('dd-MM-yyyy').format(date);
        print(formattedDate);
        _expiryDate = formattedDate;
      } else {
        _driverLicenseFile = null;
      }
    }
    notifyListeners();
  }

  Future<void> setCovidVaccinationFile() async {
    final FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx'],
    );
    if (result != null) {
      final fileData = File(result.files.single.path!);
      _covidVaccinationFile = fileData;
      // final String dayDate = DateTime.now().day.toString();
      // final String monthDate = DateTime.now().month.toString();
      // final String yearDate = (DateTime.now().year + 10).toString();
      // _expiryDate =
      //     "$dayDate/${int.parse(monthDate) < 10 ? '0$monthDate' : monthDate}/$yearDate";
    }
    notifyListeners();
  }

  Future<void> setSociaLSecurityFile() async {
    final FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx'],
    );
    if (result != null) {
      final fileData = File(result.files.single.path!);
      _sociaLSecurityFile = fileData;
      // final String dayDate = DateTime.now().day.toString();
      // final String monthDate = DateTime.now().month.toString();
      // final String yearDate = (DateTime.now().year + 10).toString();
      // _expiryDate =
      //     "$dayDate/${int.parse(monthDate) < 10 ? '0$monthDate' : monthDate}/$yearDate";
    }
    notifyListeners();
  }

  Future<void> setRequestedDocumentFile() async {
    final FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx'],
    );
    if (result != null) {
      final fileData = File(result.files.single.path!);
      _requestedDocumentFile = fileData;
      // final String dayDate = DateTime.now().day.toString();
      // final String monthDate = DateTime.now().month.toString();
      // final String yearDate = (DateTime.now().year + 10).toString();
      // _expiryDate =
      //     "$dayDate/${int.parse(monthDate) < 10 ? '0$monthDate' : monthDate}/$yearDate";
    }
    notifyListeners();
  }

  //FOR DELETING FILES//

  // ignore: always_declare_return_types, type_annotate_public_apis
  deleteNurseFile() {
    _nurseFile = null;

    notifyListeners();
  }

  // ignore: always_declare_return_types, type_annotate_public_apis
  deleteBlsFile() {
    _blsFile = null;

    notifyListeners();
  }

  // ignore: always_declare_return_types, type_annotate_public_apis
  deleteDemaintiaTrainingFile() {
    _demaintiaTrainingFile = null;

    notifyListeners();
  }

  // ignore: always_declare_return_types, type_annotate_public_apis
  deleteTbScreeningFile() {
    _tbScreeningFile = null;

    notifyListeners();
  }

  // ignore: always_declare_return_types, type_annotate_public_apis
  deleteDriverLicenseFile() {
    _driverLicenseFile = null;

    notifyListeners();
  }

  // ignore: always_declare_return_types, type_annotate_public_apis
  deleteCovidVaccinationFile() {
    _covidVaccinationFile = null;

    notifyListeners();
  }

  // ignore: always_declare_return_types, type_annotate_public_apis
  deleteSociaLSecurityFile() {
    _sociaLSecurityFile = null;

    notifyListeners();
  }

  // ignore: always_declare_return_types, type_annotate_public_apis
  deleteRequestedDocumentFile() {
    _requestedDocumentFile = null;

    notifyListeners();
  }
}

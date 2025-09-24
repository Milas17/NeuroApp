import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kivicare_flutter/main.dart';
import 'package:kivicare_flutter/utils/common.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:open_file/open_file.dart';

class FileUploadComponent extends StatefulWidget {
  @override
  State<FileUploadComponent> createState() => _FileUploadComponentState();
}

class _FileUploadComponentState extends State<FileUploadComponent> {
  TextEditingController fileCont = TextEditingController();

  File? file;

  // Maximum file size in bytes (5MB)
  static const int maxFileSize = 5 * 1024 * 1024;

  // Allowed file extensions
  static const List<String> allowedExtensions = ['pdf', 'doc', 'docx', 'jpg', 'jpeg', 'png', 'xls', 'xlsx'];

  init() async {
    //
  }

  bool isValidFileSize(int fileSize) {
    return fileSize <= maxFileSize;
  }

  bool isValidFileType(String fileName) {
    final extension = fileName.split('.').last.toLowerCase();
    return allowedExtensions.contains(extension);
  }

  void pickSingleFile() async {
    await FilePicker.platform
        .pickFiles(
      allowMultiple: isProEnabled(),
      type: FileType.custom,
      allowedExtensions: allowedExtensions,
    )
        .then((value) {
      if (value != null) {
        // Check file size
        bool hasInvalidSize = false;
        for (var file in value.files) {
          if (!isValidFileSize(file.size)) {
            hasInvalidSize = true;
            break;
          }
        }

        if (hasInvalidSize) {
          toast('File size should not exceed 5MB');
          return;
        }

        // Check file type
        bool hasInvalidType = false;
        for (var file in value.files) {
          if (!isValidFileType(file.name)) {
            hasInvalidType = true;
            break;
          }
        }

        if (hasInvalidType) {
          toast('Only PDF, DOC, DOCX, JPG, JPEG, PNG, XLS, and XLSX files are allowed');
          return;
        }

        appointmentAppStore.addReportData(data: value.files);
        fileCont.text = "${appointmentAppStore.reportList.length} ${locale.lblFilesSelected}";
      } else {
        toast(locale.lblNoReportWasSelected);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextField(
            controller: fileCont,
            textFieldType: TextFieldType.OTHER,
            readOnly: true,
            decoration: inputDecoration(
              context: context,
              labelText: locale.lblAddMedicalReport,
              suffixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.upload_file),
                    iconSize: 18,
                    onPressed: () => pickSingleFile(),
                  ),
                ],
              ),
            ),
          ),
          if (appointmentAppStore.reportList.isNotEmpty) 16.height,
          if (appointmentAppStore.reportList.isNotEmpty)
            ListView.builder(
              itemCount: appointmentAppStore.reportList.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return SettingItemWidget(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: appointmentAppStore.reportList[index].path.validate().isNotEmpty
                      ? () {
                          OpenFile.open(appointmentAppStore.reportList[index].path);
                        }
                      : () {},
                  leading: Icon(Icons.document_scanner, color: context.primaryColor),
                  title: '${locale.lblMedicalReport} ${index + 1}',
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  trailing: TextButton(
                    onPressed: () {
                      appointmentAppStore.removeReportData(index: index);
                      fileCont.text = appointmentAppStore.reportList.length > 0 ? "${appointmentAppStore.reportList.length} ${locale.lblFilesSelected}" : '';
                    },
                    child: Text('${locale.lblRemove}', style: boldTextStyle(color: Colors.red, size: 12)),
                  ),
                );
              },
            ),
          if (appointmentAppStore.reportListString.isNotEmpty) 16.height,
        ],
      ),
    );
  }
}

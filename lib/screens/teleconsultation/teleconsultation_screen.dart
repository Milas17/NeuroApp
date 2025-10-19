import 'package:flutter/material.dart';
import 'package:kivicare_flutter/utils/colors.dart';
import 'package:kivicare_flutter/utils/common.dart';
import 'package:nb_utils/nb_utils.dart';

class TeleconsultationScreen extends StatefulWidget {
  const TeleconsultationScreen({Key? key}) : super(key: key);

  @override
  _TeleconsultationScreenState createState() => _TeleconsultationScreenState();
}

class _TeleconsultationScreenState extends State<TeleconsultationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget('Teleconsultation', elevation: 0),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.video_call, size: 72, color: primaryColor),
            16.height,
            Text('Espace de téléconsultation', style: primaryTextStyle(size: 18)),
            8.height,
            Text('Accédez à vos rendez-vous vidéo et sessions en direct.', style: secondaryTextStyle(), textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}

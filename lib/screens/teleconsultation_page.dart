import 'package:flutter/material.dart';
import 'package:jitsi_meet_flutter_sdk/jitsi_meet_flutter_sdk.dart';

class TeleconsultationPage extends StatefulWidget {
  final String roomName;
  final String userName;

  const TeleconsultationPage({
    Key? key,
    required this.roomName,
    required this.userName,
  }) : super(key: key);

  @override
  State<TeleconsultationPage> createState() => _TeleconsultationPageState();
}

class _TeleconsultationPageState extends State<TeleconsultationPage> {
  final JitsiMeet jitsiMeet = JitsiMeet();

  void joinMeeting() async {
    var options = JitsiMeetConferenceOptions(
      room: widget.roomName,
      userDisplayName: widget.userName,
    );

    await jitsiMeet.join(options);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Téléconsultation"),
      ),
      body: Center(
        child: ElevatedButton.icon(
          icon: const Icon(Icons.video_call),
          label: const Text("Rejoindre la téléconsultation"),
          onPressed: joinMeeting,
        ),
      ),
    );
  }
}

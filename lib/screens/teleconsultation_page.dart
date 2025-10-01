import 'package:flutter/material.dart';
import 'package:jitsi_meet_flutter_sdk/jitsi_meet_flutter_sdk.dart';

class TeleconsultationPage extends StatelessWidget {
  final JitsiMeet jitsiMeet = JitsiMeet();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Téléconsultation")),
      body: Center(
        child: ElevatedButton(
          child: Text("Rejoindre la téléconsultation"),
          onPressed: () async {
            var options = JitsiMeetConferenceOptions(
              room: "neurocare_demo_room", // identifiant unique de la salle
              configOverrides: {
                "startWithAudioMuted": true,
                "startWithVideoMuted": false,
              },
              featureFlags: {
                "welcomepage.enabled": false,
              },
            );
            await jitsiMeet.join(options);
          },
        ),
      ),
    );
  }
}

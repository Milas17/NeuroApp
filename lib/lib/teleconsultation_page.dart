import 'package:flutter/material.dart';
import 'package:jitsi_meet_flutter_sdk/jitsi_meet_flutter_sdk.dart';

class TeleconsultationPage extends StatefulWidget {
  final String roomName;   // Nom de la salle (ex: ID du RDV ou du patient)
  final String userName;   // Nom de l’utilisateur (Patient ou Médecin)

  const TeleconsultationPage({
    super.key,
    required this.roomName,
    required this.userName,
  });

  @override
  State<TeleconsultationPage> createState() => _TeleconsultationPageState();
}

class _TeleconsultationPageState extends State<TeleconsultationPage> {
  final JitsiMeet _jitsiMeet = JitsiMeet();

  bool isLoading = false;

  Future<void> _joinMeeting() async {
    setState(() => isLoading = true);

    try {
      var options = JitsiMeetConferenceOptions(
        room: widget.roomName,
        configOverrides: {
          "startWithAudioMuted": true,
          "startWithVideoMuted": false,
          "subject": "Téléconsultation NeuroCare Connect",
        },
        userInfo: JitsiMeetUserInfo(
          displayName: widget.userName,
        ),
      );

      await _jitsiMeet.join(options);
    } catch (e) {
      debugPrint("Erreur lors de la connexion Jitsi: $e");
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Impossible de rejoindre la téléconsultation.")),
        );
      }
    }

    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Téléconsultation"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Salle : ${widget.roomName}",
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton.icon(
                    onPressed: _joinMeeting,
                    icon: const Icon(Icons.video_call),
                    label: const Text("Rejoindre la téléconsultation"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

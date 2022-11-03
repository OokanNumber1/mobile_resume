import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../custom_widgets/page_widget.dart';
import '../custom_widgets/spacing.dart';

class OtherResumePage extends StatelessWidget {
  const OtherResumePage({super.key});
  final twitterUrl = "https://twitter.com/1024normal";
  final githubUrl = "https://github.com/ookannumber1";

  void _launchUrl(String url) async {
    final parsedUri = Uri.parse(url);
    if (await canLaunchUrl(parsedUri)) {
      launchUrl(parsedUri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: screenSize.width * 0.44,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage("image/image.jpg"),
                        ),
                        Spacing.horizontal(24),
                        const Text(
                          "1024",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacing.vertical(24),
                  const HeaderText(text: "Socials"),
                  SizedBox(
                    width: screenSize.width * 0.44,
                    child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () => _launchUrl(twitterUrl),
                          child: Text(
                            "TWITTER: $twitterUrl",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        TextButton(
                          onPressed: () => _launchUrl(githubUrl),
                          child: Text(
                            "GITHUB: $githubUrl",
                            style: const TextStyle(color: Colors.blue),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeaderText(text: "About me"),
                  SizedBox(
                    width: screenSize.width * 0.44,
                    child: const InfoCard(
                      detail: '''
            I believe if communication is done right, a lot of problems could be solved/avoided.
            I don't like stressing people.
            I try not to be too worried, it has no effect.
            ''',
                    ),
                  ),
                  Spacing.vertical(24),
                  const HeaderText(text: "What I tend to offer"),
                  SizedBox(
                    width: screenSize.width * 0.44,
                    child: const InfoCard(
                      detail:
                          " I'll put in my best with effort of other team members to make a mobile product we can all be proud of.\n",
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

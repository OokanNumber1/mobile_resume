import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../custom_widgets/page_widget.dart';
import '../custom_widgets/spacing.dart';


class MobileResumePage extends StatelessWidget {
  const MobileResumePage({super.key});
  final twitterUrl = "https://twitter.com/1024Being";
  final githubUrl = "https://github.com/ookannumber1";

  void _launchUrl(String url) async {
    final parsedUri = Uri.parse(url);
    if (await canLaunchUrl(parsedUri)) {
      launchUrl(parsedUri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                      "image/image.jpg",
                    ),
                  ),
                ],
              ),
              Spacing.vertical(12),
              Center(
                child: Text(
                  "1024",
                  style: Theme.of(context).textTheme.headlineMedium!,
                ),
              ),
              Spacing.vertical(24),
              const HeaderText(text: "About me"),
              const InfoCard(
                detail: '''
I believe if communication is done right, a lot of problems could be solved/avoided.
I don't like stressing people.
I try not to be too worried, it has no effect.
''',
              ),
              Spacing.vertical(24),
              const HeaderText(text: "Socials"),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 12,
                    right: 12,
                    top: 12.0,
                  ),
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
              ),
              Spacing.vertical(24),
              const HeaderText(text: "What I tend to offer"),
              const InfoCard(
                detail:
                    " I'll put in my best with effort of other team members to make a mobile product we can all be proud of.\n",
              )
            ],
          ),
        ),
      ),
    );
  }
}

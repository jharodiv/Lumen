import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShareSection extends StatelessWidget {
  const ShareSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.of(context).pop(),
      child: GestureDetector(
        onTap: () {},
        child: DraggableScrollableSheet(
          initialChildSize: 0.4,
          maxChildSize: 0.75,
          minChildSize: 0.3,
          builder: (_, controller) => Container(
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(20)),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 40,
                    height: 4,
                    decoration: const BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text("Share to",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 12),
                SizedBox(
                  height: 80,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        return const Column(
                          children: [
                            CircleAvatar(
                              radius: 24,
                              backgroundImage: AssetImage(
                                  'assets/images/others/testprofile.jpg'),
                            ),
                            SizedBox(height: 4),
                            Text("@friend",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12))
                          ],
                        );
                      },
                      separatorBuilder: (_, __) => const SizedBox(width: 12),
                      itemCount: 10),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildSocialIcon(
                        const FaIcon(FontAwesomeIcons.facebookMessenger,
                            color: Color(0xFF00B2FF)),
                        "Messenger"),
                    _buildSocialIcon(
                        const FaIcon(FontAwesomeIcons.facebookF,
                            color: Color(0xFF1877F2)),
                        "Facebook"),
                    _buildSocialIcon(
                        const FaIcon(FontAwesomeIcons.telegram,
                            color: Color(0xFF0088cc)),
                        "Telegram"),
                    _buildSocialIcon(
                        const FaIcon(FontAwesomeIcons.xTwitter,
                            color: Color(0xFF000000)),
                        "X"),
                    _buildSocialIcon(
                        const FaIcon(FontAwesomeIcons.whatsapp,
                            color: Color(0xFF25D366)),
                        "WhatsApp"),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSocialIcon(Widget icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white10,
          child: icon,
        ),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(color: Colors.white, fontSize: 12)),
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:mek_gasol/features/teams/dvo/team_dvo.dart';

class TeamScreen extends StatelessWidget {
  final TeamDvo? team;

  const TeamScreen({
    Key? key,
    required this.team,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final team = this.team;

    final fields = Column(
      children: [],
    );

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(team?.name ?? 'New Team'),
        // trailing: team != null ? _buildDeleteButton(player) : null,
      ),
      child: SafeArea(
        child: fields,
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mek_gasol/features/teams/triggers/teams_trigger.dart';
import 'package:mek_gasol/presentation/features/team.dart';
import 'package:mek_gasol/shared/app_list_tile.dart';
import 'package:mek_gasol/shared/hub.dart';

class TeamsBloc {
  static final all = StreamProvider((ref) {
    return ref.watch(TeamsTrigger.instance).watchAll();
  });
}

class TeamsScreen extends ConsumerWidget {
  const TeamsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final teamsState = ref.watch(TeamsBloc.all);

    final teamsView = teamsState.when(loading: () {
      return const CupertinoActivityIndicator();
    }, error: (error, _) {
      return const SizedBox.shrink();
    }, data: (players) {
      return ListView.builder(
        itemCount: players.length,
        itemBuilder: (context, index) {
          final team = players[index];

          return AppListTile(
            onTap: () => Hub.push(const TeamScreen()),
            title: Text(team.name),
          );
        },
      );
    });

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Teams'),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () => Hub.push(const TeamScreen()),
          child: const Text('Add'),
        ),
      ),
      child: SafeArea(
        child: teamsView,
      ),
    );
  }
}

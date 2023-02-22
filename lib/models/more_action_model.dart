

class MoreActions {
  final String icon;
  final String actionName;

  MoreActions(this.icon, this.actionName);
}

String iconDir = "assets/icons";

List<MoreActions> action =[
MoreActions('$iconDir/Like.png', "Like"),
MoreActions('$iconDir/Add to playlist.png', 'Add to Playlist'),
MoreActions('$iconDir/Add to queue.png', 'Add to Queue'),
MoreActions('$iconDir/View album.png', 'View Album'),
MoreActions('$iconDir/View artist.png', 'View Artist'),
MoreActions('$iconDir/Share.png', 'Share'),
MoreActions('$iconDir/Sleep timer.png', 'Sleep timer'),
MoreActions('$iconDir/Go to radio.png', 'Go to Song Radio'),
MoreActions('$iconDir/Song credits.png', 'Show Credits'),
MoreActions('$iconDir/Report abuse.png', 'Report'),
];

enum Action {
  liked,
  playlist,
  queue,
  record,
  album,
  artist,
  share,
  sleep,
  radio,
  credits,
  report
}

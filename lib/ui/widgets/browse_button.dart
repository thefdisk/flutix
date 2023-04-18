part of 'widgets.dart';

class BrowseButton extends StatelessWidget {
  final String genre;

  const BrowseButton(this.genre, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 4),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: const Color(0xFFEEF1F8),
            borderRadius: BorderRadius.circular(8),
          ),
          child: SizedBox(
            height: 36,
            child: Image(
              image: AssetImage(getImageFromGenre(genre)),
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          genre,
          style: blackTextFont.copyWith(fontSize: 13),
        )
      ],
    );
  }

  String getImageFromGenre(String genre) {
    switch (genre) {
      case 'Horror':
        return 'assets/ic_horror.png';
      case 'Music':
        return 'assets/ic_music.png';
      case 'Action':
        return 'assets/ic_action.png';
      case 'Drama':
        return 'assets/ic_drama.png';
      case 'War':
        return 'assets/ic_war.png';
      case 'Crime':
        return 'assets/ic_crime.png';
      default:
        return '';
    }
  }
}

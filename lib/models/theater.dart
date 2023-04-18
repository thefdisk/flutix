part of 'models.dart';

class Theater extends Equatable {
  final String name;

  const Theater(this.name);

  @override
  List<Object> get props => [name];
}

List<Theater> dummyTheaters = [
  const Theater('Mandala 21'),
  const Theater('Movimax Sarinah Malang'),
  const Theater('Cinépolis Malang Town Square'),
  const Theater('CGV Cinemas Malang City Point'),
];

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

/// Les events permettent d'intercepté les interactions UI pour les traiter dans le bloc
/// Seuls les Events Ticked et Started ont une duration car ils sont nécéssaire
/// dans leurs process dans le fichier timer_bloc.dart
///Classe mètre qui sert pour l'héritage
abstract class TimerEvent extends Equatable {
  const TimerEvent();

  @override
  List<Object> get props => [];
}

class TimerStarted extends TimerEvent {
  final int duration;

  const TimerStarted({@required this.duration});

  @override
  String toString() => "TimerStarted {duration : $duration";
}

class TimerPaused extends TimerEvent {}

class TimerResumed extends TimerEvent {}

class TimerReset extends TimerEvent {}

class TimerTicked extends TimerEvent {
  final int duration;

  const TimerTicked({@required this.duration});

  @override
  List<Object> get props => [duration];

  @override
  String toString() => "TimerTicked { duration: $duration }";
}

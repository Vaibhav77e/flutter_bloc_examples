part of 'counterbloc.dart';

// create a sealed class it is same as abstract class but the class declared with
// sealed can accessed inside same file can't be accessed outside file maybe i think
sealed class CounterEvent {}

// create a event first
class CounterIncremented extends CounterEvent{}

class CounterDecremented extends CounterEvent{}
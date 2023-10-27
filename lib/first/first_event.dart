abstract class FirstEvent {}

class InitEvent extends FirstEvent {}

class sum_event extends FirstEvent
{
  String a,b;
  sum_event(this.a,this.b);
}

class sub_event extends FirstEvent
{
  String a,b;
  sub_event(this.a,this.b);
}
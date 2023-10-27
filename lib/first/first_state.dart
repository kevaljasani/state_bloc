class FirstState {
  FirstState init() {
    return FirstState();
  }

  FirstState clone() {
    return FirstState();
  }
}

class sum_state extends FirstState
{
  int total;
  sum_state(this.total);
}

class sub_state extends FirstState
{
  int total;
  sub_state(this.total);
}
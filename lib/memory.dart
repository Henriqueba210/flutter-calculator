class Memory {
  String result = '0';

  void applyCommand(String label) {
    if (label == 'AC')
      _clear();
    else
      result += label;
  }

  _clear() {
    result = '0';
  }
}

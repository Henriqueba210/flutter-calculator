class Memory {
  String result = '0';
  List<double> _buffer = [0.0, 0.0];
  int _bufferIndex = 0;
  bool _operationUsed = false;
  String _operation;

  static const OPERATIONS = "+-x%=";

  void applyCommand(String label) {
    if (label == 'AC') {
      _clear();
    } else if (label == 'DEL') {
      _deleteEndDigit();
    } else if (OPERATIONS.contains(label)) {
      _setOperation(label);
    } else {
      _addDigit(label);
    }
  }

  _clear() {
    result = '0';
    _operationUsed = false;
    _buffer.setAll(0, [0.0,0.0]);
    _bufferIndex = 0;
    _operation = null;
  }

  void _addDigit(String digit) {
    if (result == '0' && digit != '.') {
      result = '';
    }

    if(digit == '.' && result.contains('.')){
      digit = '';
    }

    result += digit;
  }

  void _deleteEndDigit() {
    result = result.length == 1 ? '0' : result.substring(0, result.length - 1);
  }

  void _setOperation(String operation) {

  }
}

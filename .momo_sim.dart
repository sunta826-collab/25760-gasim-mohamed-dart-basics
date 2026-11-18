// Student: Mohamed Khalid Gasim
// Reg no: 25760
const String regNo = '25760';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

int momoFee(int amount) {
  // by MKG
  if (amount <= 0) {
    return -1;
  } else if (amount <= 1000) {
    return 20;
  } else if (amount <= 10000) {
    return 100;
  } else if (amount <= 150000) {
    return 250;
  }
  return 1500;
}

String formatRwf(int amount) {
  // by MKG
  String number = amount.abs().toString();
  String result = '';
  int i = 0;

  while (i < number.length) {
    result += number[i];

    int remaining = number.length - i - 1;

    if (remaining > 0 && remaining % 3 == 0) {
      result += ',';
    }
    i++;
  }

  if (amount < 0) {
    result = '-' + result;
  }

  return result + ' RWF';
}

bool isValidPin(String pin) {
  // by MKG
  if (pin.length != 5 || pin == '12345') {
    return false;
  }

  int i = 0;
  bool same = true;

  while (i < pin.length) {
    if (!'0123456789'.contains(pin[i])) {
      return false;
    }

    if (pin[i] != pin[0]) {
      same = false;
    }

    i++;
  }

  return !same;
}

int sendMoney(int balance, int amount) {
  // by MKG
  int fee = momoFee(amount);

  if (fee == -1) {
    print('Failed: invalid amount');
    return balance;
  }

  if (amount + fee > balance) {
    print('Failed: insufficient balance');
    return balance;
  }

  balance -= amount + fee;

  print('Sent ${formatRwf(amount)} (fee ${formatRwf(fee)}). New balance: ${formatRwf(balance)}');

  return balance;
}

int buyAirtime(int balance, int amount) {
  // by MKG
  if (amount < 100 || amount > 50000) {
    print('Failed: invalid airtime amount');
    return balance;
  }

  if (amount > balance) {
    print('Failed: insufficient balance');
    return balance;
  }

  balance -= amount;

  print('Airtime: ${formatRwf(amount)}. New balance: ${formatRwf(balance)}');

  return balance;
}

void main() {
  // by MKG
  print('Reg no: $regNo | D = $d | T = $t');

  print(isValidPin('12345'));
  print(isValidPin('77777'));
  print(isValidPin('4821'));
  print(isValidPin('48a21'));
  print(isValidPin('4821$d'));

  int balance = 20000 + t * 500;

  print('Starting balance: ${formatRwf(balance)}');

  int amount = (d + 1) * 3000;

  balance = sendMoney(balance, amount);
  balance = sendMoney(balance, amount);
  balance = sendMoney(balance, amount);

  balance = buyAirtime(balance, 1000);
  balance = sendMoney(balance, 0);
  balance = sendMoney(balance, 200000);

  print('Final balance: ${formatRwf(balance)}');

  // Extra tests
  print(formatRwf(0)); // 0 RWF
  print(formatRwf(1000)); // 1,000 RWF
  print(formatRwf(-5000)); // -5,000 RWF
  print(isValidPin('00000')); // false
  print(isValidPin('01234')); // true
}

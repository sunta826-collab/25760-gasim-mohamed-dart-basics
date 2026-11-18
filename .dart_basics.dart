// Student: Mohamed Khalid Gasim
// Reg no: 25760
const String regNo = '25760';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

// B2
int countVowels(String text) {
  // by MKG
  text = text.toLowerCase();
  int count = 0;

  for (int i = 0; i < text.length; i++) {
    if ('aeiou'.contains(text[i])) {
      count++;
    }
  }
  return count;
}

// B3
String initials(String fullName) {
  // by MKG
  String result = '';

  for (String name in fullName.split(' ')) {
    if (name.isNotEmpty) {
      result += name[0].toUpperCase() + '.';
    }
  }
  return result;
}

// C5
void drawTriangle(int height) {
  // by MKG
  for (int i = 1; i <= height; i++) {
    String spaces = ' ' * (height - i);
    String symbol = i % 2 == 0 ? '#' : '*';
    print(spaces + symbol * i);
  }
}

// D2
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
  } else {
    return 1500;
  }
}

String maskPhone(String phone) {
  // by MKG
  if (phone.length != 10) {
    return 'INVALID';
  }
  return phone.substring(0, 3) +
      '*****' + phone.substring(8);
}

void main() {
  // by MKG
  print('Reg no: $regNo | D = $d | T = $t');

  String name = 'Mohamed Khalid Gasim';
  print('$name has ${countVowels(name)} vowels');

  print(initials(name));
  print(initials(' ana uwase '));
  print(initials(' '));

  drawTriangle(d + 3);
  drawTriangle(0);
  drawTriangle(-2);

  int i = 1;
  int total = 0;
  String phone = '0796151632';

  while (i <= d + 3) {
    int amount = i * 4000 + t * 100;
    int fee = momoFee(amount);
    total += fee;

    print('Receipt $i | $amount RWF | fee $fee RWF | to ${maskPhone(phone)}');

    i++;
  }

  print('Total fees: $total RWF');
}

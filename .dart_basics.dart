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
}

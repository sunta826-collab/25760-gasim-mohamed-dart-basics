// Student: Mohamed Khalid Gasim
// Reg no: 25760
const String regNo = '25760';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

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

void main() {
  // by MKG
  print('Reg no: $regNo | D = $d | T = $t');

  String name = 'Mohamed Khalid Gasim';
  print('$name has ${countVowels(name)} vowels');
}

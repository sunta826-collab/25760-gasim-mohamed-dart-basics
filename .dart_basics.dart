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
void main() {
  print(initials('Mohamed Khalid Gasim'));
  print(initials(' ana uwase '));
  print(initials(' '));

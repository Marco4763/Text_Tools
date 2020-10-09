library text_tools;

class TextTools {
  static toUppercaseFirstLetter({String text}) {
    text = text.replaceFirst(text[0], text[0].toUpperCase());
    return text;
  }

  static toUppercaseAnyLetter({String text, int position}) {
    text = text.replaceFirst(text[position], text[position].toUpperCase());
    return text;
  }

  static toLowercaseFirstLetter({String text}) {
    text = text.replaceFirst(text[0], text[0].toLowerCase());
    return text;
  }

  static toLowercaseAnyLetter({String text, int position}) {
    text = text.replaceFirst(text[position], text[position].toLowerCase());
    return text;
  }

  static removeNumbersFromString({String text}) {
    List number = [
      '_',
      ':',
      '-',
      '/',
      ';',
      '|',
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9'
    ];
    for (int i = 0; i < number.length; i++) {
      text = text.replaceAll(number[i].toString(), '');
    }
    return text;
  }

  static removeLettersFromString({String text}) {
    List letter = [
      '_',
      ':',
      '-',
      ';',
      '/',
      '|',
      'a',
      'b',
      'c',
      'd',
      'e',
      'f',
      'g',
      'h',
      'i',
      'j',
      'k',
      'l',
      'm',
      'n',
      'o',
      'p',
      'q',
      'r',
      's',
      't',
      'u',
      'v',
      'w',
      'x',
      'y',
      'z'
    ];
    for (int i = 0; i < letter.length; i++) {
      text = text.toLowerCase().replaceAll(letter[i].toString(), '');
    }
    return text;
  }

  static removeNumberFromString({String text, int number}) {
    text = text.replaceAll(number.toString(), '');
    return text;
  }

  static removeLetterFromString({String text, String letter}) {
    text = text.toLowerCase().replaceAll(letter.toString(), '');
    return text;
  }
}
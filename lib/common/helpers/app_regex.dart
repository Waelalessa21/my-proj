class AppRegex {
  static String? validatePhoneNumber(String? phoneNumber) {
    //check if user enters nothing!
    if (phoneNumber == null || phoneNumber.isEmpty) {
      return 'الرقم فارغ!';
    }

    //Ensure it is 10 digits
    if (phoneNumber.length != 10) {
      return 'الرقم يجب أن يتكون من 10 خانات';
    }

    //helps to allow user enter in both english and arabic
    const arabicToEnglish = {
      '٠': '0',
      '١': '1',
      '٢': '2',
      '٣': '3',
      '٤': '4',
      '٥': '5',
      '٦': '6',
      '٧': '7',
      '٨': '8',
      '٩': '9',
    };

    phoneNumber = phoneNumber
        .split('')
        .map((char) {
          return arabicToEnglish[char] ?? char;
        })
        .join('');

    //Make sure this number is saudi number.
    final RegExp saudiPhoneRegex = RegExp(r'^05\d{8}$');
    if (!saudiPhoneRegex.hasMatch(phoneNumber)) {
      return 'الرقم غير صحيح! يجب أن يبدأ بـ 05 ويحتوي على 10 أرقام';
    }

    return null;
  }
}

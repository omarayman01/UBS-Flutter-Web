class DataValidations {
// Validators
  static const String validationEmail =
      r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?";
//Valid email address required: text@domain.com
  static const String validationPassword =
      r'(?=[A-Za-z0-9@#$%^&+!=]+$)^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[@#$%^&+!=])(?=.{8,}).*$';
//  password with 8+ characters, including uppercase, lowercase, numbers, and special characters like @#$%^&+!=
  static const String validationPassword2 = r'^(?=.*\d).{8,}$';
//password that must be at least 8 characters long, containing at least one alphabetical character and at least one digit
  static const String validatePasswordUpperCase = r'[A-Z]';
  static const String validatePasswordLowerCase = r'[a-z]';
  static const String validatePasswordDigits = r'[0-9]';
  static const String validatePasswordSpecialChar = r'[!@#$%^&*(),.?":{}|<>]';
  static const String validationName = r'^[a-z A-Z]+$';
  static const String validationPhone = r'^01(0|1|2|5)[0-9]{8}$';

  static const String validateNationalId = r'^[1-2]\d{12}[0-9]$';
  static const String validationLink =
      r'^(https?://)?(www\.)?[A-Za-z0-9]+\.[A-Za-z]{2,}(\S*)$';
  static const String userAccessToken = '';
}

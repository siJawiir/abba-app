class MyValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is Required';
    }

    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address!';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is Required';
    }

    /// Check for Minimum Password Length
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }

    /// Check for Uppercase Letter
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must be contain at least one Uppercase letter';
    }

    /// Check for Number
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must be contain at least one number';
    }

    /// Check for Special Character
    if (value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password must be contain at least one special character';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone Number is Required';
    }

    /// Check for PhoneNumber Length
    final phoneRegExp = RegExp(r'^\d{10,13}$'); //min 10 digits, max 13 digits
    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number format';
    }
    return null;
  }
}

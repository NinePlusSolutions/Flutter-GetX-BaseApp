class CommonErrorApi {
  static const String test = 'test';

  static const String donHaveAnAcount = 'Don’t have an Account ? ';

  static Map<String, String> errorMessages = {
    'SYS001E': ' cannot be empty.',
    'SYS002E': ' must have a value.',
    'SYS003E': ' cannot be duplicated.',
    'SYS004E': 'Account does not exist or is disconnected from Google.',
    'SYS005E': 'Invalid username or password.',
    'SYS006E': 'Token has expired.',
    'SYS007E': 'Account does not exist or is disconnected from Zalo.',
    'SYS008E': 'Username already exists.',
    'SYS009E': 'User not found.',
    'SYS010E': 'Passwords do not match.',
    'SYS011E': 'Failed to change password.',
    'SYS012E': ' already exists.',
    'SYS013E': 'Email is already registered.',
    'SYS014E': 'Your OTP has expired.',
    'SYS015E': 'An error occurred while confirming.',
    'SYS016E': ' is required.',
    'SYS017E': 'Password must be at least 8 characters long.',
    'SYS018E': 'Password must contain at least one uppercase letter.',
    'SYS019E': 'Password must contain at least one lowercase letter.',
    'SYS020E': 'Password must contain at least one digit.',
    'SYS021E': 'Email does not exist.',
    'SYS022E': 'Account is currently locked.',
    'SYS023E': 'Invalid OTP code.',
    'SYS024E': 'Failed to upload to S3.',
    'SYS025E': 'File name not found.',
    'SYS026E': 'Invalid file.',
    'SYS027E': 'Account is not linked to any social network.',
    'SYS028E': 'Account does not exist.',
    'SYS029E': 'Username is already in use.',
    'SYS030E':
        'User is registered. Please confirm your account by accessing this URL ',
    'SYS031E': 'Account has been confirmed. You can now use it.',
    'SYS032E': 'Invalid Facebook token.',
    'SYS033E': 'Account does not exist or is disconnected from Facebook.',
    'SYS034E': 'Account does not exist or is disconnected from Google.',
    'SYS035E': 'Password must be at least 6 characters long.',
    'SYS052E': 'Account deletion failed',
    'WPA001E': 'Data is being used elsewhere!',
    'WPA003E': 'Phone number or password must have a value.',
    'WPA004E': 'Phone number or password must have a value.',
    'WPA006E': 'Phone number or password does not exist.',
    'WPA011E': 'Invalid phone number.',
    'WPA012E': 'Does not exist at Phone number ',
    'WPA014E': 'Invalid phone number or password.',
    'WPA015E': 'You checked in today',
    'SYS055E': 'The quantity of products is insufficient for conversion.',
  };
}

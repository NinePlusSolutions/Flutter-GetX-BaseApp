class SocialSignUpBodyRequest {
  final int socialType;
  final String userId;
  final String username;
  final String email;
  final String password;

  SocialSignUpBodyRequest({
    required this.socialType,
    required this.userId,
    required this.username,
    required this.email,
    required this.password,
  });
}

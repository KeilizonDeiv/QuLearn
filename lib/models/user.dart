class QLUser {
  final String id;
  final String email;
  final String name;
  final bool isPremium;

  const QLUser({required this.id, required this.email, required this.name, this.isPremium = false});
}



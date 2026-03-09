class UserAccount {
  final String id;
  final String name;
  final DateTime birthDate;
  final String job;
  final String phoneNumber;
  final String email;

  UserAccount({
    required this.id,
    required this.name,
    required this.birthDate,
    required this.job,
    required this.phoneNumber,
    required this.email,
  });

  // Basic factory for empty/new user if needed
  factory UserAccount.empty() {
    return UserAccount(
      id: '',
      name: '',
      birthDate: DateTime.now(),
      job: '',
      phoneNumber: '',
      email: '',
    );
  }

  UserAccount copyWith({
    String? id,
    String? name,
    DateTime? birthDate,
    String? job,
    String? phoneNumber,
    String? email,
  }) {
    return UserAccount(
      id: id ?? this.id,
      name: name ?? this.name,
      birthDate: birthDate ?? this.birthDate,
      job: job ?? this.job,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'birthDate': birthDate.toIso8601String(),
      'job': job,
      'phoneNumber': phoneNumber,
      'email': email,
    };
  }

  factory UserAccount.fromMap(Map<String, dynamic> map) {
    return UserAccount(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      birthDate: map['birthDate'] != null 
          ? DateTime.parse(map['birthDate']) 
          : DateTime.now(),
      job: map['job'] ?? '',
      phoneNumber: map['phoneNumber'] ?? '',
      email: map['email'] ?? '',
    );
  }
}

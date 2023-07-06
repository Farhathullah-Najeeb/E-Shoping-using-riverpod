// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

class UserModel {
  final D d;
  UserModel({
    required this.d,
  });

  UserModel copyWith({
    D? d,
  }) {
    return UserModel(
      d: d ?? this.d,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'd': d.toMap(),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      d: D.fromMap(map['d'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserModel(d: $d)';

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.d == d;
  }

  @override
  int get hashCode => d.hashCode;
}

class D {
  final int Status;
  final String Message;
  final User user;
  D({
    required this.Status,
    required this.Message,
    required this.user,
  });

  D copyWith({
    int? Status,
    String? Message,
    User? user,
  }) {
    return D(
      Status: Status ?? this.Status,
      Message: Message ?? this.Message,
      user: user ?? this.user,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'Status': Status,
      'Message': Message,
      'user': user.toMap(),
    };
  }

  factory D.fromMap(Map<String, dynamic> map) {
    return D(
      Status: map['Status'].toInt() as int,
      Message: map['Message'] as String,
      user: User.fromMap(map['user'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory D.fromJson(String source) => D.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'D(Status: $Status, Message: $Message, user: $user)';

  @override
  bool operator ==(covariant D other) {
    if (identical(this, other)) return true;
  
    return 
      other.Status == Status &&
      other.Message == Message &&
      other.user == user;
  }

  @override
  int get hashCode => Status.hashCode ^ Message.hashCode ^ user.hashCode;
}

class User {
  final int userId;
  final int userTypeId;
  final String userName;
  final String password;
  final String imagePath;
  final int licenseid;
  User({
    required this.userId,
    required this.userTypeId,
    required this.userName,
    required this.password,
    required this.imagePath,
    required this.licenseid,
  });

  User copyWith({
    int? userId,
    int? userTypeId,
    String? userName,
    String? password,
    String? imagePath,
    int? licenseid,
  }) {
    return User(
      userId: userId ?? this.userId,
      userTypeId: userTypeId ?? this.userTypeId,
      userName: userName ?? this.userName,
      password: password ?? this.password,
      imagePath: imagePath ?? this.imagePath,
      licenseid: licenseid ?? this.licenseid,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userId': userId,
      'userTypeId': userTypeId,
      'userName': userName,
      'password': password,
      'imagePath': imagePath,
      'licenseid': licenseid,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      userId: map['userId'].toInt() as int,
      userTypeId: map['userTypeId'].toInt() as int,
      userName: map['userName'] as String,
      password: map['password'] as String,
      imagePath: map['imagePath'] as String,
      licenseid: map['licenseid'].toInt() as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'User(userId: $userId, userTypeId: $userTypeId, userName: $userName, password: $password, imagePath: $imagePath, licenseid: $licenseid)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;
  
    return 
      other.userId == userId &&
      other.userTypeId == userTypeId &&
      other.userName == userName &&
      other.password == password &&
      other.imagePath == imagePath &&
      other.licenseid == licenseid;
  }

  @override
  int get hashCode {
    return userId.hashCode ^
      userTypeId.hashCode ^
      userName.hashCode ^
      password.hashCode ^
      imagePath.hashCode ^
      licenseid.hashCode;
  }
}
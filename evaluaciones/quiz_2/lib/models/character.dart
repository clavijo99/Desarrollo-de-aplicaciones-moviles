import 'dart:convert';

class PaginatedCharacters {
	final int count;
	final String? next;
	final String? prev;
	final int pages;
	final List<CharacterModel> results;

	PaginatedCharacters({
		required this.count,
		required this.next,
		required this.prev,
		required this.pages,
		required this.results,
	});

	factory PaginatedCharacters.fromJson(Map<String, dynamic> json) {
		return PaginatedCharacters(
			count: json['count'] as int? ?? 0,
			next: json['next'] as String?,
			prev: json['prev'] as String?,
			pages: json['pages'] as int? ?? 0,
			results: (json['results'] as List<dynamic>?)
							?.map((e) => CharacterModel.fromJson(e as Map<String, dynamic>))
							.toList() ??
					[],
		);
	}

	Map<String, dynamic> toJson() => {
				'count': count,
				'next': next,
				'prev': prev,
				'pages': pages,
				'results': results.map((e) => e.toJson()).toList(),
			};

	@override
	String toString() => jsonEncode(toJson());
}

class CharacterModel {
	final int id;
	final int? age;
	final DateTime? birthdate;
	final String? gender;
	final String name;
	final String? occupation;
	final String? portraitPath;
	final List<String> phrases;
	final String? status;

	CharacterModel({
		required this.id,
		this.age,
		this.birthdate,
		this.gender,
		required this.name,
		this.occupation,
		this.portraitPath,
		required this.phrases,
		this.status,
	});

	factory CharacterModel.fromJson(Map<String, dynamic> json) {
		DateTime? parsedBirthdate;
		final bd = json['birthdate'];
		if (bd is String && bd.isNotEmpty) {
			try {
				parsedBirthdate = DateTime.parse(bd);
			} catch (_) {
				parsedBirthdate = null;
			}
		}

		return CharacterModel(
			id: json['id'] as int,
			age: json['age'] is int ? json['age'] as int : (json['age'] != null ? int.tryParse(json['age'].toString()) : null),
			birthdate: parsedBirthdate,
			gender: json['gender'] as String?,
			name: json['name'] as String? ?? '',
			occupation: json['occupation'] as String?,
			portraitPath: json['portrait_path'] as String?,
			phrases: (json['phrases'] as List<dynamic>?)?.map((e) => e.toString()).toList() ?? [],
			status: json['status'] as String?,
		);
	}

	Map<String, dynamic> toJson() => {
				'id': id,
				'age': age,
				'birthdate': birthdate?.toIso8601String(),
				'gender': gender,
				'name': name,
				'occupation': occupation,
				'portrait_path': portraitPath,
				'phrases': phrases,
				'status': status,
			};

	@override
	String toString() => jsonEncode(toJson());
}
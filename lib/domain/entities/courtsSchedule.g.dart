// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courtsSchedule.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCourtsScheduleCollection on Isar {
  IsarCollection<CourtsSchedule> get courtsSchedules => this.collection();
}

const CourtsScheduleSchema = CollectionSchema(
  name: r'CourtsSchedule',
  id: 4504273335062183470,
  properties: {
    r'courtName': PropertySchema(
      id: 0,
      name: r'courtName',
      type: IsarType.string,
    ),
    r'date': PropertySchema(
      id: 1,
      name: r'date',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    ),
    r'precipitationProbability': PropertySchema(
      id: 3,
      name: r'precipitationProbability',
      type: IsarType.string,
    ),
    r'scheduled': PropertySchema(
      id: 4,
      name: r'scheduled',
      type: IsarType.long,
    )
  },
  estimateSize: _courtsScheduleEstimateSize,
  serialize: _courtsScheduleSerialize,
  deserialize: _courtsScheduleDeserialize,
  deserializeProp: _courtsScheduleDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _courtsScheduleGetId,
  getLinks: _courtsScheduleGetLinks,
  attach: _courtsScheduleAttach,
  version: '3.1.0+1',
);

int _courtsScheduleEstimateSize(
  CourtsSchedule object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.courtName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.date;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.precipitationProbability;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _courtsScheduleSerialize(
  CourtsSchedule object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.courtName);
  writer.writeString(offsets[1], object.date);
  writer.writeString(offsets[2], object.name);
  writer.writeString(offsets[3], object.precipitationProbability);
  writer.writeLong(offsets[4], object.scheduled);
}

CourtsSchedule _courtsScheduleDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CourtsSchedule(
    courtName: reader.readStringOrNull(offsets[0]),
    date: reader.readStringOrNull(offsets[1]),
    name: reader.readStringOrNull(offsets[2]),
    precipitationProbability: reader.readStringOrNull(offsets[3]),
    scheduled: reader.readLongOrNull(offsets[4]),
  );
  object.isarId = id;
  return object;
}

P _courtsScheduleDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _courtsScheduleGetId(CourtsSchedule object) {
  return object.isarId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _courtsScheduleGetLinks(CourtsSchedule object) {
  return [];
}

void _courtsScheduleAttach(
    IsarCollection<dynamic> col, Id id, CourtsSchedule object) {
  object.isarId = id;
}

extension CourtsScheduleQueryWhereSort
    on QueryBuilder<CourtsSchedule, CourtsSchedule, QWhere> {
  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CourtsScheduleQueryWhere
    on QueryBuilder<CourtsSchedule, CourtsSchedule, QWhereClause> {
  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterWhereClause> isarIdEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterWhereClause>
      isarIdNotEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterWhereClause>
      isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterWhereClause> isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CourtsScheduleQueryFilter
    on QueryBuilder<CourtsSchedule, CourtsSchedule, QFilterCondition> {
  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      courtNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'courtName',
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      courtNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'courtName',
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      courtNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'courtName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      courtNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'courtName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      courtNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'courtName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      courtNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'courtName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      courtNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'courtName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      courtNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'courtName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      courtNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'courtName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      courtNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'courtName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      courtNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'courtName',
        value: '',
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      courtNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'courtName',
        value: '',
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      dateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'date',
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      dateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'date',
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      dateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      dateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      dateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      dateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      dateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'date',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      dateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'date',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      dateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'date',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      dateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'date',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      dateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: '',
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      dateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'date',
        value: '',
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      isarIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isarId',
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      isarIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isarId',
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      isarIdEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      isarIdGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      isarIdLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      isarIdBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      precipitationProbabilityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'precipitationProbability',
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      precipitationProbabilityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'precipitationProbability',
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      precipitationProbabilityEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'precipitationProbability',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      precipitationProbabilityGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'precipitationProbability',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      precipitationProbabilityLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'precipitationProbability',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      precipitationProbabilityBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'precipitationProbability',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      precipitationProbabilityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'precipitationProbability',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      precipitationProbabilityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'precipitationProbability',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      precipitationProbabilityContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'precipitationProbability',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      precipitationProbabilityMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'precipitationProbability',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      precipitationProbabilityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'precipitationProbability',
        value: '',
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      precipitationProbabilityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'precipitationProbability',
        value: '',
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      scheduledIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'scheduled',
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      scheduledIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'scheduled',
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      scheduledEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'scheduled',
        value: value,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      scheduledGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'scheduled',
        value: value,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      scheduledLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'scheduled',
        value: value,
      ));
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterFilterCondition>
      scheduledBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'scheduled',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CourtsScheduleQueryObject
    on QueryBuilder<CourtsSchedule, CourtsSchedule, QFilterCondition> {}

extension CourtsScheduleQueryLinks
    on QueryBuilder<CourtsSchedule, CourtsSchedule, QFilterCondition> {}

extension CourtsScheduleQuerySortBy
    on QueryBuilder<CourtsSchedule, CourtsSchedule, QSortBy> {
  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterSortBy> sortByCourtName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'courtName', Sort.asc);
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterSortBy>
      sortByCourtNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'courtName', Sort.desc);
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterSortBy>
      sortByPrecipitationProbability() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'precipitationProbability', Sort.asc);
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterSortBy>
      sortByPrecipitationProbabilityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'precipitationProbability', Sort.desc);
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterSortBy> sortByScheduled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scheduled', Sort.asc);
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterSortBy>
      sortByScheduledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scheduled', Sort.desc);
    });
  }
}

extension CourtsScheduleQuerySortThenBy
    on QueryBuilder<CourtsSchedule, CourtsSchedule, QSortThenBy> {
  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterSortBy> thenByCourtName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'courtName', Sort.asc);
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterSortBy>
      thenByCourtNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'courtName', Sort.desc);
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterSortBy>
      thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterSortBy>
      thenByPrecipitationProbability() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'precipitationProbability', Sort.asc);
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterSortBy>
      thenByPrecipitationProbabilityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'precipitationProbability', Sort.desc);
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterSortBy> thenByScheduled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scheduled', Sort.asc);
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QAfterSortBy>
      thenByScheduledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'scheduled', Sort.desc);
    });
  }
}

extension CourtsScheduleQueryWhereDistinct
    on QueryBuilder<CourtsSchedule, CourtsSchedule, QDistinct> {
  QueryBuilder<CourtsSchedule, CourtsSchedule, QDistinct> distinctByCourtName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'courtName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QDistinct> distinctByDate(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QDistinct>
      distinctByPrecipitationProbability({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'precipitationProbability',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CourtsSchedule, CourtsSchedule, QDistinct>
      distinctByScheduled() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'scheduled');
    });
  }
}

extension CourtsScheduleQueryProperty
    on QueryBuilder<CourtsSchedule, CourtsSchedule, QQueryProperty> {
  QueryBuilder<CourtsSchedule, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<CourtsSchedule, String?, QQueryOperations> courtNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'courtName');
    });
  }

  QueryBuilder<CourtsSchedule, String?, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<CourtsSchedule, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<CourtsSchedule, String?, QQueryOperations>
      precipitationProbabilityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'precipitationProbability');
    });
  }

  QueryBuilder<CourtsSchedule, int?, QQueryOperations> scheduledProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'scheduled');
    });
  }
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer_entity_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OfferEntityViewModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get town => throw _privateConstructorUsedError;
  PriceEntityViewModel get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OfferEntityViewModelCopyWith<OfferEntityViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferEntityViewModelCopyWith<$Res> {
  factory $OfferEntityViewModelCopyWith(OfferEntityViewModel value,
          $Res Function(OfferEntityViewModel) then) =
      _$OfferEntityViewModelCopyWithImpl<$Res, OfferEntityViewModel>;
  @useResult
  $Res call({int id, String title, String town, PriceEntityViewModel price});

  $PriceEntityViewModelCopyWith<$Res> get price;
}

/// @nodoc
class _$OfferEntityViewModelCopyWithImpl<$Res,
        $Val extends OfferEntityViewModel>
    implements $OfferEntityViewModelCopyWith<$Res> {
  _$OfferEntityViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? town = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      town: null == town
          ? _value.town
          : town // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceEntityViewModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceEntityViewModelCopyWith<$Res> get price {
    return $PriceEntityViewModelCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OfferEntityViewModelImplCopyWith<$Res>
    implements $OfferEntityViewModelCopyWith<$Res> {
  factory _$$OfferEntityViewModelImplCopyWith(_$OfferEntityViewModelImpl value,
          $Res Function(_$OfferEntityViewModelImpl) then) =
      __$$OfferEntityViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String town, PriceEntityViewModel price});

  @override
  $PriceEntityViewModelCopyWith<$Res> get price;
}

/// @nodoc
class __$$OfferEntityViewModelImplCopyWithImpl<$Res>
    extends _$OfferEntityViewModelCopyWithImpl<$Res, _$OfferEntityViewModelImpl>
    implements _$$OfferEntityViewModelImplCopyWith<$Res> {
  __$$OfferEntityViewModelImplCopyWithImpl(_$OfferEntityViewModelImpl _value,
      $Res Function(_$OfferEntityViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? town = null,
    Object? price = null,
  }) {
    return _then(_$OfferEntityViewModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      town: null == town
          ? _value.town
          : town // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceEntityViewModel,
    ));
  }
}

/// @nodoc

class _$OfferEntityViewModelImpl implements _OfferEntityViewModel {
  const _$OfferEntityViewModelImpl(
      {required this.id,
      required this.title,
      required this.town,
      required this.price});

  @override
  final int id;
  @override
  final String title;
  @override
  final String town;
  @override
  final PriceEntityViewModel price;

  @override
  String toString() {
    return 'OfferEntityViewModel(id: $id, title: $title, town: $town, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferEntityViewModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.town, town) || other.town == town) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, town, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferEntityViewModelImplCopyWith<_$OfferEntityViewModelImpl>
      get copyWith =>
          __$$OfferEntityViewModelImplCopyWithImpl<_$OfferEntityViewModelImpl>(
              this, _$identity);
}

abstract class _OfferEntityViewModel implements OfferEntityViewModel {
  const factory _OfferEntityViewModel(
      {required final int id,
      required final String title,
      required final String town,
      required final PriceEntityViewModel price}) = _$OfferEntityViewModelImpl;

  @override
  int get id;
  @override
  String get title;
  @override
  String get town;
  @override
  PriceEntityViewModel get price;
  @override
  @JsonKey(ignore: true)
  _$$OfferEntityViewModelImplCopyWith<_$OfferEntityViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

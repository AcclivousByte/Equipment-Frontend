// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'equipment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EquipmentState {
  List<Equipment> get selectedEquipments => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EquipmentStateCopyWith<EquipmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentStateCopyWith<$Res> {
  factory $EquipmentStateCopyWith(
          EquipmentState value, $Res Function(EquipmentState) then) =
      _$EquipmentStateCopyWithImpl<$Res, EquipmentState>;
  @useResult
  $Res call({List<Equipment> selectedEquipments, bool isLoading});
}

/// @nodoc
class _$EquipmentStateCopyWithImpl<$Res, $Val extends EquipmentState>
    implements $EquipmentStateCopyWith<$Res> {
  _$EquipmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedEquipments = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      selectedEquipments: null == selectedEquipments
          ? _value.selectedEquipments
          : selectedEquipments // ignore: cast_nullable_to_non_nullable
              as List<Equipment>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EquipmentStateImplCopyWith<$Res>
    implements $EquipmentStateCopyWith<$Res> {
  factory _$$EquipmentStateImplCopyWith(_$EquipmentStateImpl value,
          $Res Function(_$EquipmentStateImpl) then) =
      __$$EquipmentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Equipment> selectedEquipments, bool isLoading});
}

/// @nodoc
class __$$EquipmentStateImplCopyWithImpl<$Res>
    extends _$EquipmentStateCopyWithImpl<$Res, _$EquipmentStateImpl>
    implements _$$EquipmentStateImplCopyWith<$Res> {
  __$$EquipmentStateImplCopyWithImpl(
      _$EquipmentStateImpl _value, $Res Function(_$EquipmentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedEquipments = null,
    Object? isLoading = null,
  }) {
    return _then(_$EquipmentStateImpl(
      selectedEquipments: null == selectedEquipments
          ? _value._selectedEquipments
          : selectedEquipments // ignore: cast_nullable_to_non_nullable
              as List<Equipment>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EquipmentStateImpl
    with DiagnosticableTreeMixin
    implements _EquipmentState {
  const _$EquipmentStateImpl(
      {required final List<Equipment> selectedEquipments,
      required this.isLoading})
      : _selectedEquipments = selectedEquipments;

  final List<Equipment> _selectedEquipments;
  @override
  List<Equipment> get selectedEquipments {
    if (_selectedEquipments is EqualUnmodifiableListView)
      return _selectedEquipments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedEquipments);
  }

  @override
  final bool isLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EquipmentState(selectedEquipments: $selectedEquipments, isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EquipmentState'))
      ..add(DiagnosticsProperty('selectedEquipments', selectedEquipments))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EquipmentStateImpl &&
            const DeepCollectionEquality()
                .equals(other._selectedEquipments, _selectedEquipments) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_selectedEquipments), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EquipmentStateImplCopyWith<_$EquipmentStateImpl> get copyWith =>
      __$$EquipmentStateImplCopyWithImpl<_$EquipmentStateImpl>(
          this, _$identity);
}

abstract class _EquipmentState implements EquipmentState {
  const factory _EquipmentState(
      {required final List<Equipment> selectedEquipments,
      required final bool isLoading}) = _$EquipmentStateImpl;

  @override
  List<Equipment> get selectedEquipments;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$EquipmentStateImplCopyWith<_$EquipmentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

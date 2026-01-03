// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TodoEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoEvent()';
}


}

/// @nodoc
class $TodoEventCopyWith<$Res>  {
$TodoEventCopyWith(TodoEvent _, $Res Function(TodoEvent) __);
}


/// Adds pattern-matching-related methods to [TodoEvent].
extension TodoEventPatterns on TodoEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadTodos value)?  loadTodos,TResult Function( _AddTodo value)?  addTodo,TResult Function( _UpdateTodo value)?  updateTodo,TResult Function( _DeleteTodo value)?  deleteTodo,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadTodos() when loadTodos != null:
return loadTodos(_that);case _AddTodo() when addTodo != null:
return addTodo(_that);case _UpdateTodo() when updateTodo != null:
return updateTodo(_that);case _DeleteTodo() when deleteTodo != null:
return deleteTodo(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadTodos value)  loadTodos,required TResult Function( _AddTodo value)  addTodo,required TResult Function( _UpdateTodo value)  updateTodo,required TResult Function( _DeleteTodo value)  deleteTodo,}){
final _that = this;
switch (_that) {
case _LoadTodos():
return loadTodos(_that);case _AddTodo():
return addTodo(_that);case _UpdateTodo():
return updateTodo(_that);case _DeleteTodo():
return deleteTodo(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadTodos value)?  loadTodos,TResult? Function( _AddTodo value)?  addTodo,TResult? Function( _UpdateTodo value)?  updateTodo,TResult? Function( _DeleteTodo value)?  deleteTodo,}){
final _that = this;
switch (_that) {
case _LoadTodos() when loadTodos != null:
return loadTodos(_that);case _AddTodo() when addTodo != null:
return addTodo(_that);case _UpdateTodo() when updateTodo != null:
return updateTodo(_that);case _DeleteTodo() when deleteTodo != null:
return deleteTodo(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? query)?  loadTodos,TResult Function( Todo todo)?  addTodo,TResult Function( Todo todo)?  updateTodo,TResult Function( int id)?  deleteTodo,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadTodos() when loadTodos != null:
return loadTodos(_that.query);case _AddTodo() when addTodo != null:
return addTodo(_that.todo);case _UpdateTodo() when updateTodo != null:
return updateTodo(_that.todo);case _DeleteTodo() when deleteTodo != null:
return deleteTodo(_that.id);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? query)  loadTodos,required TResult Function( Todo todo)  addTodo,required TResult Function( Todo todo)  updateTodo,required TResult Function( int id)  deleteTodo,}) {final _that = this;
switch (_that) {
case _LoadTodos():
return loadTodos(_that.query);case _AddTodo():
return addTodo(_that.todo);case _UpdateTodo():
return updateTodo(_that.todo);case _DeleteTodo():
return deleteTodo(_that.id);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? query)?  loadTodos,TResult? Function( Todo todo)?  addTodo,TResult? Function( Todo todo)?  updateTodo,TResult? Function( int id)?  deleteTodo,}) {final _that = this;
switch (_that) {
case _LoadTodos() when loadTodos != null:
return loadTodos(_that.query);case _AddTodo() when addTodo != null:
return addTodo(_that.todo);case _UpdateTodo() when updateTodo != null:
return updateTodo(_that.todo);case _DeleteTodo() when deleteTodo != null:
return deleteTodo(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _LoadTodos implements TodoEvent {
  const _LoadTodos({this.query});
  

 final  String? query;

/// Create a copy of TodoEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadTodosCopyWith<_LoadTodos> get copyWith => __$LoadTodosCopyWithImpl<_LoadTodos>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadTodos&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'TodoEvent.loadTodos(query: $query)';
}


}

/// @nodoc
abstract mixin class _$LoadTodosCopyWith<$Res> implements $TodoEventCopyWith<$Res> {
  factory _$LoadTodosCopyWith(_LoadTodos value, $Res Function(_LoadTodos) _then) = __$LoadTodosCopyWithImpl;
@useResult
$Res call({
 String? query
});




}
/// @nodoc
class __$LoadTodosCopyWithImpl<$Res>
    implements _$LoadTodosCopyWith<$Res> {
  __$LoadTodosCopyWithImpl(this._self, this._then);

  final _LoadTodos _self;
  final $Res Function(_LoadTodos) _then;

/// Create a copy of TodoEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = freezed,}) {
  return _then(_LoadTodos(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _AddTodo implements TodoEvent {
  const _AddTodo(this.todo);
  

 final  Todo todo;

/// Create a copy of TodoEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddTodoCopyWith<_AddTodo> get copyWith => __$AddTodoCopyWithImpl<_AddTodo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddTodo&&(identical(other.todo, todo) || other.todo == todo));
}


@override
int get hashCode => Object.hash(runtimeType,todo);

@override
String toString() {
  return 'TodoEvent.addTodo(todo: $todo)';
}


}

/// @nodoc
abstract mixin class _$AddTodoCopyWith<$Res> implements $TodoEventCopyWith<$Res> {
  factory _$AddTodoCopyWith(_AddTodo value, $Res Function(_AddTodo) _then) = __$AddTodoCopyWithImpl;
@useResult
$Res call({
 Todo todo
});


$TodoCopyWith<$Res> get todo;

}
/// @nodoc
class __$AddTodoCopyWithImpl<$Res>
    implements _$AddTodoCopyWith<$Res> {
  __$AddTodoCopyWithImpl(this._self, this._then);

  final _AddTodo _self;
  final $Res Function(_AddTodo) _then;

/// Create a copy of TodoEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? todo = null,}) {
  return _then(_AddTodo(
null == todo ? _self.todo : todo // ignore: cast_nullable_to_non_nullable
as Todo,
  ));
}

/// Create a copy of TodoEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TodoCopyWith<$Res> get todo {
  
  return $TodoCopyWith<$Res>(_self.todo, (value) {
    return _then(_self.copyWith(todo: value));
  });
}
}

/// @nodoc


class _UpdateTodo implements TodoEvent {
  const _UpdateTodo(this.todo);
  

 final  Todo todo;

/// Create a copy of TodoEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateTodoCopyWith<_UpdateTodo> get copyWith => __$UpdateTodoCopyWithImpl<_UpdateTodo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateTodo&&(identical(other.todo, todo) || other.todo == todo));
}


@override
int get hashCode => Object.hash(runtimeType,todo);

@override
String toString() {
  return 'TodoEvent.updateTodo(todo: $todo)';
}


}

/// @nodoc
abstract mixin class _$UpdateTodoCopyWith<$Res> implements $TodoEventCopyWith<$Res> {
  factory _$UpdateTodoCopyWith(_UpdateTodo value, $Res Function(_UpdateTodo) _then) = __$UpdateTodoCopyWithImpl;
@useResult
$Res call({
 Todo todo
});


$TodoCopyWith<$Res> get todo;

}
/// @nodoc
class __$UpdateTodoCopyWithImpl<$Res>
    implements _$UpdateTodoCopyWith<$Res> {
  __$UpdateTodoCopyWithImpl(this._self, this._then);

  final _UpdateTodo _self;
  final $Res Function(_UpdateTodo) _then;

/// Create a copy of TodoEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? todo = null,}) {
  return _then(_UpdateTodo(
null == todo ? _self.todo : todo // ignore: cast_nullable_to_non_nullable
as Todo,
  ));
}

/// Create a copy of TodoEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TodoCopyWith<$Res> get todo {
  
  return $TodoCopyWith<$Res>(_self.todo, (value) {
    return _then(_self.copyWith(todo: value));
  });
}
}

/// @nodoc


class _DeleteTodo implements TodoEvent {
  const _DeleteTodo(this.id);
  

 final  int id;

/// Create a copy of TodoEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteTodoCopyWith<_DeleteTodo> get copyWith => __$DeleteTodoCopyWithImpl<_DeleteTodo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteTodo&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'TodoEvent.deleteTodo(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteTodoCopyWith<$Res> implements $TodoEventCopyWith<$Res> {
  factory _$DeleteTodoCopyWith(_DeleteTodo value, $Res Function(_DeleteTodo) _then) = __$DeleteTodoCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$DeleteTodoCopyWithImpl<$Res>
    implements _$DeleteTodoCopyWith<$Res> {
  __$DeleteTodoCopyWithImpl(this._self, this._then);

  final _DeleteTodo _self;
  final $Res Function(_DeleteTodo) _then;

/// Create a copy of TodoEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteTodo(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

/*
 * Copyright 2020 Peter Vincent
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import 'package:clean_code_models/core/errors/failure.dart';
import 'package:clean_code_models/number_trivia.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class NumberTriviaState extends Equatable {
  NumberTriviaState([List props = const <dynamic>[]]) : super(props);
}

class EmptyState extends NumberTriviaState {}

class LoadingState extends NumberTriviaState {}

class LoadedState extends NumberTriviaState {
  final NumberTrivia numberTrivia;

  LoadedState({@required this.numberTrivia}) : super([numberTrivia]);
}

class LoadedManyState extends NumberTriviaState {
  final List<NumberTrivia> list;

  LoadedManyState(this.list) : super(list);
}

class ErrorState extends NumberTriviaState {
  final Failure failure;

  ErrorState({@required this.failure}) : super([failure]);
}

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


library number_trivia;
import 'package:built_value/built_value.dart';

part 'number_trivia.g.dart';

abstract class NumberTrivia implements Built<NumberTrivia, NumberTriviaBuilder> {
  // fields go here
  int get id;
  String get text;
  int get number;

  NumberTrivia._();

  factory NumberTrivia([updates(NumberTriviaBuilder b)]) = _$NumberTrivia;
}

import 'package:dart_application_1/IceCream';
import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

import 'dart:io';

void main(List<String> arguments) {
  // print("El resultado es ${outputFunction(4, 7)}");
  // optionalFunction(name: 'David', age: 18);
  // mapExamples();
  // listLoop();
  // setLoop();
  // mapLoop();
  // septimoEjercicio();
  var chocolate = IceCream();
  chocolate.flavor = 'Chocolate';
  chocolate.charge();
}

void greetings(String name) {
  print('Hello $name');
}

void numberExample() {
  //   // Variables numericas
  //   int age = 17;
  //   int tst = -10;
  //   int large = 01000000000000;

  //   double age2 = 31.1;
  //   double age3 = 31;

  //   num deci = 10.1;
  //   num entero = 2;
}

void stringExample() {
  //   // Variables Strings

  //   String name = 'Juan David';
  //   String lastName = 'Marin Ruiz';

  //   // String fullName = name + ' ' + lastName;
  //   String fullName = "$name $lastName";

  //   print(fullName);
}

void booleanExample() {
  //   // Variables booleanas

  //   bool imHappy = true;
  //   bool imSad = false;
}

void typeDynamicExample() {
  //   // Tipo Dinamico
  //   dynamic example = 'Hola mundo';
  //   print(example);
  //   example = 33;
  //   print(example);
}

void tiposFijosExample() {
  //   // Tipos fijos
  //   final String example2 = "juan";
  //   const String example3 = "juan";
}

void conversionesExample() {
  //   // Conversiones
  //   String tuNumber = "31";
  //   int number = int.parse(tuNumber);
  //   // int mult = number * number;
  //   // print(mult);

  //   int tuString = 615;
  //   String string = tuString.toString();
  //   print(string);

  //   String toDouble = '31.2';
  //   double doubleOk = double.parse(toDouble);
  //   print(doubleOk);
}

void operacionesMatematicasExample() {
  //   // Operaciones matematicas
  //   int a = 3;
  //   // int b = 2;
  //   // int suma = a + b;
  //   // int resta = a - b;
  //   // int multiplicacion = a * b;
  //   // double division = a / b;
  //   // int divisionExacta = a ~/ b;
  //   // int modulo = a % b;
  //   // a += b;
  //   // a -= b;
  //   // a *= b;

  //   // a++;
  //   // a--;
  //   print(++a);
}

/*
+-----------------------------+
|          EJERCICIOS         |
+-----------------------------+
*/

void primerEjercicio() {
  /*
      🎯EJERCICIO 1: CALCULADORA DE EDAD

      Oabjetivo:
      Escribe un programa en Dart que pida al usuario su año de nacimiento y calcule du edad actual

      🔹Pasos a seguir:
      1️⃣ Pedir al usuario su año de nacimiento (Leerlo como string)
      2️⃣ Convertir el año de nacimiento a un numero entero
      3️⃣ Calcular la edad restando el año de nacimiento al año actual (20250)
      4️⃣ Mostrar el resultado en un mensaje como: "Tienes X años."

  */

  print('Ingresa tu año de nacimiento');
  String date = stdin.readLineSync()!;
  int numberDate = int.parse(date);
  int ageDate = 2025 - numberDate;
  print('Tienes $ageDate años');
}

void segundoEjercicio() {
  /*
      🎯EJERCICIO 2: CALCULADORA DE PROPINA

      Oabjetivo:
      Escribe un programa en Dart que calcule cuánto debe pagar cada persona después de dividir la cuenta y agrega una propina

      🔹Pasos a seguir:
      1️⃣ Pedir al usuario el total de la cuenta.
      2️⃣ Pedir el porcentaje de propina a agregar
      3️⃣ Calcular el total a pagar sumando la propina
      4️⃣ Pedir el numero de personas para dividir la cuenta.
      5️⃣ Calcular cuánto debe de pagar cada persona:
      6️⃣ Mostrar el resultado en pantalla:

  */

  int total = 20000;
  int porcentaje = 20;
  int persons = 4;
  double propina = total * porcentaje / 100;
  double cuentaTotal = total + propina;
  double cuentaIndividual = cuentaTotal / persons;
  print('Cada uno debe pagar $cuentaIndividual pesos');
}

void estructurasCondicionales() {
  // Estructuras condicionales

  // int userAge = 13;
  // if (userAge >= 18) {
  //   print('Puedes entrar');
  // } else {
  //   print('No puedes entrar');
  // }

  // // Operador ternario
  // String ageResult =
  //     (userAge >= 18) ? 'Eres ,ayor de esada' : 'No eres mayor de edas';

  // print(ageResult);

  // int experienceYears = 5;
  // if (experienceYears > 8) {
  //   print('Eres un programador SENIOR');
  // } else if (experienceYears >= 5) {
  //   print('Eres un programador MID');
  // } else {
  //   print('Eres un programador JUNIOR');
  // }

  // print('Introduce el dia de la semana');
  // int numberOfTheWeek = int.parse(stdin.readLineSync()!);
  // //   if (numberOfTheWeek == 1) {
  // //     print('Lunes');
  // //   } else if (numberOfTheWeek == 2) {
  // //     print('Martes');
  // //   } else if (numberOfTheWeek == 3) {
  // //     print('Miercoles');
  // //   } else if (numberOfTheWeek == 4) {
  // //     print('Jueves');
  // //   } else if (numberOfTheWeek == 5) {
  // //     print('Viernes');
  // //   } else if (numberOfTheWeek == 6) {
  // //     print('sabado');
  // //   } else if (numberOfTheWeek == 7) {
  // //     print('domingo');
  // //   } else {
  // //     print('No seleccionaste ningun numero');
  // //   }
  // switch (numberOfTheWeek) {
  //   case 1:
  //     print('Lunes');
  //     break;
  //   case 2:
  //     print('Martes');
  //     break;
  //   case 3:
  //     print('Miercoles');
  //     break;
  //   case 4:
  //     print('Jueves');
  //     break;
  //   case 5:
  //     print('Viernes');
  //     break;
  //   case 6:
  //     print('Sabado');
  //     break;
  //   case 7:
  //     print('Domingo');
  //     break;
  //   default:
  //     print('No elijio ningun numero valido');
  //     break;
  // }
}

void tercerEjercicio() {
  /*
    🎯 EJERCICIO 3: IDENTIFICAR NUMEROS POSITIVOS Y NEGATIVOS 

    Ojetivo:
    Escribe un programa en Dart que determine si un numero ingresado por el usuario es positivo, negativo o cero.

  */

  print('Inserta un numero');
  int number = int.parse(stdin.readLineSync()!);
  if (number > 0) {
    print('El número es positivo');
  } else if (number == 0) {
    print('El número es cero');
  } else {
    print('El número es negativo');
  }
}

void cuartoEjercicio() {
  /*
    🎯 EJERCICIO 3: MESES DEL AÑO

    Ojetivo:
    Escribe un programa en dart que reciba un número entre el 1 y el 12 e improima el nombre del mes correspondiente del año.

  */
  print('Escribe un numero del 1 al 12');
  int number = int.parse(stdin.readLineSync()!);
  switch (number) {
    case 1:
      print('Enero');
      break;
    case 2:
      print('Febrero');
      break;
    case 3:
      print('Marzo');
      break;
    case 4:
      print('Abril');
      break;
    case 5:
      print('Mayo');
      break;
    case 6:
      print('Junio');
      break;
    case 7:
      print('Julio');
      break;
    case 8:
      print('Agosto');
      break;
    case 9:
      print('Septiembre');
      break;
    case 10:
      print('Octubre');
      break;
    case 11:
      print('Noviembre');
      break;
    case 12:
      print('Diciembre');
      break;
    default:
      print('No elegiste una opción correcta');
      break;
  }
}

void quintoEjercicio() {
  /*

    🎯 EJERCICIO 5: SUMA DE NUMEROS PARES EN UNA LISTA 

    Ojetivo:
    Escribe un programa en Dart que tome una lista de numeros enteros y calcule la suma de todos los numeros pares en la lista.

    🔹Ejemplo: 
    Entrasa : [1,2,3,4,5,6]
    Salida: La suma de los numeros pares es: 12
  */

  List<int> numbers = [1, 2, 3, 4, 5, 6];
  int suma = 0;
  for (var number in numbers) {
    if (number % 2 == 0) {
      suma += number;
    }
  }
  print('La suma de los números pares es: $suma');
}

void sextoEjercicio() {
  /*

    🎯 EJERCICIO 5: SUMA DE NUMEROS PARES EN UNA LISTA 

    Ojetivo:
    Escribe un programa en Dart que reciba una lista de las palabras con algunas repetidas y almecene solo las palabras únicas en un Set. Luego, muestra ek conjunto resultante.

    🔹Ejemplo: 
    Entrasa : ["dart", "flutter", "dart", "codigo", "flutter", "movil"]
    Salida: {dart, flutter, codigo, movil}
  */
  List<String> datos = [
    "dart",
    "flutter",
    "dart",
    "codigo",
    "flutter",
    "movil",
  ];
  Set<String> datoSinDuplicar = {};
  datoSinDuplicar.addAll(datos);
  print(datoSinDuplicar);
  Set<String> datoSinDuplicar2 = {};
  for (var dato in datos) {
    datoSinDuplicar2.add(dato);
  }
  print(datoSinDuplicar2);
}

void septimoEjercicio() {
  /*

    🎯 EJERCICIO 7: CONTAR LA FRECUENCIA DE PALABRAS EN UN MAP 

    Ojetivo:
    Escribe un programa en Dart que reciba una lista de palabras y cuente cúantas veces aparece cada una, almacenando el resultado en un Map.

    🔹Ejemplo: 
    Entrasa : ["dart", "flutter", "dart", "codigo", "flutter", "movil"]
    Salida: {dart: 3, flutter: 2, codigo: 1, movil: 1}
  */
  List<String> datos = [
    "dart",
    "codigo",
    "dart",
    "flutter",
    "dart",
    "flutter",
    "movil",
    "dart",
  ];
  Map<String, int> datosContados = {};
  int count = 0;
  for (var i = 0; i < datos.length; i++) {
    String dato = datos[i];
    if (datosContados.containsKey(dato)) {
      datosContados[dato] = datosContados[dato]! + 1;
    } else {
      count = 1;
      datosContados.addAll({dato: count});
    }
  }
  print(datosContados);
}

/*
  +----------------------------+
  |         Metodos            |
  +----------------------------+
*/

void simpleFunction() {
  print('Hola mundo!');
}

void inputFunction(int a, int b) {
  int result = a + b;
  print("El resultado es: $result");
}

int outputFunction(int a, int b) {
  return a + b;
}

int outputFunction2(int a, int b) => a + b;

// Función con parametros opcionales

void optionalFunction({String name = 'Juan', int age = 17}) {
  print("Eres $name y tienes $age años");
}

// Función con un solo parametro definido

void optionalFunction2(String name, {int age = 17}) {
  print("Eres $name y tienes $age años");
}

/*
+-----------------------------+
|    ESTRCUTURA DE DATOS      |
+-----------------------------+
*/

void listExamples() {
  List<String> names = ["Juan", "Dayan", "Melody"];
  var names2 = ["David", "Shirley", "Marin Arenas"];
  // print(names[2]);
  // print(names.last); // Entrega el ultimo valor del array
  // print(names.first); // antonimo de .last
  // print(names.length); // Longitud del array
  // print(names[names.length - 1]);
  // names[2] = "Adeline"; // Cambia el valor
  // names.insert(1, "Arenas"); // Inserta un nuevo valor sin cambiar el que esta en la posición
  // names.add('Melody'); // Añade a lo ultimo del array
  names.addAll(names2); // Añade una lista a otra
  // names.remove('Melody'); // Elimina el primer dato que coincida los otros los deja
  // names.removeAt(1); // Elimina el dato de la posición 1
  names.clear(); // Limpia todo el array
  print(names);
}

/*
+-----------------------------+
|            SETS             |
+-----------------------------+

No permite valores duplicados 

*/

void setExamples() {
  Set<String> names = {"Juan", "Dayan"};
  Set<String> names2 = {"Juan", "Dayan"};
  names.add('Marin Arenas');
  names.add('Juan');
  names.remove('Juan');
  names.clear();
  names.removeAll(names2);
  // names.length;
  bool result = names.contains("Juan");
  if (result) {
    print('Juan esta en la lista');
  } else {
    print('Juan NO esta en la lista');
  }
  print(names);

  List<String> newNames = ['Juan', 'Dayan', 'Melody'];
  Set<String> newNamesSet = Set.from(newNames);
  print(newNamesSet);
}

/*
+-----------------------------+
|            MAPS             |
+-----------------------------+
*/

void mapExamples() {
  Map<String, int> people = {
    'Juan': 17,
    'Dayan': 17,
    'Melody': 2,
    'Adeline': 1,
  };
  people['Juan'] = 18;
  people.addAll({'David': 18, 'Shirley': 17});
  people['Pikachu'] = 1290;
  people.remove('Pikachu');

  people.containsKey('Juan');
  people.containsValue(19);

  people.length;
  // people.clear();
  print(people.values);
  print(people.keys);
  print(people['Juan']);
}

/*
+-----------------------------+
|           BUCLES            |
+-----------------------------+
*/

void listLoop() {
  List<int> numbers = [1, 2, 3, 5, 6, 7, 8];

  // // ciclo for
  // for (var i = 0; i < numbers.length; i++) {
  //   print('Con el for basico tenemos ${numbers[i]}');
  // }

  // for (var number in numbers) {
  //   print('Con el segundo for tenemos $number');
  // }

  // No es recomendable usar el forEach asi 
  numbers.forEach((item) {
    print(item);
  });

  numbers.forEach(print); // Muestra directamente el elemento
}

void setLoop() {
  Set<int> numbers = {1, 2, 3, 5, 6, 7, 8};
  for (var number in numbers) {
    print('Con el for basico tenemos EN EL SET $number');
  }

  numbers.forEach(print);
}

void mapLoop() {
  Map<int, String> names = {1: 'Juan', 2: 'Dayan', 3: 'Melody'};
  // Para hacer un for en general en un MAP se una entries
  for (var element in names.entries) {
    print(
      'EN EL MAP con el for basico tenemos ${element.key} y ${element.value} por separado',
    );
  }
  // Para hacer un for de solo las claves se usa el key
  for (var element in names.keys) {
    print('EN EL MAP con el for basico tenemos $element');
  }
  // Para hacer un for de solo los valores se usa el values
  for (var element in names.values) {
    print('EN EL MAP con el for basico tenemos $element');
  }

  names.forEach((key, value) {
    print('La clave es $key y el valor es $value');
  });
}

/*
+-----------------------------+
|        Clases y POO         |
+-----------------------------+
*/

// conceptos_basicos.dart

void main() { // Función principal donde inicia la ejecución del programa
  // 1. TIPOS DE DATOS BÁSICOS

  String name = "juan"; // Cadena de texto (string)
  int numero = 1; // Número entero (int)
  double numeroDecimal = 12.5; // Número decimal (double)
  bool active = false; // Valor booleano (true o false)

  // 2. ASIGNACIÓN Y OPERADORES DE ASIGNACIÓN: +=, -=, *=, ~/=
  int a = 5; // Se asigna el valor inicial 5 a la variable a

  a += 5; // Suma 5 al valor actual de 'a' (a = a + 5)
  a -= 2; // Resta 2 al valor actual de 'a' (a = a - 2)
  a *= 3; // Multiplica 'a' por 3 (a = a * 3)
  a ~/= 2; // División entera de 'a' entre 2 (descarta decimales)

  print("el resultado de a = ${a}"); // Imprime el valor final de 'a'

  // 3. OPERADORES ARITMÉTICOS: +, -, *, /, ~/, %
  int suma = 1 + 2; // Suma 1 + 2
  print("la suma es: ${suma}"); // Imprime el resultado de la suma

  int resta = 10 - 5; // Resta 10 - 5
  print("la resta es: ${resta}"); // Imprime el resultado de la resta

  int multiplicacion = 2 * 10; // Multiplicación 2 * 10
  print("la multiplicacion es: ${multiplicacion}"); // Imprime el resultado de la multiplicación

  double division = 10 / 2; // División que retorna double
  print("la disvision es: ${division}"); // Imprime el resultado de la división

  int divisionEntera = 7 ~/ 2; // División entera que descarta los decimales
  print("la divison entera es: ${divisionEntera}"); // Imprime el resultado de la división entera

  int modulo = 7 % 2; // Módulo, obtiene el residuo de la división (7 dividido entre 2 = residuo 1)
  print("El modulo es ${modulo}"); // Imprime el resultado del módulo

  // 4. LISTAS: add, addAll, remove
  List lista = ["hola", 1, 3, true]; // Lista dinámica con diferentes tipos de datos
  List<String> nombres = ["juan", "pedro"]; // Lista que solo acepta strings

  print("mi lista: ${nombres}"); // Muestra la lista inicial

  nombres.add("camilo"); // Agrega un elemento al final de la lista
  print("mi lista: ${nombres}"); // Muestra la lista actualizada

  nombres.addAll(["diego", 'estiven']); // Agrega múltiples elementos a la lista
  print("mi lista: ${nombres}"); // Muestra la lista actualizada

  nombres.remove("pedro"); // Elimina un elemento específico de la lista
  print("mi lista: ${nombres}"); // Muestra la lista actualizada

  String primerNombre = nombres[0]; // Accede al primer elemento de la lista
  print("primer nombre: ${primerNombre}"); // Imprime el primer nombre

  // 5. MAPAS (clave: valor)
  Map<String, dynamic> objeto = { // Crea un mapa con clave tipo String y valor de tipo dinámico
    "nombre": "juan", // Clave 'nombre' con valor "juan"
    "identificacion": 1234, // Clave 'identificacion' con valor entero
    "activo": true, // Clave 'activo' con valor booleano
  };

  print("el objetos es: ${objeto}"); // Imprime el mapa completo
  print("el nombre es: ${objeto['nombre']}"); // Accede al valor de la clave 'nombre'

  // 6. CONDICIONALES clásicos y ternarios
  if (10 > 2) { // Si 10 es mayor que 2
    print("es mayor"); // Imprime "es mayor"
  } else { // Si no se cumple la condición
    print("no es mayor"); // Imprime "no es mayor"
  }

  1 > 2 ? print("es mayor") : print("no es mayor"); // Operador ternario: evalúa si 1 > 2


  // 7. BUCLES

  // for
  for (int i = 0; i < nombres.length; i++) {
    print(nombres[i]);
  }

  // for-in
  for (String n in nombres) {
    print(n);
  }

  // while
  int counter = 0;

  while (counter < 10) {
    print(counter);
    counter++;
  }

  // 8. FUNCIONES

  // void , int , String , double , bool
  void sumar(int n1, int n2) {
    print('la suma es: ${n1 + n2}');
  }

  sumar(1, 2);

  int restar(int n1, int n2) {
    return n1 - n2;
  }

  int resultado = restar(10, 5);

  print('la resta es: ${resultado}');

  // Función flecha (lambda)

  double n(int n1, int n2) => n1 / n2;

  // 9. VARIABLES NULLABLES Y OPERADOR ??

  String? nombre = 'juan';

  if (nombre != null) {
    print(nombre);
  } else {
    print("La variable aun no se ha asignado");
  }

  int n1 = 1;
  int? n2;

  if (n2 != null) {
    print(n1 + n2);
  } else {
    int n2Validate = n2 ?? 12;
  }

  // 10. CREACIÓN DE CLASES

  final miClase = Persona('Ana', 'Perez');
}

// creacion de una clase en dart
class Persona {
  // definicion de atributos nullos ( ? )
  String? name;
  String? apellido;

  // creacion del constructor
  //cuando definimos loa atributos dentro del [] son atributos opcionales no nombrados
  Persona([String? nombre, String? apellido]);
}

// creacion de una clase con atributos requeridos
class Estudiante {
  final String nombre;

  Estudiante({required this.nombre});
}

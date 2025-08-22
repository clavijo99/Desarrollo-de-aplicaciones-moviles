// conceptos_basicos.dart

void main() {
  // 1. TIPOS DE DATOS BÁSICOS

  String name = "juan";
  int numero = 1;
  double numeroDecimal = 12.5;
  bool active = false;

  // 2. ASIGNACIÓN Y OPERADORES DE ASIGNACIÓN, +,-,*,~/
  int a = 5;

  a += 5;
  a -= 2;
  a *= 3;
  a ~/= 2;

  print("el resultado de a = ${a}");

  // 3. OPERADORES ARITMÉTICOS, +,-,*, /, ~/, %

  int suma = 1 + 2;

  print("la suma es: ${suma}");

  int resta = 10 - 5;

  print("la resta es: ${resta}");

  int multiplicacion = 2 * 10;

  print("la multiplicacion es: ${multiplicacion}");

  double division = 10 / 2;

  print("la disvision es: ${division}");

  int divisionEntera = 7 ~/ 2;

  print("la divison entera es: ${divisionEntera}");

  int modulo = 7 % 2;

  print("El modulo es ${modulo}");

  // 4. LISTAS, add, remove

  List lista = ["hola", 1, 3, true];

  List<String> nombres = ["juan", "pedro"];

  print("mi lista: ${nombres}");

  nombres.add("camilo");

  print("mi lista: ${nombres}");

  nombres.addAll(["diego", 'estiven']);

  print("mi lista: ${nombres}");

  nombres.remove("pedro");

  print("mi lista: ${nombres}");

  String primerNombre = nombres[0];

  print("primer nombre: ${primerNombre}");

  // 5. MAPAS (clave: valor)

  Map<String, dynamic> objeto = {
    "nombre": "juan",
    "identificacion": 1234,
    "activo": true,
  };

  print("el objetos es: ${objeto}");
  print("el nombre es: ${objeto['nombre']}");

  // 6. CONDICIONALES clasicos y ternarios

  if (10 > 2) {
    print("es mayor");
  } else {
    print("no es mayor");
  }

  1 > 2 ? print("es mayor") : print("no es mayor");

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

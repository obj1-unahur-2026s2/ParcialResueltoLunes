# Universidad nacional de Hurlingam
## Programación con Objetos I
## Examen parcial

**APELLIDO, NOMBRE:**

**DNI:**

## Criterio de evaluación

Se evaluará su solución prestando especial atención a:

- Entendimiento y correcta aplicación de los conceptos vistos en la cursada: Objeto, mensaje, polimorfismo, colecciones, bloques, referencias, clases, herencia y tests unitarios.
- Correcto uso de recursos del lenguaje, como el atajo `property` y los métodos predefinidos disponibles para los distintos tipos de objetos.
- Prolijidad y legibilidad del código presentado.

# Juanita R. Ebelde y la Red comunitaria UNAHUR

Juanita está cursando en la UNAHUR hace unos años y este cuatri un profe adoctrinador le hizo leer algo de Foucault y Byung-Chul Han. El adoctrinamiento funcionó y ahora se le metió en la cabeza que hay que buscar una salida frente al control y la vigilancia masiva de las sociedades por parte de la "élite dueña del mundo, que intenta re-colonizar Latinoamérica y otros varios lugares".
Juanita sabe que resistir requiere organización y solidaridad. Se juntó entonces en persona con sus compañeres, charlaron, y decidieron armar una **Red comunitaria UNAHUR** para auditar el software que usamos y otras cuestiones.
Te toca modelar en Wollok dicho sistema, con las características que se detallan abajo.

## Los dueños
Juanita dice que hay unos pocos hombres que manejan todo a su gusto, respondiendo a intereses de dudosa moral. Todos aportan un plus de control y una toxicidad extra a lo que toquen. Ellos son:
- **`marcosZucaritas`**: El rey de los metaversos de cartón. Suma un plus de 30 puntos al índice de control de cualquier app o espacio que opere, y un extra de toxicidad de 20.
- **`samAiMan`**: El gurú de la inteligencia artificial bélica. Su presencia suma un plus masivo de procesamiento y seducción cognitiva, convirtiendo cada consulta en datos no pagos. Control 40 y toxicidad 30.
- **`elonSocialistaNacional`**: El mesías intergaláctico del humo y los cohetes. Suma un plus moderado de control (20) pero acelera la alienación. Aporta 15 de toxicidad.
- **`donaldoPDF`**: El showman del poder político, algo cuestionado por sus preferencias íntimas. Sus plataformas de agitación suman un nivel crítico de toxicidad (50) y polarización. El plus de control es 25.
- **`benjaNetAndYahoo`**: El estratega imperialista militar. Sus sistemas elevan al máximo la exigencia de control (plus 50) y genera un extra de toxicidad de 40.

## Herramientas

Juanita entiende que estamos rodeadxs de herramientas físicas o digitales que usamos (o nos usan) y las clasificó. De toda herramienta se sabe su dueño (la comunidad, por defecto) y su uso acumulado (en horas, que arranca en 0 y puede variar).

Cualquier herramienta debe saber responder:
- Su nivel de toxicidad, que es igual al extra de toxicidad que aporta su dueño.
- Su índice de control, que depende exclusivamente y es distinto en cada tipo de herramienta (ver detalle abajo).
- Si es de control o no. Juanita considera que una herramienta es de control cuando su índice de control es mayor a 0.

Además una herramienta debe poder registrar uso dada una cierta cantidad de horas. Esto aumenta el anteriormente mencionado uso acumulado, sumándole esa cantidad.

Cada vez que se crea una nueva herramienta se deben indicar las características necesarias según su clasificación, y nunca puede ser genérica. Es decir que siempre pertenecerá a una categoría de las mencionadas a continuación:

### 1. Espacio disciplinario
Juanita dice que son "estructuras panópticas físicas destinadas a la disciplina del cuerpo". Para cada espacio se indica un nivel de exigencia física (un número) y la cantidad de personas dentro.
Un espacio debe saber responder:
- Si cumple las normas disciplinarias, lo que sucede si la cantidad de personas dentro es de al menos 100.
- Su índice de control, que se calcula sumando su nivel de exigencia física, el plus de control de su dueño y, si cumple con las normas disciplinarias, un extra de 25.

### 2. Dispositivo digital
Son los que controlan la mente, fomentan la autoexplotación y convierten a lxs usuarixs en mano de obra gratuita. Todo dispositivo posee una cantidad de notificaciones de refuerzo positivo diarias y un nivel de toxicidad base que se indican al crearlo. Tener en cuenta que la cantidad de notificaciones no es fija.
- Su nivel de toxicidad se calcula sumando su toxicidad base al valor normal de cualquier herramienta.
- Su índice de control es el producto entre las notificaciones diarias y su nivel de toxicidad. Nunca debe responder menos de 10.
- Al registrar uso se comporta como cualquier herramienta primero y luego suma a las notificaciones diarias el producto entre las horas y su toxicidad base. De todas formas, el valor resultante de las notificaciones diarias nunca debe superar 50.

### 3. Herramienta libre
Su dueño es la comunidad (plus control y toxicidad extra ambos son 0) y cuando se le indica registrar uso no produce ningún efecto. Su índice de control es igual al plus de control del dueño.
Dado su alto nivel de personalización y transparencia, las herramientas libres son las únicas a las que se les puede consultar quién es su dueño y también pueden setear su uso acumulado en un valor fijo dado en cualquier momento.

## La red comunitaria UNAHUR

La red posee ciertas herramientas que puede gestionar de la siguiente manera:

- Agregar una lista de herramientas a la red.
- Quitar una lista de herramientas a la red.
- Decir la lista de herramientas totalitarias, que son aquellas cuyo índice de control sea mayor a 50 puntos.
- Decir la cantidad de herramientas tóxicas, o sea cuántas herramientas de la red tienen un nivel de toxicidad mayor a 70.
- Indicar si la red está completamente alienada, lo que sucede si todas las herramientas registradas son de control.
- Indicar el nivel de peligrosidad de una herramienta dada. Se calcula la sumando el nivel de toxicidad y el índice de control de la misma.
- Decir si alguna herramienta es sana, que sucede cuando al menos una tiene un nivel de peligrosidad menor o igual a 0.
- Listar los niveles de peligrosidad de todas las herramientas.
- Indicar de dichos niveles de peligrosidad cuál es el máximo.
- Poder registrar uso para todas las herramientas de la red, dando la cantidad de horas.

## Test mínimos a realizar

Partiendo del siguiente escenario inicial:

- Un espacio disciplinario cuyo dueño es donaldoPDF, con 30 de exigencia física y 100 personas dentro.
- Un dispositivo digital, dueño marcosZucaritas, con 10 notificaciones diarias y 20 de toxicidad base.
- Una herramienta libre comunitaria.
- Estas tres herramientas registradas en la red comunitaria.

Validar las siguientes pruebas unitarias:

1. El dispositivo digital y el espacio disciplinario se consideran herramientas totalitarias. Probar entonces que la lista de herramientas totalitarias de la red no está vacía.
2. La lista de peligrosidades de la red es exactamente [130, 440, 0]
3. Si se quita la herramienta libre, la red pasa a estar completamente alienada.
4. Si se registra en la red una nueva "app bélica" (dispositivo digital con dueño samAiMan, 0 notificaciones diarias y 40 de toxicidad base) y luego se indica registrar un uso de 2 horas para todas las herramientas, el nivel máximo de peligrosidad de la red es 3570.
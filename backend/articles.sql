-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-01-2020 a las 04:20:48
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `xiara`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(256) NOT NULL,
  `read_time` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `body` text NOT NULL,
  `summary` text NOT NULL,
  `banner` varchar(1024) NOT NULL,
  `meta_tag` varchar(160) NOT NULL,
  `meta_description` varchar(160) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articles`
--

INSERT INTO `articles` (`id`, `title`, `read_time`, `author_id`, `body`, `summary`, `banner`, `meta_tag`, `meta_description`, `date`) VALUES
(1, 'Titulo Ejemplificacion', 5, 22, 'A lo largo de estos años, he tenido la suerte de poder trabajar con diferentes frameworks JavaScript. Cada uno de ellos ha tenido, para mi, sus puntos fuertes y sus puntos débiles. Nunca he tenido un apego incondicional con ninguno de ellos y eso me ha hecho ver a los frameworks como lo que son: herramientas que pueden ayudarnos tanto como hacernos pasar un buen dolor de cabeza. Esto ha hecho que pueda valorar mucho qué funcionalidades son necesarias y qué argumentos tener en cuenta a la hora de decantarme por uno o por otro dependiendo del contexto en el que me he encontrado.\r\n\r\nViéndolo con perspectiva, en muy poco tiempo, hemos visto como estos frameworks han ido pasando por diferentes generaciones y como han ido madurando. Se podría decir que a día de hoy, en lo que yo suelo considerar la 3ª Generación, nos encontramos con frameworks bastante maduros que nos ayudan a realizar un gran número de tareas que pueden ser ejecutados en diferentes navegadores a la vez.\r\n\r\nReactJS, Angular y EmberJS son los frameworks que representan un mayor uso en el mercado y que han demostrado ser una garantía de robustez y escalabilidad. A esta terna, se ha unido hace una temporada VueJS. Un framework con el que llevo trabajando durante un buen tiempo y del que he intentado estudiar cada funcionalidad.\r\n\r\nEn este post, me gustaría exponer cinco razones que han hecho que VueJS se haya convertido en mi framework JavaScript favorito. Espero que estas razones os convenzan para que en vuestra próxima prueba de concepto o proyecto personal, le deis una oportunidad.\r\n1. Un framework para aprender y usar de manera progresiva\r\n\r\nVueJS se autodenomina como un framework progresivo. Cuando encaramos un desarrollo con VueJS, podemos indicar qué partes del framework queremos incluir. VueJS está modularizado en diferentes librerías separadas que permiten ir añadiendo funcionalidad en el momento que las vayamos necesitando.\r\n\r\nLa modularización en librerías de un framework no es algo nuevo en el desarrollo front. Tanto ReactJS como Angular cuentan con una organización parecida de su código base. Lo que diferencia a VueJS de otras alternativas es lo bien desacopladas que se encuentran estas partes, lo fácil que es extender la funcionalidad core y lo bien que trabajan todas sus partes una vez que se decide incluir más módulos.\r\n\r\nEl core principal de VueJS está formado por una librería encargada de renderizar vistas en el navegador. Su forma de organizar el código es por medio de pequeños componentes que contienen todo el HTML, CSS y JavaScript necesario para funcionar como pieza independiente. Estas piezas se van componiendo en un árbol jerárquico de componentes hasta formar nuestra aplicación. Usar esta librería es tan fácil como importar el script en nuestra página HTML.\r\n\r\nSi lo único que necesitamos como desarrolladores es una mejor forma de organizar y renderizar nuestros pequeños componentes visuales, nos quedamos ahí y no incluiríamos nada más. En el momento que nuestra aplicación empezase a crecer, contamos con librerías para gestionar las rutas de nuestra aplicación como vue-router o con librerías para gestionar el estado global de la aplicacion como pueda ser vuex. Si nuestra aplicación tuviese que tener una gran optimización o tener buen SEO, podemos incluir y trabajar con vue-server-rendering.\r\nPlataforma Vue 1\r\n\r\nY así nos pasaría con muchas más funcionalidades. La cantidad de librerías con las que se cuentan (ya sean creadas por los desarrolladores oficiales o por la comunidad) es tan grande y cubre tal espectro de funcionalidades, que será difícil que nos encontremos desamparados y sin esa utilidad que nos es indispensable.\r\n2. Funcionalidades intuitivas, modernas y fáciles de usar\r\n\r\nVueJS no ha reinventado la rueda. Nuestro amigo verde fue creado como proyecto personal por Evan You, antiguo desarrollador de Google, en un intento de simplificar el funcionamiento de AngularJS. El framework empezó a ser tan fácil y simple de usar que, una vez que su creador decidió subirlo a los repositorios de Github, la comunidad fue usándolo en cada vez más proyectos.\r\n\r\nEmpresas como Xiaomi, Alibaba o Gitlab son algunos de sus grandes exponentes. Si miramos las estadísticas de las expectativas de uso en el año 2018 encontramos que muchas personas y empresas están interesadas en conocerlo y usarlo.\r\nVue Vs React\r\n\r\nPero ¿Por qué este hype? ¿Por qué la comunidad tiene tan buenas palabras de este framework?\r\n\r\nBajo mi punto de vista, se debe a lo bien que Evan You ha sabido trasladar todo lo bueno que tienen otros frameworks como Angular, ReactJS y EmberJS y desechar aquello que al desarrollador no le aportaba o le era complejo de usar.\r\n\r\nSi tuviésemos que definir a VueJS por cuatro de sus aspectos conceptuales serían estos:\r\n\r\n    El dato como centro de todo: En VueJS, los componentes gestionan un modelo de datos interno. Estos componentes están diseñado bajo el patrón MVVM. Esto quiere decir que el desarrollador no tiene que preocuparse tanto por cómo o cuando renderiza un modelo en pantalla y sí más en cómo tiene que ser la lógica que gestiona ese modelo. El renderizado de HTML es delegado a la librería. Nosotros simplemente jugamos con datos, métodos y plantillas HTML donde indicamos cuando se tiene que pintar cada parte del modelo.\r\n\r\n    El sistema de componentes es reactivo: VueJS sabe comunicarse muy bien por medio de eventos asíncronos. Un componente hijo se puede comunicar con su componente padre por medio de eventos. Dos partes del sistema pueden comunicarse por medio de eventos. Los propios modelos de un componente son capaces de enviar eventos para indicar cuándo renderizarse. El sistema de componentes se convierte en un organismo vivo que reacciona muy bien al cambio y realiza acciones programadas por el desarrollador. Esto se debe a que el módelo de datos del componente es envuelto por getters y setters especiales encargados de gestionar estas reacciones.\r\n\r\n    Sin fricción con otras librerías o recursos: Cuando me enfrenté a ReactJS sufrí un poco con el concepto de que todo era JS. Tener JSX no me ayudó para su aprendizaje. Angular me medio obligó a incluir TypeScript para escribir componentes. Me gusta TypeScript, lo que no me gusta es que me impongan herramientas. VueJS es el más concienciado con esto: Usa lo que quieras, usa la herramienta con la que te encuentres cómodo, céntrate en escribir HTML, CSS y JavaScript. Si quieres añadir JSX o TypeScript hazlo. Si no lo quieres incluir ahora, hazlo más tarde. Esto hace que desarrollar en VueJS sea más intuitivo. Es casi como trabajar con JavaScript nativo. Particularmente, me parece un paso muy natural si vienes de trabajar con jQuery.\r\n\r\n    Todo está en el sitio que tiene que estar. Cuando empecé con VueJS, me di cuenta que miraba la documentación menos que en la de otras herramientas. Asimilaba la sintaxis antes. Incluso la propia intuición me permitía usar la librería sin tener que mirar la documentación previamente. Esto se debía a que el naming de la API de VueJS es bastante intuitiva. Con saber lo que significa props, data y methods y qué puedo incluir en estas partes, podía empezar a hacer mucho, con muy pocos conocimientos. De hecho, si no os explico de qué trata cada una de estas partes de la API, lo más seguro es que supieseis de qué estoy hablando. Es una de las virtudes de VueJS. Ser fácil, intuitivo y poco recargado. Cada parte está en el lugar que debería estar. Esto es algo dificil de entender hasta que no se está desarrollando algo en VueJS, pero creedme, que si le dáis una oportunidad, esto lo notareis.\r\n\r\n3. Un ecosistema muy variado que cubre todo lo necesario\r\n\r\nCuando me decanto por una herramienta de trabajo u otra, busco que la experiencia de desarrollo sea lo más cómoda posible. VueJS tiene a su alrededor una serie de herramientas que ayudan a conseguir que el desarrollador sepa en todo momento qué está haciendo y cómo lo está haciendo. Hay tres herramientas que me ayudan mucho a la hora de trabajar con VueJS.\r\n\r\nUna de ellas es la línea de comandos (CLI) especial que han creado sobre NodeJS. Esta herramienta permite empezar un proyecto con un boilerplate (o plantilla base) configurado a nuestro gusto de una manera fácil y sencilla. Simplemente descargando desde npm la herramienta vue-cli, podremos crear una estructura inicial con la que trabajar que cumple con la guía de estilo pactada por la comunidad. Bajo mi punto de vista, es la mejor manera de empezar a conocer la plataforma.\r\n\r\nAdemás, una vez que estamos desarrollando, lo que más me ayuda a saber qué estoy haciendo y si lo estoy haciendo bien son los procesos de depuración. Es cierto que Firefox y Google Chrome ya cuentan con excepcionales herramientas para depurar código. Pero hay una serie de conceptos internos que VueJS gestiona como el estado, las propiedades o los eventos que las herramientas estándar no suelen conocer.\r\n\r\nEl equipo de desarrollo de VueJS mantiene una extensión de Chrome que nos permite ver cómo se renderiza nuestro árbol de componentes, cómo se están lanzando y registrando eventos, cómo se guarda el estado interno de cada componente o cómo se está comportando el estado global de la aplicación. Esta es una buena herramienta que nos ayudará mucho en nuestro día a día. Simplemente hay que ir al store de Chrome y descargarla.\r\nChrome Vejs Extension\r\n\r\nPero esto no queda aquí, y es que además de encontrar facilidades a la hora de empezar y de depurar un proyecto con VueJS, contamos con plugins para los IDEs más usados en la actualidad. Yo en mi caso, uso Visual Studio Code (VSC) para desarrollar aplicaciones front y me gusta mucho tener instalado un plugin para realizar diferentes acciones de VueJS llamado Vetur.\r\n\r\nEste plugin, me permite tener intellisense de la sintaxis de Vue en VSC. Me permite escribir componentes más rápido gracias a los snippets por defecto que tiene, me permite tener pintado y estilizado mí codigo para que en todo momento sepa cuales son las palabras reservadas del framework. Por último, me permite usar herramientas como Prettier con solo usar un atajo de teclado. Cómo véis es una herramienta muy útil.\r\n\r\nLo bueno de estas herramientas es que se encuentran en constante evolución. Siempre que sale una nueva versión del framework, la comunidad y el equipo core se encarga de mantenerlas al día y siempre están añadiendo funcionalidad extra para hacer el trabajo a los desarrolladores un poco más fácil.\r\n4. Una comunidad muy activa\r\n\r\nTodo lo anterior puede estar muy bien, pero si no hay un buen grupo de personas que esté detrás de un proyecto tan importante como este, poco puede importar ¿Cuántas veces nos ha pasado, que hemos usado una librería y con el paso del tiempo, hemos tenido que ser nosotros quien la hemos tenido que mantener porque su creador no le ha dado soporte? En la época de esplendor de jQuery, me pasó más de lo que me hubiera gustado.\r\n\r\nEn ese sentido, simplemente tenemos que mirar este repositorio oficial de VueJS llamado ‘Awesome VueJS’. En este repositorio se incluyen todos aquellos recursos relevantes que la comunidad está creando sobre esta herramienta: Libros, charlas, librerías, posts, manuales… todo lo que se nos ocurra está aquí.\r\n\r\nVueJS es un proyecto Open Source que cuenta con una comunidad muy viva. Además, es un proyecto Open Source ‘real’. ¿Qué quiero decir con ‘real’? Quiero decir que es un proyecto gestionado, desarrollado, evolucionado y planteado por y para la comunidad. Si miramos a sus competidores más directos, tanto Angular (creado por Google) como ReactJS (creado por Facebook) tienen un sistema Open Source más rígido y menos abierto de lo que nos gustaría.\r\n\r\nEl roadmap, el versionado, las decisiones, siempre o casi siempre, son tomadas desde los equipos formados por estas dos grandes empresas. En este caso, el modelo de VueJS se asemeja más con el de EmberJS. Proyectos financiados por la comunidad, creados por la comunidad, sin ningún gigante que se preocupe por ellos.\r\n\r\nEsto, como en todo, puede ser un arma de doble filo. La esencia del software libre, el espíritu de compartir con la comunidad, está presente en VueJS. No existen intereses de terceros. No existen cambios repentinos por decisiones de negocio. Simplemente se intenta seguir un roadmap que pueda satisfacer a todo el mundo partiendo de unas bases conceptuales. Esto es bueno porque te da independencia y te da sensación de cercanía.\r\n\r\nLa comunidad en VueJS se siente escuchada. Muchas partes del framework se han quitado o mejorado por las issues que se han abierto en los repositorios del proyecto.\r\n\r\nPlanes como que VueJS renderice en Web Components nativos han sido gracias a la presión de la comunidad.\r\n\r\nSin embargo, VueJS sufre de un mal que si con el tiempo no se tiene en cuenta, puede ser el final del proyecto: VueJS todavía depende demasiado de su creador. Si se revisan los commits y estadísticas del proyecto, se puede observar que Evan You copa todavía muchos de los rankings de actividad. Empieza a haber gente importante en el proyecto (como Sarah Drasner o Guillaume Chau), pero parece que todavía todo gira alrededor del desarrollador oriental.\r\n\r\nEsto, por muy mal que nos parezca su sistema de software libre, no va a pasar en otros frameworks más corporativos. Google, ReactJS van a seguir mantenidos porque se encuentran dentro de la estrategia de desarrollo de sus empresas. ¿Qué esto puede cambiar? Pues sí, tal vez, pero que sepamos que contamos con esto. VueJS tiene pinta de ser un proyecto que a medio-largo plazo va a seguir funcionando muy bien, pero es normal que se vigilen los movimientos de la comunidad.\r\n5. Todo el código de un componente se encuentra en un único fichero\r\n\r\nVale, quizá tampoco sea nada novedoso. Habíamos comentado que en ReactJS todo se transformaba en JavaScript, por tanto, todo el código de un componente, ya sea HTML (JSX en este caso), CSS y JavaScript se va a encontrar en un único fichero con extensión .jsx. Y quizá estos sistemas no lo veas ni como una ventaja ¿Qué pasa con la separación de conceptos? ¿Ya no debemos separar el contenido, de su estilo y su lógica de negocio?\r\n\r\nBueno, pues sí, en VueJS, los componentes también guardan todo lo necesario en ficheros con extensión .vue. Estos ficheros contienen todo el HTML, el CSS y el JavaScript de un componente. Entonces ¿en qué se diferencia de ReactJS? Se diferencia en que en VueJS, los conceptos están juntos en un fichero, pero no revueltos.\r\n\r\nPara verlo más claro, veamos el ejemplo de un componente en VueJS:\r\n\r\n\r\n\r\n<template>\r\n    <form class=\"search-box\" @submit.prevent=\"search\">\r\n        <input type=\"text\" placeholder=\"Ej. Cinema Paradiso\" v-model=\"query\" />\r\n        <button>Buscar</button>', 'Unresumen muy corto para este sitio', 'una ural', '', '', '2020-01-04'),
(2, 'fsfdsfs', 43, 4, 'fdfd', 'werew', 'werwe', '', '', '2020-01-04');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

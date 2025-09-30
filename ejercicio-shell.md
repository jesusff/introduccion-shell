Se pide hacer una script `letter_frequency.sh` que calcule la frecuencia con la que aparece cada letra en un texto dado. Tomaremos `writing/data/LittleWomen.txt` como ejemplo de texto en inglés, para obtener una estimación de la frecuencia con la que aparece cada letra en este idioma. La script debe:

 1. Descargar el fichero https://raw.githubusercontent.com/swcarpentry/shell-novice/f32646f/data/shell-lesson-data.zip
 1. Descomprimirlo
 1. Delegar la tarea de extraer la frecuencia de las letras en una función (`letter_freq`) que admita la ruta de un fichero como argumento.
 1. Crear un fichero con un informe, con el mismo nombre que el fichero original, pero con extensión `lfr` (_letter frecuency_). Es decir, en este ejemplo, se llamará `LittleWomen.lfr`. Este informe contendrá las frecuencias de cada letra, ordenadas por frecuencia descendente. Este fichero se creará en la ruta en la que se ejecute la script, independientemente de dónde esté el fichero original.
 
Consultad vuestras dudas a través del foro de la asignatura en Moodle.

**IMPORTANTE:**

 * Incluid vuestro nombre en la script.
 * Comentad en la script **todas** las fuentes de información utilizadas (incluye URL al recurso concreto) : libros, tutoriales online, foros stackoverflow y similares, herramientas de inteligencia artificial (chatGPT?), vuestro/a compañero/a de clase, etc.
 * El programa debe funcionar.
 * El programa debe funcionar en cualquier ordenador (que tenga _bash_, obviamente). Evitad rutas absolutas de vuestro ordenador.
 * Las líneas de la script no deben exceder los 80 caracteres.

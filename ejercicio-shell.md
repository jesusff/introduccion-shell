Se pide: hacer una script `elements.sh` que:

 1. Descargue el fichero https://raw.githubusercontent.com/swcarpentry/shell-novice/f32646f/data/shell-lesson-data.zip (NO es el utilizado en clase)
 1. Que lo descomprima
 1. Que lea los ficheros `.xml` que hay en el directorio `data/elements` y los copie en otro directorio (nuevo) llamado `elements_by_atomic_number`, de forma que los nombres de fichero sean del tipo `008_Oxigen.xml`.
 1. Que cambie los permisos de estos ficheros para que sean editables por el grupo y para que no los pueda ver ni editar el resto de usuarios.
 1. Que cree un fichero tar.gz con estos ficheros y elimine los ficheros y directorios intermedios.

Para comprimir ficheros `tar.gz`, consultad la chuleta y la ayuda (--help) del comando `tar`.
Consultad vuestras dudas a través del foro de la asignatura en Moodle.
Comentad en la script todas las fuentes de información utilizadas (libros, tutoriales online, foros stackoverflow y similares, etc.)

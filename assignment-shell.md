Write a script `elements.sh` to:

 1. Download the file https://raw.githubusercontent.com/swcarpentry/shell-novice/f32646f/data/shell-lesson-data.zip
 1. Unzip it
 1. Read the `.xml` files in folder `data/elements` and copy them in another (new) folder named `elements_by_atomic_number`
 1. The file names in this folder should follow the pattern e.g. `008_Oxigen.xml`.
 1. Change file permissions to be writable by the group and have no read/write permissions for other users.
 1. Create a tar.gz file with these new files, removing all intermediate files and folders created.

Use the cheatsheet and help (`tar --help`) to create `tar.gz` files.
Use Moodle's forum to discuss the problems found.
Use comments in the script to acknowledge **all sources of information** used (books, online tutorials, stackoverflow threads, etc.).

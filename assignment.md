Create a script called `letter_frequency.sh` that calculates the frequency of appearance of each letter in a given text.
We will use `writing/data/LittleWomen.txt` as an example of English text to estimate the letter frequency in this language.
The script should:

1. Download the file from https://raw.githubusercontent.com/swcarpentry/shell-novice/f32646f/data/shell-lesson-data.zip
1. Unzip it.
1. Delegate the task of extracting the letter frequency to a function (`letter_freq`) that accepts the file path as an argument.
1. Create a report in a file with the same name as the original one, but with the extension `.lfr` (_letter frequency_). In this example, it will be named `LittleWomen.lfr`. This report will contain the frequencies of each letter, ordered by descending frequency. The file will be created in the directory where the script is executed, regardless of where the original file is located.

Please ask any questions via the course forum on Moodle.

**IMPORTANT:**

- Include your name in the script.
- Comment **all** sources of information used in the script (include URLs to the specific resources): books, online tutorials, StackOverflow or similar forums, AI tools (ChatGPT?), your classmate, etc.
- The program must work.
- The program must run on any computer (with _bash_, obviously). Avoid using absolute paths from your computer.
- The script lines must not exceed 80 characters.

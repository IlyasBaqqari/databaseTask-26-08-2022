This makes use of a shell script called asdaDatabase.sh which calls three other shell scripts:

00.createSchema.sh
01.createTables.sh
02.inputData.sh

Each of these three scripts has an associated SQL script which it will run:

00.createSchema.sql
01.createTables.sql
02.inputData.sql

To ensure this script runs, please open 00.createSchema.sh in VS Code and change the first line so that it makes use of your own admin username and password.

Once done, open the terminal and navigate to the folder with the .sh files inside, and then run the command:

./asdaDatabase.sh

This should run all of the scripts along with the SQL files, creating the ASDA database.
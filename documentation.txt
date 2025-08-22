# Task Manager (Bash) - Documentation

A simple tool for writing down tasks, checking them off, editing, and keeping them in one place.

## Installation

1. Download and save the file `taskmanager.sh` into any folder.  
2. Grant execution permission:  
   `chmod +x taskmanager.sh`  
3. Run the script:  
   `bash taskmanager.sh`

**Tool will create `tasks.txt` in the folder `~/taskdatabase/` in your home directory, so they remain saved even after closing the manager.** 
**If u want to change a directory for task database, rewrite it at the beginning of the script**

## Usage

After launching the tool, the main menu will appear:

1. **Show tasks**     
   - Displays the list of tasks with numbers and status (`[ ]` = not done, `[x]` = done).

2. **Add task**  
   - Enter the task description, and it will be saved in the database.

3. **Mark task as done**  
   - Enter the task number to mark it with `[x]`.

4. **Delete task**  
   - Enter the task number to remove it from the list.

5. **Exit**  
   - Quits the program.

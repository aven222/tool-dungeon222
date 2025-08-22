#!/bin/bash
# Task Manager

# Absolute path to the task file in the home directory, change it if u want.
task_file="$HOME/taskdatabase/tasks.txt"

# Create the folder if it does not exist
mkdir -p "$(dirname "$task_file")"

# Create the file if it does not exist
touch "$task_file"

# Function: Show all tasks
show_tasks() {
    if [[ ! -s "$task_file" ]]; then
        echo "No tasks found."
    else
        nl -w2 -s'.' "$task_file"
    fi
}

# Function: Add a new task
add_task() {
    read -p "Enter task description: " task
    if [[ -n "$task" ]]; then
        echo "[ ] $task" >> "$task_file"
        echo "Task added."
    else
        echo "Task cannot be empty!"
    fi
}

# Function: Mark a task as done
mark_done() {
    show_tasks
    read -p "Enter the task number to mark as done: " num
    if [[ "$num" =~ ^[0-9]+$ ]]; then
        sed -i "${num}s/\[ \]/[x]/" "$task_file"
        echo "Task #$num marked as done."
    else
        echo "Invalid input."
    fi
}

# Function: Remove a task
remove_task() {
    show_tasks
    read -p "Enter the task number to delete: " num
    if [[ "$num" =~ ^[0-9]+$ ]]; then
        sed -i "${num}d" "$task_file"
        echo "Task #$num deleted."
    else
        echo "Invalid input."
    fi
}

# Function: Display the main menu
main_menu() {
    while true; do
        echo "TASK MANAGER"
        echo "1) Show tasks"
        echo "2) Add task"
        echo "3) Mark task as done"
        echo "4) Delete task"
        echo "5) Exit"
        read -p "Choose an option: " choice

        case $choice in
            1) show_tasks ;;
            2) add_task ;;
            3) mark_done ;;
            4) remove_task ;;
            5) break ;;
            *) echo "Invalid choice!" ;;
        esac
    done
}

# Run the main menu
main_menu

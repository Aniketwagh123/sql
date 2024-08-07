import mysql.connector
from mysql.connector import Error
from dotenv import load_dotenv
import os

# Load environment variables from the .env file
load_dotenv()

# Retrieve the database configuration from environment variables
user = os.getenv('DB_USER')
password = os.getenv('DB_PASSWORD')
host = os.getenv('DB_HOST')
port = os.getenv('DB_PORT')


class TodoApp:
    def __init__(self):
        """
        desc: Initialize the TodoApp class and set up the database connection.
        """
        self.conn = None
        self.cursor = None
        self.create_connection()
        self.create_database('todo_app')
        self.use_database('todo_app')
        self.create_table()

    def create_connection(self):
        """
        desc: Establish a connection to the MySQL database.
        """
        try:
            self.conn = mysql.connector.connect(
                user=user,
                password=password,
                host=host,
                port=port
            )
            if self.conn.is_connected():
                print("Connection established successfully.")
                self.cursor = self.conn.cursor()
        except Error as e:
            print(f"Error: {e}")
            exit()

    def close_connection(self):
        """
        desc: Close the connection to the MySQL database.
        """
        if self.conn and self.conn.is_connected():
            self.conn.close()
            print("Connection closed.")

    def create_database(self, db_name):
        """
        desc: Create a database if it doesn't exist.
        prams: db_name
        return: None
        """
        try:
            self.cursor.execute(f"CREATE DATABASE IF NOT EXISTS {db_name};")
            print(f"Database '{db_name}' created or already exists.")
        except Error as e:
            print(f"Error: {e}")

    def use_database(self, db_name):
        """
        Select a database to use.
        prams: db_name
        return: None
        """
        try:
            self.cursor.execute(f"USE {db_name};")
        except Error as e:
            print(f"Error: {e}")

    def create_table(self):
        """
        desc: Create a table for TODO items.
        """
        try:
            self.cursor.execute("""
            CREATE TABLE IF NOT EXISTS todos (
                id INT AUTO_INCREMENT PRIMARY KEY,
                task VARCHAR(255) NOT NULL,
                status ENUM('pending', 'completed') DEFAULT 'pending'
            );
            """)
            print("Table 'todos' created or already exists.")
        except Error as e:
            print(f"Error: {e}")

    def add_task(self, task):
        """
        desc: Add a new task to the TODO table.
        """
        try:
            self.cursor.execute(
                f"INSERT INTO todos (task) VALUES {task};")
            self.conn.commit()
            print(f"Task '{task}' added.")
        except Error as e:
            self.conn.rollback()
            print(f"Error: {e}")
            print("Transaction rolled back.")

    def update_task(self, task_id, status):
        """
        dessc: Update the status of a task.
        """
        try:
            self.cursor.execute(
                f"UPDATE todos SET status = {status} WHERE id = {task_id};")
            self.conn.commit()
            print(f"Task ID {task_id} updated to '{status}'.")
        except Error as e:
            self.conn.rollback()
            print(f"Error: {e}")
            print("Transaction rolled back.")

    def delete_task(self, task_id):
        """
        desc: Delete a task from the TODO table.
        """
        try:
            self.cursor.execute(f"DELETE FROM todos WHERE id = {task_id};")
            self.conn.commit()
            print(f"Task ID {task_id} deleted.")
        except Error as e:
            self.conn.rollback()
            print(f"Error: {e}")
            print("Transaction rolled back.")

    def list_tasks(self):
        """
        desc: List all tasks.
        """
        self.cursor.execute("SELECT * FROM todos;")
        tasks = self.cursor.fetchall()
        for task in tasks:
            print(task)


def main():
    app = TodoApp()

    while True:
        print("\nTODO Application")
        print("1. Add Task")
        print("2. Update Task")
        print("3. Delete Task")
        print("4. List Tasks")
        print("5. Exit")

        choice = input("Enter your choice: ")

        if choice == '1':
            task = input("Enter task description: ")
            if task:
                app.add_task(task)
            else:
                print("Invalid task description.")

        elif choice == '2':
            try:
                task_id = int(input("Enter task ID to update: "))
                status = input("Enter new status (pending/completed): ")
                if status in ['pending', 'completed']:
                    app.update_task(task_id, status)
                else:
                    print("Invalid status.")
            except ValueError:
                print("Invalid task ID.")

        elif choice == '3':
            try:
                task_id = int(input("Enter task ID to delete: "))
                app.delete_task(task_id)
            except ValueError:
                print("Invalid task ID.")

        elif choice == '4':
            print("\nTasks:")
            app.list_tasks()

        elif choice == '5':
            break

        else:
            print("Invalid choice. Please try again.")

    # Close the connection
    app.close_connection()


if __name__ == "__main__":
    main()

package com.vergaraaa.todos.todo;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class TodoService {

    private static List<Todo> todos = new ArrayList<>();

    private static int todosCount = 0;

    static {
        todos.add(new Todo(
                ++todosCount,
                "vergara",
                "learn spring",
                LocalDate.now().plusYears(1),
                false));
        todos.add(new Todo(
                ++todosCount,
                "vergara",
                "learn devops",
                LocalDate.now().plusYears(2),
                false));
        todos.add(new Todo(
                ++todosCount,
                "vergara",
                "learn fullstack",
                LocalDate.now().plusYears(3),
                false));
    }

    public List<Todo> findByUsername(String username) {
        return todos;
    }

    public void addTodo(String username, String description, LocalDate targDate, boolean done) {
        Todo todo = new Todo(++todosCount, username, description, targDate, done);
        todos.add(todo);
    }
}

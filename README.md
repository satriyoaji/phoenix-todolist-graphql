# PhoenixGraphql

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4040`](http://localhost:4040) from your browser (you can edit the port inside config directory of each config file).

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

## Example Query & Mutation
First, run this project and visit [`localhost:4040`](http://localhost:4040). Then you can execute existing queries or mutations
- GET ALL Todos
```
{
  todoItems {
    id content isCompleted
  }
}
```
- Create New Todos
```
mutation createTodo($content: String!) {
  createTodoItem(content: $content)
}
Query Variables: {
  "content": "new more todo"
}
```
- Toggle/update Complete Todo
```
mutation ($id: ID!) {
  toggleTodoItem(id: $id) {
    id content isCompleted
  }
}
Query Variables: {
  "id": 2
}
```
# Phoenix LiveView 101

To start your Phoenix server:

1. Start the database container

```bash
# Location: phx_lv_101 folder
$ docker-compose up
```

2. Open separate terminal and navigate to `phx_lv_101` folder
3. Install dependencies and setup project database:

```bash
# Location: phx_lv_101 folder
$ mix setup
```

4. Start Phoenix dev server

```bash
$ iex -S mix phx.server
# or
$ mix phx.server
```

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

# Relay

Enabling relay for a resource sets it up to follow the [relay specification](https://relay.dev/graphql/connections.htm).

The two changes that are made currently are:

* the type for the resource will implement the `Node` interface
* pagination over that resource will behave as a Connection.

## Using with Absinthe.Relay

Use the following option when calling `use AshGraphql`

```elixir
use AshGraphql, define_relay_types?: false
```

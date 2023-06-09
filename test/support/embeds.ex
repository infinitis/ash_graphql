defmodule Foo do
  @moduledoc false
  use Ash.Resource,
    data_layer: :embedded,
    extensions: [
      AshGraphql.Resource
    ]

  graphql do
    type :foo_embed
  end

  attributes do
    attribute :type, :atom do
      constraints(one_of: [:foo])
      writable?(false)
    end

    attribute :foo, :string do
      allow_nil? false
    end
  end

  calculations do
    calculate(:always_true, :boolean, expr(true))
    calculate(:always_nil, :boolean, expr(nil))
  end
end

defmodule Bar do
  @moduledoc false
  use Ash.Resource,
    data_layer: :embedded,
    extensions: [
      AshGraphql.Resource
    ]

  graphql do
    type :bar_embed
  end

  attributes do
    attribute :type, :atom do
      constraints(one_of: [:foo])
      writable?(false)
    end

    attribute :bar, :string do
      allow_nil? false
    end
  end

  calculations do
    calculate(:always_true, :boolean, expr(true))
    calculate(:always_false, :boolean, expr(false))
  end
end

defmodule SelectWeb.Live.Form do
  use Phoenix.LiveView
  use Phoenix.HTML

  defmodule SelectForm do
	  use Ecto.Schema
    import Ecto.Changeset

    embedded_schema do
      field :value, :string
    end

    def changeset(struct, params \\ %{}) do
      cast(struct, params, [:value])
    end
  end

  def mount(_, socket) do
    changeset = SelectForm.changeset(%SelectForm{})
    {:ok, assign(socket, :changeset, changeset)}
  end

  def render(assigns) do
    ~L"""
    <%= form_for @changeset, "#", [], fn f -> %>
      <%= select(f, :value, ["Option 1": "1", "Option 2": "2", "Option 3": "3"], prompt: "Select an Option", style: "width: 40rem") %>
    <% end %>
    """
  end
end

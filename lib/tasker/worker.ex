defmodule Tasker.Worker do
  use Ecto.Schema

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "workers" do
    field :nickname, :string
    belongs_to :user, Tasker.Comptes.User, type: :binary_id
    has_many :worker_task, Tasker.Tasks.WorkerTask
  end
end

class AddMainActorToFilms < ActiveRecord::Migration
  def change
  end

    def change
    add_column :films, :MainActor, :string
  end
end

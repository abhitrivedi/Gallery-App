class AddDescriptionToArtifacts < ActiveRecord::Migration
  def change
    add_column :artifacts, :description, :string
  end
end

class AddPositionToProjects < ActiveRecord::Migration[7.0]
  # The with_index method takes an optional parameter to offset the starting index.
  # https://stackoverflow.com/questions/20258086/difference-between-each-with-index-and-each-with-index-in-ruby
  def change
    add_column :projects, :position, :integer
    Project.order(:updated_at).each.with_index(1) do |project, index|
      project.update_column :position, index
    end
  end
end

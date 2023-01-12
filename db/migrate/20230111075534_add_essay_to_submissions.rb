class AddEssayToSubmissions < ActiveRecord::Migration[7.0]
  def change
    add_column :submissions, :essay, :text
  end
end

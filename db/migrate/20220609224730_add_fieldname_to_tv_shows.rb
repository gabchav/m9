class AddFieldnameToTvShows < ActiveRecord::Migration[6.1]
  def change
    add_column :tv_shows, :ruta_img, :string
  end
end

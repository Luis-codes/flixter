class AddVideoToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :video, :string
    mount_uploader :video, VideoUploader
  end
end

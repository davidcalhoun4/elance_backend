class ChangeResumesToString < ActiveRecord::Migration[6.0]
  def change
    change_column :dancers, :resume, :string

  end
end

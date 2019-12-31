class ChangeAppointmentToDatetime < ActiveRecord::Migration[6.0]
  def change
    change_column :sessions, :appointment, :datetime
  end
end

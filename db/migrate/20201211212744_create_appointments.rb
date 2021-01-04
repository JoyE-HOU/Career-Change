class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.integer :client_id
      t.integer :designer_id
      t.datetime :date
      t.string :time
      t.string :project_type
      t.string :location
      t.string :timeline
      t.integer :budget
    end
  end
end
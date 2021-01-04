class Appointment < ApplicationRecord
    # belongs_to :designers
    # belongs_to :clients
    # Lines 2-3 are one the reasons when you run rails c the Appointment.all class doesn't show.
    belongs_to :designer
    belongs_to :client
end
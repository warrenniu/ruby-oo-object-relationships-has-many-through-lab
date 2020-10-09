class Doctor
    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        # binding.pry
        Appointment.all.select {|appt| appt.doctor == self}
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def patients
        Patient.all
    end

end
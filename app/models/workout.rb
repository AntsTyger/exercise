class Workout < ActiveRecord::Base
 
  has_many :exercises, dependent: :destroy

  def self.chart_data(start = 1.weeks.ago)
    total_lengths = lengths_by_day(start)
    strength_lengths = where(strength: true).lengths_by_day(start)
    cardio_lengths = where(strength: false).lengths_by_day(start)
    (start.to_date..Date.today).map do |date|
      {
        date: date,
        length: total_lengths[date] || 0,
        strength_length: strength_lengths[date] || 0,
        cardio_length: cardio_lengths[date] || 0
      }
    end
  end

  def self.lengths_by_day(start)
    workouts = where(date: start.beginning_of_day..Time.zone.now)
    workouts = workouts.group("date(date)")
    workouts = workouts.select("date, sum(length) as total_length")
    workouts.each_with_object({}) do |workout, lengths|
      lengths[workout.date.to_date] = workout.total_length
    end
  end
end

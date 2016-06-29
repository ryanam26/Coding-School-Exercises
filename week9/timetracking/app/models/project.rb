class Project < ActiveRecord::Base
	has_many :time_entries
	def self.clean_old
		where("created_at < ?",  1.week.ago).destroy_all
	end

	def self.last_created_projects(limit)

		limit(limit).order(created_at: :desc)
	end

	def total_hours_in_month (month,year)
		date = Time.new(year, month)
		entries_in_month = time_entries.where(date: date.end_of_month)

		hours = entries_in_month.sum { |e| e.hours}
		minutes = entries_in_month.sum { |e| e.minutes}
		(minutes/60)_ + hours
	end
end

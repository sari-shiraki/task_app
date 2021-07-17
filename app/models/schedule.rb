class Schedule < ApplicationRecord
  validates :title, presence: true
  validates :start, presence: true
  validates :finish, presence: true
  
  validate :date_before_start
  validate :date_before_today
  
  def date_before_start
    if start > finish
      errors.add(:finish, "は開始日以降の日付で選択してください")
    end  
  end  
  
  def date_before_today
    if finish < Date.today
      errors.add(:finish, "は今日以降の日付で選択してください")
    end
  end  
end

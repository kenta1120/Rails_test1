class Schedule < ApplicationRecord
  has_many :posts
  validates :title, presence: true
  validates :start, presence: true
  validates :end_date, presence: true
  validates :title, length: {maximum: 20}
  validates :schedule_memo, length: {maximum: 500}

  validate :start_rule
  validate :start_end_order

  private

  def start_rule
    if start.present? && start < Date.current
      errors.add(:start, "は今日以降の日付を選択してください。")
    end
  end

  def start_end_order
    if start.present? && end_date.present? && start > end_date
      errors.add(:end_date, "は開始日より前の日付は登録できません。")
    end
  end
end
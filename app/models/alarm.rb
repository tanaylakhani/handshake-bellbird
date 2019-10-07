class Alarm < ApplicationRecord
  has_many :upvotes
  validates :message, length: { maximum: 200}, presence: true

  after_create :send_push_notification

  def send_push_notification
  	SendAlarmPushNotificationJob.perform_later id
  end
end

# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  username        :string           not null
#  email           :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryBot.define do
  factory :user do
    username {Faker::Name.name}
    email {Faker::Internet.email}
    password_digest {Faker::Internet.password(6, 16)}
    session_token {Faker::Internet.password(16)}
  end
end


FactoryGirl.define do
  factory :bio, :class => Refinery::Bios::Bio do
    sequence(:name) { |n| "refinery#{n}" }
  end
end


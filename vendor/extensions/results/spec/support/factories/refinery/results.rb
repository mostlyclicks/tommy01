
FactoryGirl.define do
  factory :result, :class => Refinery::Results::Result do
    sequence(:title) { |n| "refinery#{n}" }
  end
end


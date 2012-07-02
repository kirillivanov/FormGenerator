FactoryGirl.define do
  factory :user, class: User do
    sequence(:email) {|n| "person#{n}@example.com" }
    password "111111"
  end

  factory :resourse, class: Resourse do
    name "TestModel"
  end

  factory :column, class: Column do
    name "birthday"
  end

  factory :form_builder, class: FormBuilder do
    name "TestForm"
  end
end



FactoryGirl.define do
  factory :user, class: User do
    sequence(:email) {|n| "person#{n}@example.com" }
    password "111111"
  end
end

FactoryGirl.define do
  factory :resourse, class: Resourse do
    name "TestModel"
  end
end

FactoryGirl.define do
  factory :column, class: Column do
    name "age"
  end
end

FactoryGirl.define do
  factory :form_builder, class: FormBuilder do
    name "TestForm"
  end
end
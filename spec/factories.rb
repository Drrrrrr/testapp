Factory.define :user do |f|
  f.sequence(:username) { |n| "foo#{n}" }
  f.password "foobar"
  f.sequence(:email) { |n| "foo#{n}@ex.com" }
end
FactoryGirl.define do
 factory :user do
   fname 'Jeffrey'
   lname 'Tuarez'
   email 'jit8@cornell.edu'
   password 'letmein'
 end

 factory :alex, class: User do
  fname 'Alex'
  lname 'Meyers'
  email 'alex@daapr.com'
  password 'verynice'
 end

end

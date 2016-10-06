# README

Shift Shark Logs
=================
This is a tracking of stuff done for this projects

* Devise add for user authenitication - Leo 8/6/2016
* Devise add the correct columns on the SQL database - Leo 10/6/2016
* Studio has for studio tracking - Leo 10/6/2016
* Studio add the correct columns on the SQL database -Leo 10/6/2016

<= Append to logs when changes are done =>

Steps for rails testing:
=========================
1. Bundle Install
2. Rake db:create
3. Rake db:migrate
4. Rails s
5. https://localhost:3000

Notes:
a. localhost:3000/users/sign_in <- sign in
b. localhost:3000/users/sign_up <- sign up
c. localhost:3000/< replace by controller name>/ <- display the items what you want to add
   aka exmaple "localhost:3000/studios/" <- display studio information to be addded.

Checking schema in Rails:
1. Rails c in terminal window
2. Check schema use "User.conenction" then User to display the schema
3. Looking for user information "User.find_by_id(#)" then User display that certain id
3. Check for all users "User.all" then User display for all ids exist in database
4. Repeat the same steps but change "User"
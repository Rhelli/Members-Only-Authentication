Users Model Columns
  - Name
  - Email
  - Password
  - Password confirmation

Sessions & Cookies
 - session[:cookies] token (TEMPORARY)
       - Create a digest for the token to store in db
       - Creation and deletion of cookies on signout & signin (session cookie)
 - remember_me token is for the 'remember me' checkbox (PERMANENT) (?)

Authentication Features
 - Password Digest
 - Has secure password


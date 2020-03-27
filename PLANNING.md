Users Model Columns
  - Name:string
  - Email:string
  - Password_digest

  has many: posts

Posts Model
  - Title:string
  - Content:text

  rails g model Posts title:string content:text

  - belongs to: users

Sessions & Cookies
 - session[:cookies] token (TEMPORARY)
   - Create a digest for the token to store in db
   - Creation and deletion of cookies on signout & signin (session cookie)
 - remember_me token is for the 'remember me' checkbox (PERMANENT) (?)

Authentication Features
 - Password Digest
 - Has secure password

To do
  - Strict users validations
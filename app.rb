require('sinatra')
require('sinatra/reloader')

  get('/') do
    @friend = "Jessica"
    erb(:letter)
  end

get('/australia')do
@sender = "Jane"
@recipient = "Jessica"
  erb(:australia)
end

get('/greeting_form')do
  erb(:form)
end

get('/greeting_card')do
  @sender = params.fetch('sender')
  @recipient = params.fetch('recipient')
  erb(:greeting_card)
end



  get('/favorite_photos') do
   "<!DOCTYPE html>
    <html>
    <head>
      <title>Hello Friend!</title>
      <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>
    </head>
    <body>
      <h1>Favorite Traveling Photos</h1>
        <ul>
          <li><img src='/img/canyon.jpg' alt='A photo of a canyon.'/></li>
          <li><img src='/img/city.jpg' alt='A photo of a bridge.'/></li>
          <li><img src='/img/mountains.jpg' alt='A photo of a mountain.'/></li>
        </ul>
    </body>
    </html>"
  end

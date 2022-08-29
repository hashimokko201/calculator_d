# Lets create a simple calculator app together, it should have a get method for localhost:4567/calculator that displays two forms
# the first form should post (note that post is one of those http methods) to localhost:4567/add, and have two fields named "num1" and "num2"
# the second form should post to localhost:4567/subtract with the same args
# the page that they go to should display the result, and have a link to get back to calculator

require 'puma'
require 'sinatra'

get '/calculator' do
'
<form action="/add" method="post" accept-charset="utf-8" autocomplete="off">
	<input type="text" name="num1" value="" id="num1" size="15"> +
	<input type="text" name="num2" value="" id="num2" size="15">
	<input type="submit" value="Add">
</form>
<form action="/subtract" method="post" accept-charset="utf-8" autocomplete="off">
	<input type="text" name="num1" value="" id="num1" size="15"> -
	<input type="text" name="num2" value="" id="num2" size="15">
	<input type="submit" value="Subtract">
</form>
<form action="/multiply" method="post" accept-charset="utf-8" autocomplete="off">
        <input type="text" name="num1" value="" id="num1" size="15"> x
        <input type="text" name="num2" value="" id="num2" size="15">
        <input type="submit" value="multiply">
</form>
<form action="/devide" method="post" accept-charset="utf-8" autocomplete="off">
        <input type="text" name="num1" value="" id="num1" size="15"> ÷
        <input type="text" name="num2" value="" id="num2" size="15">
        <input type="submit" value="devide">
</form>
'
end


post '/add' do
  "#{params[:num1]} + #{params[:num2]} = #{(params[:num1].to_i + params[:num2].to_i) * rand(-100..101)}
  <br>
  <br>
  <a href='/calculator'>Back</a>"
end

post '/subtract' do
  "#{params[:num1]} - #{params[:num2]} = #{(params[:num1].to_i - params[:num2].to_i) * rand(-100..101)}
  <br>
  <br>
  <a href='/calculator'>Back</a>"
end

post '/multiply' do
  "#{params[:num1]} x #{params[:num2]} = #{(params[:num1].to_i * params[:num2].to_i) * rand(-100..101)}
  <br>
  <br>
  <a href='/calculator'>Back</a>"
end

post '/devide' do
  "#{params[:num1]} ÷ #{params[:num2]} = #{(params[:num1].to_i / params[:num2].to_i) * rand(-100..101)}
  <br>
  <br>
  <a href='/calculator'>Back</a>"
end

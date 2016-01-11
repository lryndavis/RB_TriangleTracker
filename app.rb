require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
require('pry')
also_reload('./lib/**/*.rb')

get ('/') do
  erb(:index)
end

get ('/result') do
  sideA = params.fetch('sideA').to_i
  sideB = params.fetch('sideB').to_i
  sideC = params.fetch('sideC').to_i
  test_triangle = Triangle.new(sideA,sideB,sideC)
  if test_triangle.equilateral?
    @triangle = "equilateral"
  elsif test_triangle.isoceles?
    @triangle = "isoceles"
  elsif test_triangle.scalene?
    @triangle = "scalene"
  else
    @triangle = "WTF"
  end
  erb(:result)
end

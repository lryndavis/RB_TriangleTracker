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
  @triangle = test_triangle.triangle_type
  erb(:result)
end

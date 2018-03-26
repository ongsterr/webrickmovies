
require 'webrick'
require 'erb'
require_relative 'main'

class Router < WEBrick::HTTPServlet::AbstractServlet
    def do_GET(request, response)
        case request.path
        when '/'
            response.status = 200
            response['Content-Type'] = 'text/html'
            movies = Movie.all
            response.body = ERB.new(html_file("index.html")).result(binding)
        end
    end

    def do_POST(request, response)
        case request.path
        when '/'
            new_movie = request.query
            Movie.insert(title: new_movie["movie-title"], description: new_movie["movie-description"])
            response.status = 200 # This shows the status of website serving
            response['Content-Type'] = 'text/html'
            response.body = "Thanks for your submission!"
        end
    end

    private # Why 'private'?
    def html_file (file)
        path = File.join(__dir__, 'public', file) # '__dir__' is the directory of the file being executed. "File" is a class in Ruby
        html = File.open(path).read
        return html
    end

end

server = WEBrick::HTTPServer.new(Port: 3000)
trap 'INT' do server.shutdown end
server.mount '/', Router

server.start

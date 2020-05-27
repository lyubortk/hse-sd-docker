import http.server
import socketserver

PORT = 8000

class MyHttpRequestHandler(http.server.SimpleHTTPRequestHandler):
    def do_GET(self):
        if self.path == '/' or self.path == '':
            self.path = '/app/page.html'
        return http.server.SimpleHTTPRequestHandler.do_GET(self)
    
handler = MyHttpRequestHandler

with socketserver.TCPServer(("", PORT), handler) as httpd:
    print("Server started at localhost:" + str(PORT))
    httpd.serve_forever()

from japronto import Application

def hello(request):
    return request.Response(text='Hello world!')

app = Application()
app.router.add_route('/', hello)
app.run(host='0.0.0.0', port=8080, debug=False)

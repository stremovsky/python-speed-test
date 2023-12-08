async def app(scope, proto):
    assert scope.proto == 'http'

    proto.response_str(
        status=200,
        headers=[
            ('content-type', 'text/plain')
        ],
        body="Hello, world!"
    )

# python-stress-test

Simple "Hellow world" speed test implemented in python using popular web libraries.


## Results

Little known to me ```japronto``` gives the best results.

TODO: Check how to enable ```Keep-Alive``` for ```japronto```.


| Web library | Requests per second | + Keep-Alive    |
| :---------: | :---: | :---: |
| japronto | 8290 | 8277 |
| granian-rsgi | 6371 | 16848 |
| granian-asgi | 5813 | 13594 |
| uwsgi | 4507 | 4528 |
| nginx-uwsgi | 2970 | 3298 |
| gunicorn | 2404 | 2389 |
| bottle | 1166 | 977 |
| fastapi | 885 | 886 |
| flask | 717| 720 |

## How to collect results:

After starting each container, I am using ```ab``` command to check spped of each service.

``
ab -c 10 -n 10000 http://localhost:8080/hello 2>/dev/null | grep "Requests per second"
ab -k -c 10 -n 10000 http://localhost:8080/hello 2>/dev/null | grep "Requests per second"
``

## Relevant links

- https://www.techempower.com/benchmarks/
- https://wiki.python.org/moin/WebFrameworks


# python-stress-test

Simple "Hellow world" speed test implemented in python using popular web libraries.


## Results

Little known to me ```japronto``` gives the best results.

TODO: Ch3ck how to enable Keep-Alive for japronto.


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

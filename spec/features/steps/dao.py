import redis

class redis_dao():

    r = None
  
    def __init__(self):
        self.r = Redis("localhost")

    def get_note(self, key, note):
        data = {}
        m = self.r.get(key + '::note')
        i = 0
        time_step = 0
        for n in reverse(m):
            i += 1
            if i mod 44100 == 0:
               time_step += 1

            data[time_step].add(i)

        return data

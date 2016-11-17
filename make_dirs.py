#!/usr/bin/env python

import os

for name in ['chanan', 'alex']:
    for i in range(1, 27):
        dir_name = os.path.join(str(i).zfill(2) + "_lecture", name)
        if not os.path.exists(dir_name):
            os.makedirs(dir_name)
            with open(os.path.join(dir_name, 'README.md'), 'w') as f:
                    f.write("Notes for lecture {}".format(i))


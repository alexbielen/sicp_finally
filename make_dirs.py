#!/usr/bin/env python

import os

for name in ['chanan', 'alex']:
    for i in range(0, 26):
        dir_name = os.path.join(str(i).zfill(2) + "_lecture", name)
        if not os.path.exists(dir_name):
            os.makedirs(dir_name)


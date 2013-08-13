#!/usr/bin/env python
# -*- coding: utf-8 -*-

from setuptools import setup
import sys

PACKAGE = 'TracTracker'
VERSION = '1.0'

setup(name=PACKAGE,
      version=VERSION,
      packages=['tracker', 'tracker.db'],
      entry_points={'trac.plugins': [
          'TracTracker.db_install = tracker.db_install',
          'TracTracker.comment = tracker.comment',
          'TracTracker.user_list = tracker.user_list',
          'TracTracker.worklog = tracker.worklog'
      ]},
      package_data={'tracker': ['templates/*.html', 'htdocs/css/*.css',]},
      install_requires=['trac', 'twisted', ],
)
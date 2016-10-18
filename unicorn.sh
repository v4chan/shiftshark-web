#!/bin/bash

source .env
bundle exec unicorn -c config/unicorn.rb

# Rails Gem for Mozilla HTTP Observatory API

<!-- [![Build Status](https://travis-ci.org/april/http-observatory.svg?branch=master)](https://travis-ci.org/april/http-observatory) [![Requirements Status](https://requires.io/github/mozilla/http-observatory/requirements.svg?branch=master)](https://requires.io/github/mozilla/http-observatory/requirements/?branch=master)
 -->

The Mozilla HTTP Observatory is a set of tools to analyze your website and inform you if you are utilizing the many available methods to secure it.

* Read more on https://github.com/mozilla/http-observatory/blob/master/README.md

* Information about the API: https://github.com/mozilla/http-observatory/blob/master/httpobs/docs/api.md

Other official projects:

* [http-observatory](https://github.com/mozilla/http-observatory) - scanner/grader
* [observatory-cli](https://github.com/mozilla/observatory-cli) - command line interface
* [http-observatory-website](https://github.com/mozilla/http-observatory-website) - web interface

## Install
```ruby
gem install http-observatory
```
Add to Gemfile

```ruby
gem 'http-observatory'

or 

gem 'http_observatory', git: 'https://github.com/zauberware/http-observatory.git'
```
```bash
$ bundle install
```

## How to use
```ruby
HttpObservatory::Api.get_analyze('www.zauberware.com')
HttpObservatory::Api.post_analyze('www.zauberware.com')
HttpObservatory::Api.get_scan_results(123123123)
HttpObservatory::Api.get_host_history('www.zauberware.com')
HttpObservatory::Api.get_recent_scans
HttpObservatory::Api.get_grade_distribution
HttpObservatory::Api.get_scanner_states
```

## Run tests
```bash
$ rspec spec
```

## Authors

* Simon Franzen (zauberware technologies)


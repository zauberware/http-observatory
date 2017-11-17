# Rails Gem for Mozilla HTTP Observatory API - [![Build Status](https://travis-ci.org/zauberware/http-observatory.svg?branch=master)](https://travis-ci.org/zauberware/http-observatory)

The Mozilla HTTP Observatory is a set of tools to analyze your website and inform you if you are utilizing the many available methods to secure it.

* Read more on https://github.com/mozilla/http-observatory/blob/master/README.md

* Information about the API: https://github.com/mozilla/http-observatory/blob/master/httpobs/docs/api.md

Other official projects:

* [http-observatory](https://github.com/mozilla/http-observatory) - scanner/grader
* [observatory-cli](https://github.com/mozilla/observatory-cli) - command line interface
* [http-observatory-website](https://github.com/mozilla/http-observatory-website) - web interface

## Install
```ruby
gem install http_observatory
```
Add to Gemfile

```ruby
gem 'http_observatory'

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

![zauberware technologies](https://avatars3.githubusercontent.com/u/1753330?s=200&v=4)


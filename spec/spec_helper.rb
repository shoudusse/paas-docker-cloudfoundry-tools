require 'serverspec'

set :backend, :docker
set :os, family: :debian

# bosh-init

BOSH_INIT_PACKAGES = "build-essential zlibc zlib1g-dev ruby ruby-dev openssl libxslt1-dev libxml2-dev \
    libssl-dev libreadline6 libreadline6-dev libyaml-dev libsqlite3-dev sqlite3"
BOSH_INIT_BIN = "/usr/local/bin/bosh-init"
BOSH_INIT_VERSION = "0.0.80-a62aad7-2015-10-28T01:52:30Z"

# spruce

SPRUCE_BIN = "/go/bin/spruce"
SPRUCE_VERSION = "0.13.0"

# curl-ssl

CURL_SSL_PACKAGES = "curl openssl ca-certificates"

def find_image_id(name)
  image = Docker::Image.all().detect{ |i| i.info['RepoTags'].include? name }
  raise "Docker image '#{name}' not found. You may need to run 'rake build:<name>' first" unless image

  image.id
end

# mksecrets

MKSECRETS_PACKAGES = "pwgen"
MKPASSWD_BIN = "/usr/bin/mkpasswd"

# awscli

AWSCLI_PACKAGES = "curl openssl ca-certificates less"

AWSCLI_BIN = "/usr/bin/aws"
AWSCLI_VERSION = "1.9.21"

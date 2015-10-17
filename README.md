## Development

### Setup dev virtual machine

1. Install Vagrant from http://www.vagrantup.com/downloads.html
2. Install VirtualBox from https://www.virtualbox.org/wiki/Downloads
3. Clone this project (you can put it somewhere besides ~/src)

    ```
    mkdir ~/src
    cd ~/src
    git clone git@github.com:Skookum-Nightshift/back-end-vol-eng-b.git
    ```

4. Start virtual server using Vagrant

    ```
    # cd ~/src/back-end-vol-eng-b
    vagrant up
    ```

5. Log on to the virtual machine

    ```
    vagrant ssh
    ```

### Install ruby dependencies

```
cd /vagrant
gem install bundler
bundle install
```

### Set up .env

- make a copy of `example.env` as `.env`

```
RACK_ENV=development
# RACK_ENV=none
RAILS_ENV=development
DOMAIN=.lvh.me
TLD_LENGTH=1
PORT=3000

# S3
S3_BUCKET=placeholder
S3_KEY_ID=placejolder
S3_SECRET=placeholder
S3_REGION=us-west-2

DEVISE_SECRET=placeholder

STRIPE_SECRET=placeholder
STRIPE_PUBLISHABLE=placeholder
```

### Run database migrations

```
rake db:migrate RAILS_ENV=development
```

### Run
- make sure that `log/development.log` exists if not run `rails s` (CTRL-C after rails s)
- then run by calling `foreman start`

### Authenticated Ajax requests

A header has to be passed to authenticate a route

```
{
  'Authorization': `Bearer ${auth_token}`
}
```

The authorization token is passed back after a successful `post` to the `sign_in` route

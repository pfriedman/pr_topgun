# PR Topgun

PR Topgun is a dashboard to review pull requests.

## Requirements

- Ruby 2.2.2 or greater
- Rails 5.0.1 or greater

## Github Keys

There are two required environment variables for this application.
First, you will need to register a new Github OAuth application.
To do so, go to [the register new application page](https://github.com/settings/applications/new).

For your development environment you can set the `Homepage URL` to
**http://localhost:$PORT**

You can manage your registered applications on [the developer settings page](https://github.com/settings/developers).

Once the Client ID and Client Secret are registered in github, set those in a
.env file on the application's root.  Reference .env.example as a template.

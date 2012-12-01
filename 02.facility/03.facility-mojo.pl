#!/usr/bin/env perl
use Mojolicious::Lite;

# Run me: perl 03.facility-mojo.pl get /

# TODO: Move to config file
app->log->level('debug');

app->log->info("Initialize Mojolicious::Lite app");

get '/' => sub {
    my $self = shift;

    app->log->debug("Rendering Hello World text");

    unless ($self->param('test')) {
        app->log->error("No 'test' parameter passed");
    }

    $self->render(text => "Hello World");
};

app->log->info("Starting Mojolicious::Lite app");

app->start;

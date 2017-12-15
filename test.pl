#!/usr/bin/perl
use strict;
use LWP::UserAgent;
use LWP::Protocol::https;
use MIME::Base64;
 
my $hash = "EBK9FFNBZPPEENK3MV8MN9E5F64EMX6X";
 
$hash =~ s/\n//g;
 
my $auth = "root:" . $hash;
 
my $ua = LWP::UserAgent->new(
ssl_opts   => { verify_hostname => 0, SSL_verify_mode => 'SSL_VERIFY_NONE', SSL_use_cert => 0 },
	);
my $request = HTTP::Request->new(GET => "https://github.com/status");
$request->header( Authorization => $auth );
my $response = $ua->request($request);
print $response->content;

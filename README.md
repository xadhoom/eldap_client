eldap_client
=====

Erlang ldap client, exported as eldap_client from Erlang/OTP built-in library eldap.

Exported as external library to include https://github.com/erlang/otp/pull/5538 and
maybe various future mods to the library (like sort Control extension).

Is not meant to be for general use, prefer the Erlang/OTP built-in eldap lib.

All copyrights belogs to the OTP team and contributors.

Build
-----

    $ rebar3 compile

Test
-----
On one shell:

    $ cd test; sh run_server.sh # starts a dockerized ldap server

On another shell:

    $ rebar3 ct # runs the test suite

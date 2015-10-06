<?php

$mp = new MP("ACCESS_TOKEN");

$request = array(
        "uri" => "/oauth/token",
        "data" => array(
             "client_secret" => $mp->get_access_token(),
             "grant_type" => "authorization_code",
             "code" => "AUTHORIZATION_CODE",
             "redirect_uri" => "REDIRECT_URI"
        ),
        "headers" => array(
            "content-type" => "application/x-www-form-urlencoded"
        ),
        "authenticate" => false
    );

$mp->post($request);

?>
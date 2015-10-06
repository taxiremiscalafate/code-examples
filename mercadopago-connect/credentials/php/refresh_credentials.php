<?php

$mp = new MP("ACCESS_TOKEN");

$request = array(
        "uri" => "/oauth/token",
        "data" => array(
             "client_secret" => $mp->get_access_token(),
             "grant_type" => "refresh_token",
             "refresh_token" => "USER_RT"
        ),
        "headers" => array(
            "content-type" => "application/x-www-form-urlencoded"
        ),
        "authenticate" => false
    );

$mp->post($request);

?>
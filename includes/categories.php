<?php

function get_categories($connection) {
    $categories = [];
    $result = mysqli_query($connection, "SELECT * FROM `articles_categories`" );
    while ($cat = mysqli_fetch_assoc($result)) {
        $categories[] = $cat;
    }
    return $categories;
}

function get_latest_articles($connection, $pageSize = 4) {
    $result = mysqli_query($connection, "SELECT * FROM `articles` ORDER BY `id` DESC LIMIT $pageSize");
    $articles = [];
    while ($art = mysqli_fetch_assoc($result)) {
        $articles[] = $art;
    }
    return $articles;
}
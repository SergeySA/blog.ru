<?php
require "includes/bootstrap.php";
require 'includes/categories.php';

$categories = get_categories($connection);
$articles = get_latest_articles($connection, 10);

function get_category($article, $categories) {
    foreach ($categories as $cat) {
        if ($cat['id'] == $article['category_id']) {
            return $cat;
        }
    }
}

function truncate($text, $limit = 50, $ending = ' ...') {
    return mb_substr(strip_tags($text), 0, $limit, 'utf-8') . $ending;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title><?php echo $config['title']; ?></title>

  
  <link rel="stylesheet" type="text/css" href="/media/assets/bootstrap-grid-only/css/grid12.css">
 
  
  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">

 
  <link rel="stylesheet" type="text/css" href="/media/css/style.css">
</head>
<body>

  <div id="wrapper">

   <?php include "includes/header.php"; ?>

    <div id="content">
      <div class="container">
        <div class="row">
          <section class="content__left col-md-8">

            <div class="block">
              <a href="/articles.php">Все записи</a>
              <h3>Новейшее_в_блоге</h3>
              <div class="block__content">
                <div class="articles articles__horizontal">

                  <?php foreach ($articles as $art) : ?>
                  <?php $art_cat = get_category($art, $categories) ?>

                      <article class="article">
                        <div class="article__image" style="background-image: url(/static/images/<?php echo $art['image']; ?>);"></div>
                        <div class="article__info">
                          <a href="/article.php?id=<?php echo $art['id']; ?> "><?= $art['title']; ?></a>
                            <div class="article__info__meta">
                              <small>Категория: 
                              <a href="articles.php?category=<?php echo $art_cat['id']; ?>">
                                <?php echo $art_cat['title']; ?>
                              </a></small>
                            </div>
                             <div class="article__info__preview"><?= truncate($art['text']); ?></div>
                        </div>
                      </article>  
                      <?php endforeach ?>
                </div>
              </div>
            </div>

            <div class="block">
              <a href="/articles.php?category=6">Все записи</a>
              <h3>Безопасность [Новейшее]</h3>
              <div class="block__content">
                <div class="articles articles__horizontal">

                   <?php 
                    $articles = mysqli_query($connection, "SELECT * FROM `articles` WHERE `category_id` = 6 ORDER BY `id` DESC LIMIT 4" );
                     while ($art = mysqli_fetch_assoc($articles)) 
                     {
                      ?>
                      <article class="article">
                        <div class="article__image" style="background-image: url(/static/images/<?php echo $art['image']; ?>);"></div>
                        <div class="article__info">
                          <a href="/article.php?id=<?php echo $art['id']; ?> "><?php echo $art['title']; ?></a>

                              <?php 
                                $art_cat = false;
                                foreach ($categories as $cat) {
                                  if ($cat['id'] == $art['category_id']) 
                                  {
                                    $art_cat = $cat;
                                    break;
                                  }
                                }
                              ?>

                            <div class="article__info__meta">
                              <small>Категория: <a href="articles.php?category=<?php echo $art_cat['id']; ?>"><?php echo $art_cat['title']; ?></a></small>
                            </div>
                             <div class="article__info__preview"><?php echo mb_substr(strip_tags($art['text']), 0, 50, 'utf-8'). ' ...'; ?></div>
                        </div>
                  </article>
                      <?php
                    }
                  ?>
                </div>
              </div>
            </div>
                 

            <div class="block">
              <a href="/articles.php?category=5">Все записи</a>
              <h3>Law of nature [Новейшее]</h3>
              <div class="block__content">
                <div class="articles articles__horizontal">

                   <?php 
                    $articles = mysqli_query($connection, "SELECT * FROM `articles` WHERE `category_id` = 5 ORDER BY `id` DESC LIMIT 4" );
                     while ($art = mysqli_fetch_assoc($articles)) 
                     {
                      ?>
                      <article class="article">
                        <div class="article__image" style="background-image: url(/static/images/<?php echo $art['image']; ?>);"></div>
                        <div class="article__info">
                          <a href="/article.php?id=<?php echo $art['id']; ?> "><?php echo $art['title']; ?></a>

                              <?php 
                                $art_cat = false;
                                foreach ($categories as $cat) {
                                  if ($cat['id'] == $art['category_id']) 
                                  {
                                    $art_cat = $cat;
                                    break;
                                  }
                                }
                              ?>

                            <div class="article__info__meta">
                              <small>Категория: <a href="articles.php?category=<?php echo $art_cat['id']; ?>"><?php echo $art_cat['title']; ?></a></small>
                            </div>
                             <div class="article__info__preview"><?php echo mb_substr(strip_tags($art['text']), 0, 50, 'utf-8'). ' ...'; ?></div>
                        </div>
                  </article>
                      <?php
                    }
                  ?>

                </div>
              </div>
            </div>


          </section>
          <section class="content__right col-md-4">
            <?php include 'includes/sidebar.php'; ?>
          </section>
        </div>
      </div>
    </div>

    <?php include 'includes/footer.php'; ?>
  
  </div>

</body>
</html>

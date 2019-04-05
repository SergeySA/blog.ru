<?php
require "includes/config.php";
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
              <h3>Все записи</h3>
                <div class="block__content">
                <div class="articles articles__horizontal">

                <?php 
                  $v_page = 4;
                  $page = 1;
                  $category = null;
                  $category_query = '';
                    if (isset($_GET['page']) )
                    {
                      $page = (int) $_GET['page'];                    
                    }
                     if (isset($_GET['category']))
                    {
                      $category = (int) $_GET['category'];
                      $category_query = 'WHERE `category_id` = '. $category;
                    }
                         $total_count_q = mysqli_query($connection, "SELECT * FROM `articles` $category_query ORDER BY `id` DESC " );
                         $total_count = mysqli_num_rows($total_count_q);                        
                         $total_pages = ceil($total_count / $v_page);
                    if ($page <= 1 || $page > $total_pages) 
                    {
                      $page = 1;
                    }   

                    $offset = ($v_page * $page) - $v_page;
                    echo $total_pages . ' ' . $offset;
                    $articles = mysqli_query($connection, "SELECT * FROM `articles` $category_query ORDER BY `id` DESC LIMIT $offset,$v_page" );

                    if (mysqli_num_rows($articles) <= 0)
                    {
                      echo '<article class="article">Нет статей</article>';
                    } else 
                    {
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
                    }
                  ?>

                </div>
                 <?php if (mysqli_num_rows($articles) > 0)
                    {
                      echo '<div class="paginator">';
                      if ($page > 1) 
                      {
                        echo '<a href="/articles.php?category='. $category .'&page='. ($page-1) .'">Previous page   </a>';
                      }
                      if ($page < $total_pages) 
                      {
                        echo '<a href="/articles.php?category='. $category .'&page='. ($page+1) .'">Next page</a>';
                      }
                      echo '</div>';
                    }
                  ?>
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
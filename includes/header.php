<header id="header">
  <div class="header__top">
    <div class="container">
      <div class="header__top__logo">
        <h1><?php echo $config['title']; ?></h1>
      </div>
      <nav class="header__top__menu">
        <ul>
          <li><a href="/">Главная</a></li>
          <li><a href="/pages/about_me.php">Обо мне</a></li>
          <li><a href=" <?php echo $config['vk_url']; ?> " target="_blank">Я Вконтакте</a></li>
        </ul>
      </nav>
    </div>
  </div>
<div class="header__bottom">
  <div class="container">
    <nav>
      <ul>
        <?php foreach ($categories as $cat): ?>
           <li><a href="/articles.php?category=<?= $cat['id']; ?>"> 
            <?= $cat['title']; ?> </a>
           </li>
        <?php endforeach ?>
      </ul>
    </nav>
  </div>
</div>
</header>
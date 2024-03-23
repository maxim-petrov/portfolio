<header>
    <nav class="navbar navbar--blog navbar-expand-md sticky-top navbar-primary bg-primary mb-4">
      <div class="container-fluid navbar__container">
        <span class="navbar__photo navbar-brand" style="border-bottom: none">
          <img class="userpic emerge" src="/images/1x/userpic.png" srcset="/images/1x/userpic.png 1x, /images/2x/userpic@2x.png 2x" data-effect="zoom" alt="Максим Петров" style="transform: scale(0.5); transform-origin: 50% 50%; transition: opacity 500ms ease-out 0s; opacity: 1;; transform: scale(1); transition: opacity 500ms ease-out, transform 500ms cubic-bezier(0, 0.75, 0.25, 1); -webkit-transform: scale(1); -webkit-transition: opacity 500ms ease-out, -webkit-transform 500ms cubic-bezier(0, 0.75, 0.25, 1); ">
        </span>
        <span class="navbar__name-mobile">Максим Петров</span>
        <button class="navbar__toggler navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="navbar__menu collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-md-0">
            <li>
              <a class="nav-link nav-link__name active" href="/advice/">Максим Петров</a>
            </li>
            <li>
              <a class="nav-link" href="#interfaces">Интерфейсы</a>
            </li>
            <li>
              <a class="nav-link" href="#design-systems">Дизайн-системы</a>
            </li>
            <li>
              <a class="nav-link" href="#accessibility">Доступность</a>
            </li>
            <li>
              <a class="nav-link" href="#code">Фронтенд</a>
            </li>
            <li>
              <a class="nav-link" href="#works">Избранные работы</a>
            </li>
          </ul>
          <div class="navbar__email navbar-email">
          <a class="nav-link" href="mailto:mail@maximpetrov.ru">
          <span class="nav-link__icon">
            <svg width="20" height="15" viewBox="0 0 16 12" xmlns="http://www.w3.org/2000/svg">
              <path d="M0 2C0 0.895313 0.895313 0 2 0H14C15.1031 0 16 0.895313 16 2V10C16 11.1031 15.1031 12 14 12H2C0.895313 12 0 11.1031 0 10V2ZM1.5 2V2.69063L6.89062 7.11563C7.53438 7.64688 8.46562 7.64688 9.10938 7.11563L14.5 2.69063V1.97187C14.5 1.725 14.275 1.47187 14 1.47187H2C1.72375 1.47187 1.5 1.725 1.5 1.97187V2ZM1.5 4.63125V10C1.5 10.275 1.72375 10.5 2 10.5H14C14.275 10.5 14.5 10.275 14.5 10V4.63125L10.0625 8.275C8.8625 9.25937 7.1375 9.25937 5.90938 8.275L1.5 4.63125Z"/>
            </svg>
          </span>
          <span class="nav-link__email-full">mail@maximpetrov.ru</span>
          <span class="nav-link__email-short">Почта</span>
          </a>
        </div>
        </div>
      </div>
    </nav>
  </header>

<div style="float: right">
<?php _T ('author-menu') ?>
</div>

<div><?php _T ('user-picture') ?></div>

<div style="float: right">
<?php if ($content['class'] != 'found') { ?>
  <?php _T ('search-icon') ?>
<?php } ?>
</div>

<h1><?= _A ('<a href="'. $content['blog']['href']. '"><span id="e2-blog-title">'. $content['blog']['title']. '</span></a>') ?></h1>


<?php if ($content['class'] == 'frontpage') { ?>
<div id="e2-blog-description"><?= $content['blog']['subtitle'] ?></div>
<?php } ?>

<?php _T ('main-menu') ?>

<?php _T ('heading') ?>
<?php _T ('message') ?>
<?php _T ('welcome') ?>
<?php _T ('notes') ?>
<?php _T ('notes-list') ?>
<?php _T ('tags') ?>
<?php _T ('nothing') ?>
<?php _T ('sessions') ?>
<?php _T ('pages') ?>
<?php _T ('comments') ?>
<?php _T ('popular') ?>
<?php _T ('unsubscribe') ?>
<?php _T ('form') ?>

© <span id="e2-blog-author"><?= @$content['blog']['author'] ?></span>, <?=$content['blog']['years-range']?>

<a class="e2-rss-button" href="<?=@$content['blog']['rss-href']?>"><?= _S ('gs--rss') ?></a>

<?= $content['engine']['about'] # please do not remove ?>
<?php _T_DEFER ('stat') ?>
<?php _T ('login-element'); ?>

<?php _T ('niceerror'); ?>
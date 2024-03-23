<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title><?= $content['title'] ?></title>

<base href="<?= $content['meta']['base-href'] ?>" />

<link rel="shortcut icon" type="" href="/images/1x/favicon.png" />

<link rel="apple-touch-icon" href="/images/1x/favicon.png">

<?php foreach ($content['meta']['stylesheets'] as $stylesheet): ?>
<link rel="stylesheet" type="text/css" href="<?= $stylesheet ?>" />
<?php endforeach ?>

<?php foreach ($content['meta']['newsfeeds'] as $newsfeed): ?>
<link rel="alternate" type="<?= $newsfeed['type'] ?>" title="<?= $newsfeed['title'] ?>" href="<?= $newsfeed['href'] ?>" />
<?php endforeach ?>

<?php foreach ($content['meta']['navigation-links'] as $link): ?>
<link rel="<?= $link['rel'] ?>" id="<?= $link['id'] ?>" href="<?= $link['href'] ?>" />
<?php endforeach ?>

<?php if (array_key_exists ('canonical-href', $content['meta'])): ?>
<link rel="canonical" href="<?= $content['meta']['canonical-href'] ?>">
<?php endif ?>

<?php if (array_key_exists ('manifest-href', $content['meta'])): ?>
<link rel="manifest" href="<?= $content['meta']['manifest-href'] ?>">
<?php endif ?>

<?php if (array_key_exists ('summary', $content)): ?>
<meta name="description" content="UI/UX-дизайнер с опытом работы в продуктовых командах более семи лет. Интересуюсь фронтендом,
    ИИ, доступностью и всем, что связанно с моей работой." />
<meta name="og:description" content="UI/UX-дизайнер с опытом работы в продуктовых командах более семи лет. Интересуюсь фронтендом,
    ИИ, доступностью и всем, что связанно с моей работой." />
<?php endif ?>

<meta name="viewport" content="<?= $content['meta']['viewport'] ?>">

<meta property="og:type" content="website" />
<meta property="og:title" content="<?= $content['title'] ?>" />
<meta property="og:url" content="<?= $content['meta']['current-href'] ?>" />

<?php foreach ($content['meta']['og-images'] as $image): ?>
<meta property="og:image" content="https://maximpetrov.ru/images/thumbnail.png" />
<?php endforeach ?>

<meta name="twitter:card" content="<?= $content['meta']['twitter-card'] ?>" />

<?php _X ('head-extras') ?>


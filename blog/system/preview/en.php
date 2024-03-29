<?php

  $settings_href = '../settings';
  $self_href = 'javascript:;';
  
  $return['class'] = 'themepreview';
  $return['title'] = 'Theme preview';
  $return['heading'] = 'Theme preview';

  // $return['theme-preview']['no-themes'] = '
  // <p>To start making your own theme:</p>
  // <ol>
  //   <li>Clone a built-in theme you like in the <tt>themes</tt> folder.</li>
  //   <li>Edit the file <tt>theme-info.php</tt>.</li>
  //   <li>Switch to your new theme <a href="'. $settings_href .'">in Settings</a>.</li>
  // </ol>
  // ';

  $return['theme-preview']['no-themes'] = '<p>Use this page to preview and adjust your theme.</p>';

  // $return['theme-preview']['themes-before'] = '
  // <p>Select appearance:</p>
  // ';

  // $return['theme-preview']['themes-after'] = '
  // <p>Select the new theme from the list to apply it.</p>
  // <p>Use this page to preview and adjust your theme. It is made out of elements of the blog, starting with posts. Don’t forget to check on mobile phones</p>
  // ';

  if (defined ('E2_EDITION') and E2_EDITION) {

    $return['theme-preview']['no-themes'] .= '<p>The main menu display the different states of the items: '.
      'regular link, parent page link, and selected title of the current page.</p>';

    $return['main-menu'] = [
      'each' => 
      [
        [
          'href' => $self_href,
          'svg-id' => 'favourite-on',
          'title' => 'Main menu',
          'current?' => false,
          'parent?' => false,
          'visible?' => true,
        ],
        [
          'href' => $settings_href,
          'svg-id' => 'settings',
          'title' => 'Preferences',
          'visible?' => true,
          'parent?' => true,
          'current?' => false,
        ],
        [
          'href' => $self_href,
          'svg-id' => 'tags',
          'title' => 'Tags',
          'current?' => false,
          'parent?' => false,
          'visible?' => true,
        ],
        [
          'tag' => 'movies',
          'title' => 'Movies',
          'href' => $self_href,
          'visible?' => true,
          'parent?' => false,
          'current?' => false,
        ],
        [
          'tag' => 'music',
          'title' => 'Music',
          'href' => $self_href,
          'visible?' => true,
          'parent?' => false,
          'current?' => false,
        ],
        [
          'tag' => 'books',
          'title' => 'Books',
          'href' => $self_href,
          'visible?' => true,
          'parent?' => false,
          'current?' => false,
        ],
        [
          'href' => $self_href,
          'title' => 'Theme preview',
          'visible?' => true,
          'parent?' => false,
          'current?' => true,
        ],
      ],
      'reorderable?' => false,
    ];

  }

  $return['notes'] = [
    [
      'id' => 1,
      'title' => 'A sample post',
      'text' => '
      <p>This is what a post looks like. This post is starred — in the built-in theme its title is big, but you may do something else.</p>
      <p>This paragraph has just a filler text. The theory of empathy is free. The rhythm has an elegant factographic chthonic myth. Artistic mediation is a catharsis. The liturgical drama has psychological parallelism.</p>
      <h2>Subheadings, text formatting and images</h2>
      <p>Your post may have subheadings as above, <a href="'. $self_href .'">hyperlinks</a> and use text formatting, like <i>italics</i>, <b>bold</b>, or <tt>monospace</tt>.</p>
      <p>An image with a caption:</p>
      <div class="e2-text-picture">
      <div style="width: 800px; max-width: 100%"><div class="e2-text-proportional-wrapper" style="padding-bottom: 44.375%"><img src="system/theme/images/sample-image.jpg" width="800" height="355" alt="">
      </div></div>
      <div class="e2-text-caption">La creazione di Adamo. Michelangelo Buonarroti, c. 1511</div>
      </div>
      <p>Let’s say we have an important idea about this image:</p>
      <p class="loud">God created man in his own image</p>
      <p>A table follows this paragraph. This paragraph has just a filler text. The theory of empathy is free. The rhythm has an elegant factographic chthonic myth. Artistic mediation is a catharsis. The liturgical drama has psychological parallelism.</p>      
      <div class="e2-text-table">
        <table cellpadding="0" cellspacing="0" border="0">
        <tr><th>City</th><th>Time zone</th><th>Code</th><th>From Greenwich</th></tr>
        <tr><td>Chelyabinsk</td><td>Yekaterinburg Time</td><td>YEKT</td><td>+5 h.</td></tr>
        <tr><td>Moscow</td><td>Moscow Time</td><td>MSK</td><td>+3 h.</td></tr>
        <tr><td>London</td><td>Greenwich Mean Time</td><td>GMT</td><td></td></tr>
        <tr><td>New York</td><td>Eastern Time</td><td>ET</td><td>−5 h.</td></tr>
        <tr><td>San Francisco</td><td>Pacific Time</td><td>PT</td><td>−8 h.</td></tr>
        </table>
      </div>
      <p>Some text may be separated with a horisontal rule:</p>
      <hr />
      <p>Some other text.</p>
      <h3>Third-level heading</h3>
      <p>Ordered list:</p>
      <ol>
        <li>This is a long list item so that you see what it looks like spanning several lines. Make sure the spacing between the items is bigger than the line height.</li>
        <li>This is a short element.</li>
      </ol>
      <p>Unordered list:</p>
      <ul>
        <li>This is a long list item so that you see what it looks like spanning several lines. Make sure the spacing between the items is bigger than the line height.</li>
        <li>This is a short element.</li>
      </ul>
      ',
      // 'summary' => '',
      // 'format-info' => array 2
      // 'time' => e2 time 8 May 2017, 20:46, GMT+05:00
      // 'last-modified' => e2 time 14 May 2017, 19:51, GMT+05:00
      // 'last-ip' => NULL,
      'draft?' => false,
      'scheduled?' => false,
      'public?' => true,
      'hidden?' => false,
      'favourite?' => false,
      'tags' => [
        [
          'name' => 'a tag',
          'href' => $self_href,
          'current?' => false,
          'visible?' => true,
        ],
        [
          'name' => 'another one',
          'href' => $self_href,
          'current?' => false,
          'visible?' => true,
        ],
        [
          'name' => 'hidden one',
          'href' => $self_href,
          'current?' => false,
          'visible?' => false,
        ],
      ],
      'read-count' => 42,
      'comments-count' => 0,
      // 'comments-count-text' => '1 comment',
      'href' => $self_href,
      'href-comments' => $self_href,
      // 'href-original' => 'http://e2/all/muzlo/',
      // 'comments-link?' => true,
      'new-comments-count' => 0,
      'new-comments-count-text' => '0 new',
      // 'favourite-toggle-action' => '',
      // 'edit-href' => 'http://e2/all/muzlo/edit/',
      // 'og-images' => [],
    ],
    [
      'id' => 2,
      'title' => 'A sample favourite post',
      'text' => '
      <p class="lead">This post has a lead paragraph.</p>
      <p>This is a second example¹ to help you adjust the distance between the posts in a feed. The title is not a link here — as if we were on the posts’ page. It also has a highlighed tag — as if we were on that tag’s page.</p>
      <p class="foot">¹ By the way, this is an example of a footnote. It’s remarkable.</p>
      ',
      // 'summary' => '',
      // 'format-info' => array 2
      // 'time' => e2 time 8 May 2017, 20:46, GMT+05:00
      // 'last-modified' => e2 time 14 May 2017, 19:51, GMT+05:00
      // 'last-ip' => NULL,
      'draft?' => false,
      'scheduled?' => false,
      'public?' => true,
      'hidden?' => false,
      'favourite?' => true,
      'tags' => [
        [
          'name' => 'first tag',
          'href' => $self_href,
          'current?' => false,
          'visible?' => true,
        ],
        [
          'name' => 'the current one',
          'href' => $self_href,
          'current?' => true,
          'visible?' => true,
        ],
        [
          'name' => 'and one more',
          'href' => $self_href,
          'current?' => false,
          'visible?' => true,
        ],
      ],
      'read-count' => 147,
      // 'comments-count' => 5,
      // 'comments-count-text' => '5 comments',
      // 'href' => $self_href,
      // 'href-original' => 'http://e2/all/muzlo/',
      // 'comments-link?' => true,
      // 'new-comments-count' => 2,
      // 'new-comments-count-text' => '2 new',
      // 'favourite-toggle-action' => '',
      // 'edit-href' => 'http://e2/all/muzlo/edit/',
      // 'og-images' => [],
    ],
    [
      'id' => 3,
      'title' => 'A sample post in the <mark>search</mark> results',
      'text' => '',
      'snippet-text' => '
      <p>This is what a post looks like in the <mark>search</mark> results page. The query text would be <mark>highlighted</mark>, and all the images from the post would be previewed below. Some of them may also be <mark>highlighted</mark>. The <tt>mark</tt> tag is used for all <mark>highlighting</mark>, including the tag in the post above.</p>
      ',
      // 'summary' => '',
      // 'format-info' => array 2
      // 'time' => e2 time 8 May 2017, 20:46, GMT+05:00
      // 'last-modified' => e2 time 14 May 2017, 19:51, GMT+05:00
      // 'last-ip' => NULL,
      'draft?' => false,
      'scheduled?' => false,
      'public?' => true,
      'hidden?' => false,
      'favourite?' => false,
      'read-count' => 31,
      'thumbs' => [
        [
          'is-available?' => true,
          'src' => 'system/theme/images/sample-thumb-1@2x.jpg',
          'width' => 100,
          'height' => 79,
          'highlighted?' => false,
        ],
        [
          'is-available?' => true,
          'src' => 'system/theme/images/sample-thumb-2@2x.jpg',
          'width' => 100,
          'height' => 67,
          'highlighted?' => false,
        ],
        [
          'is-available?' => true,
          'src' => 'system/theme/images/sample-thumb-3@2x.jpg',
          'width' => 100,
          'height' => 44,
          'highlighted?' => true,
        ],
      ],
      // 'comments-count' => 5,
      // 'comments-count-text' => '5 comments',
      'href' => $self_href,
      'href-comments' => $self_href,
      // 'href-original' => 'http://e2/all/muzlo/',
      // 'comments-link?' => true,
      // 'new-comments-count' => 2,
      // 'new-comments-count-text' => '2 new',
      // 'favourite-toggle-action' => '',
      // 'edit-href' => 'http://e2/all/muzlo/edit/',
      // 'og-images' => [],
    ],
  ];

  $return['pages'] = [
    'timeline?' => true,
    'count' => 2,
    'this' => 1,
    'earlier-href' => $self_href,
    'earlier-title' => 'Earlier',
    // 'later-href' => $self_href,
    // 'later-title' => 'Later',
    // 'prev-href' => 'http://e2/all/nastraivaem-https-na-hostinge-timeweb-dlya-egei/',
    // 'prev-title' => 'Настраиваем HTTPS на хостинге TimeWeb для Эгеи',
    // 'title' => 'Posts',
    // 'this-title' => 'Музло',
  ];

  $return['comments'] = [
    'each' => [
      [
        'gip-used?' => true,
        'gip' => 'facebook',
        'userpic-set?' => true,
        'userpic-href' => 'system/theme/images/sample-face-1.jpg',
        'important?' => false,
        'name' => 'John Smith',
        'text' => '<p>This is a sample comment. Some meaningless text follows. This text is put here so that you see what a multiline comment looks.</p><p>And one more paragraph, just in case.</p>',
        'time' => [
          0 => strtotime ('21 May 2019, 11:21 +0300'),
          1 => [
            'offset' => 10800,
            'is_dst' => false,
          ],
        ],
        'replied?' => true,
        'reply-visible?' => true,
        'reply-important?' => true,
        'author-name' => 'William Sheakspeare',
        'reply' => '<p>Author’s succinct response</p>',
        'reply-time' => [
          0 => strtotime ('15 Jun 2019, 22:13 +0300'),
          1 => [
            'offset' => 10800,
            'is_dst' => false,
          ],
        ],
      ],
      [
        'gip-used?' => true,
        'gip' => 'twitter',
        'userpic-set?' => true,
        'userpic-href' => 'system/theme/images/sample-face-2.jpg',
        'important?' => false,
        'name' => 'Sabrina Irmgard Krankenschwarzdrossel',
        'text' => '<p>A surprisingly short comment.</p>',
        'time' => [
          0 => strtotime ('29 May 2019, 11:21 +0300'),
          1 => [
            'offset' => 10800,
            'is_dst' => false,
          ],
        ],
      ],
    ],
    'toggle' => [
      // 'form-action' => '',
      'submit-text' => 'Disallow comments to this post',
    ],
    // 'rss-href' => 'http://e2/all/muzlo/comments-rss/',
    'count' => 2,
    'count-text' => '2 comments',
    // 'new-count' => 0,
    // 'new-count-text' => '0 new',
    'display-form?' => true,
  ];

  $return['form-comment'] = [
    // '.note-id' => '4114',
    // '.comment-id' => 'new',
    // '.already-subscribed?' => false,
    'create:edit?' => true,
    'logged-in?' => true,
    'logged-in-gip' => 'facebook',
    'logout-url' => $self_href,
    // 'form-action' = 'http://e2/@actions/comment-process/',
    'submit-text' => 'Submit',
    'show-subscribe?' => true,
    'subscribe?' => false,
    'subscription-status' => '',
    'email-field-name' => 'elton-john',
    'name' => 'John Smith',
    'email' => '',
    'text' => 'This is a sample comment form',
  ];
  
  return $return;

?>
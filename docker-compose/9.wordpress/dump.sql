-- Adjust db after wp core install

-- Global site config
UPDATE `wp_options` SET option_value='0' WHERE option_name='thread_comments';
UPDATE `wp_options` SET option_value='Hacking Tools!' WHERE option_name='blogdescription';


-- Competitor CEO user (ID=2)
INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_registered`, `display_name`)
VALUES ('2', 'NAME', MD5('PWD'), 'NAME', 'NAME@dom.com', '2020-01-01 00:00:00', 'NAME');
INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES (NULL, '2', 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}');
INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES (NULL, '2', 'wp_user_level', '7');


-- Insert relevant posts:
DELETE FROM wp_comments;
DELETE FROM wp_posts;


-- Favicon
INSERT INTO `wp_posts` VALUES (159, 1, '2023-08-26 17:33:52', '2023-08-26 17:33:52', ''
  , 'wordpress-hackers', '', 'inherit', 'open', 'closed', ''
  , 'wordpress-hackers', '', '', '2023-08-26 17:33:52', '2023-08-26 17:33:52', '', 0
  , 'WORDPRESS_SERVER/wp-content/uploads/2023/10/wordpress-hackers.png', 0, 'attachment', 'image/png', 0);

INSERT INTO `wp_postmeta` VALUES (216, 159, '_wp_attached_file', '2023/10/wordpress-hackers.png');
INSERT INTO `wp_postmeta` VALUES (217, 159, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:500;s:4:"file";s:29:"2023/10/wordpress-hackers.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:29:"wordpress-hackers-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:29:"wordpress-hackers-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
UPDATE `wp_options` SET option_value='159' where option_name='site_icon';


-- Intro picture
INSERT INTO `wp_posts` VALUES (169, 1, '2023-10-03 18:21:02', '2023-10-03 18:21:02', ''
  , 'hackers-tools', '', 'inherit', 'open', 'closed', ''
  , 'hackers-tools', '', '', '2023-10-03 18:21:02', '2023-10-03 18:21:02', '', 0
  , 'WORDPRESS_SERVER/wp-content/uploads/2023/10/hackers-tools.png', 0, 'attachment', 'image/png', 0);

INSERT INTO `wp_postmeta` VALUES (244, 169, '_wp_attached_file', '2023/10/hackers-tools.png');
INSERT INTO `wp_postmeta` VALUES (245, 169, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:25:"2023/10/hackers-tools.png";s:5:"sizes";a:7:{s:6:"medium";a:4:{s:4:"file";s:25:"hackers-tools-300x180.png";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:26:"hackers-tools-1024x614.png";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:25:"hackers-tools-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:25:"hackers-tools-768x461.png";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:26:"hackers-tools-1536x922.png";s:5:"width";i:1536;s:6:"height";i:922;s:9:"mime-type";s:9:"image/png";}s:30:"twentyseventeen-featured-image";a:4:{s:4:"file";s:27:"hackers-tools-2000x1200.png";s:5:"width";i:2000;s:6:"height";i:1200;s:9:"mime-type";s:9:"image/png";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:25:"hackers-tools-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (323, 169, '_wp_attachment_custom_header_last_used_twentyseventeen', '1696357339');
INSERT INTO `wp_postmeta` VALUES (324, 169, '_wp_attachment_is_custom_header', 'twentyseventeen');

-- And fixes for Twenty Seventeen theme
INSERT INTO `wp_options` VALUES (119, 'theme_mods_twentyseventeen',
  'a:8:{s:18:"nav_menu_locations";a:2:{s:3:"top";i:0;s:6:"social";i:0;}s:18:"custom_css_post_id";i:-1;s:7:"panel_1";i:177;s:7:"panel_2";i:174;s:7:"panel_3";i:176;s:7:"panel_4";i:175;s:12:"header_image";s:67:"WORDPRESS_SERVER/wp-content/uploads/2023/10/hackers-tools.png";s:17:"header_image_data";O:8:"stdClass":5:{s:13:"attachment_id";i:169;s:3:"url";s:67:"WORDPRESS_SERVER/wp-content/uploads/2023/10/hackers-tools.png";s:13:"thumbnail_url";s:67:"WORDPRESS_SERVER/wp-content/uploads/2023/10/hackers-tools.png";s:6:"height";i:1200;s:5:"width";i:2000;}}'
  , 'yes');
INSERT INTO `wp_options` VALUES (129, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:0:{}}', 'yes');

INSERT INTO `wp_posts` VALUES (193, 1, '2023-10-03 18:39:40', '2023-10-03 18:39:40', '{\n    "show_on_front": {\n        "value": "posts",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2023-10-03 18:39:40"\n    },\n    "twentyseventeen::nav_menu_locations[top]": {\n        "value": 0,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2023-10-03 18:39:40"\n    },\n    "twentyseventeen::nav_menu_locations[social]": {\n        "value": 0,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2023-10-03 18:39:40"\n    },\n    "nav_menu[3]": {\n        "value": false,\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2023-10-03 18:39:40"\n    },\n    "nav_menu[2]": {\n        "value": false,\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2023-10-03 18:39:40"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0b586d66-85f5-4f8e-91ee-d17504e8d241', '', '', '2023-10-03 18:39:40', '2023-10-03 18:39:40', '', 0, 'WORDPRESS_SERVER/?p=193', 0, 'customize_changeset', '', 0);
INSERT INTO `wp_posts` VALUES (194, 1, '2023-10-03 18:50:18', '2023-10-03 18:50:18', '{\n    "sidebars_widgets[sidebar-2]": {\n        "value": [\n            "meta-4"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2023-10-03 18:42:41"\n    },\n    "sidebars_widgets[sidebar-3]": {\n        "value": [\n            "archives-4"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2023-10-03 18:43:41"\n    },\n    "sidebars_widgets[sidebar-1]": {\n        "value": [\n            "recent-posts-4"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2023-10-03 18:41:41"\n    },\n    "widget_recent-posts[4]": {\n        "value": {\n            "encoded_serialized_instance": "YTozOntzOjU6InRpdGxlIjtzOjA6IiI7czo2OiJudW1iZXIiO2k6NjtzOjk6InNob3dfZGF0ZSI7YjowO30=",\n            "title": "",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "afa5529bbc8154e8806b0fea26bf1af9"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2023-10-03 18:42:41"\n    },\n    "widget_pages[3]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2023-10-03 18:42:41"\n    },\n    "widget_meta[4]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2023-10-03 18:42:41"\n    },\n    "widget_calendar[3]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2023-10-03 18:43:41"\n    },\n    "widget_nav_menu[3]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2023-10-03 18:43:41"\n    },\n    "widget_archives[4]": {\n        "value": [],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2023-10-03 18:43:41"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c44ae016-a760-44df-beba-db74a1f84dd9', '', '', '2023-10-03 18:50:18', '2023-10-03 18:50:18', '', 0, 'WORDPRESS_SERVER/?p=194', 0, 'customize_changeset', '', 0);

INSERT INTO `wp_postmeta` VALUES (425, 193, '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES (426, 193, '_wp_trash_meta_time', '1696358380');
INSERT INTO `wp_postmeta` VALUES (428, 194, '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES (429, 194, '_wp_trash_meta_time', '1696359018');






INSERT INTO `wp_posts` VALUES (134, 3
, CURDATE(), CURDATE()
, '<!-- wp:heading -->\n<h2>Chrome Dev Tools</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Open Dev Tools with <strong>F12</strong>.<br>The following tabs will be interesting today:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li><strong>Application </strong>&gt; "Local Storage"<ul><li>token: Your JWT token</li><li>user: Your details</li></ul></li><li><strong>Network</strong><ul><li>Many hacks are performed by doing a Http request.<br>The flag is typically in the Response of such request!</li><li>Interesting options<ul><li>Fetch/XHR: this is what we\'re interested in</li><li>Preserve log: do not purge the list when the page is refreshed</li></ul></li><li>Interesting request details<ul><li>Headers &gt; Request Url: to see query string arguments</li><li>Payload: the body sent with the request</li><li>Response: the reply from the server</li></ul></li></ul></li><li>Console<ul><li>Interesting logs or errors may show up here</li></ul></li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading -->\n<h2>Forging Requests</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>To hack into the systems, you will need to manipulate legit requests to achieve something unintended.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href="https://www.postman.com/downloads/">Postman</a> is a well known tool for forging requests. Since it is somewhat being commercialized, here are some free alternatives that look and work exactly like Postman. They are all compatible with Postman exported collections.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li><a href="https://hoppscotch.io/">hoppscotch.io</a>: in-browser (or via Docker)</li><li><a href="https://github.com/Kong/insomnia">Insomnia</a>: desktop app</li><li><a href="https://github.com/rangav/thunder-client-support">Thunder Client</a>: VSCode plugin</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading -->\n<h2>Hacking Tools</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>There are small tutorials on all hacking tools useful for the bootcamp on this blog!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Good Luck!</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->'
, 'Getting Started', '', 'publish', 'closed', 'open', ''
, 'getting-started', '', ''
, CURDATE(), CURDATE(), '', 0
, 'WORDPRESS_SERVER/?p=134', 0, 'post', '', 0);

INSERT INTO `wp_posts` VALUES (139, 1, '2023-08-31 13:33:11', '2023-08-31 13:33:11', ''
  , 'blog-getting-started', '', 'inherit', 'open', 'closed', '', 'blog-getting-started', '', ''
  , '2023-08-31 13:33:11', '2023-08-31 13:33:11', '', 0
  , 'WORDPRESS_SERVER/wp-content/uploads/2023/08/blog-getting-started.png', 0, 'attachment', 'image/png', 0);

INSERT INTO `wp_postmeta` VALUES (93, 139, '_wp_attached_file', '2023/08/blog-getting-started.png');
INSERT INTO `wp_postmeta` VALUES (94, 139, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:250;s:4:"file";s:32:"2023/08/blog-getting-started.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:32:"blog-getting-started-300x150.png";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:32:"blog-getting-started-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (95, 134, '_thumbnail_id', '139');

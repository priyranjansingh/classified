#
# TABLE STRUCTURE FOR: dc_blog
#

DROP TABLE IF EXISTS dc_blog;

CREATE TABLE `dc_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` char(30) NOT NULL,
  `featured_img` char(200) NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO dc_blog (`id`, `type`, `featured_img`, `title`, `description`, `created_by`, `create_time`, `status`) VALUES (1, 'blog', '2013-chevrolet-express-cargo-van-steel-wheels-980x4761.jpg', '{\"ar\":\"hello world\",\"bn\":\"\",\"en\":\"Demo blog post en\",\"es\":\"\",\"fr\":\"\",\"nl\":\"\",\"pt\":\"\",\"ru\":\"Demo blog post ru\"}', '{\"ar\":\"<p>Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.<\\/p>\\r\\n<p>Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.<\\/p>\",\"bn\":\"\",\"en\":\"<p>en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.<\\/p>\\r\\n<p>en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.<\\/p>\",\"es\":\"\",\"fr\":\"\",\"nl\":\"\",\"pt\":\"\",\"ru\":\"<p>ru demo blog post content.<\\/p>\"}', 4, 1423740705, 0);
INSERT INTO dc_blog (`id`, `type`, `featured_img`, `title`, `description`, `created_by`, `create_time`, `status`) VALUES (2, 'article', 'iphone42.jpg', '{\"ar\":\"\",\"bn\":\"\",\"en\":\"Lorem ipsum doller sit amet\",\"es\":\"\",\"fr\":\"\",\"nl\":\"\",\"pt\":\"\",\"ru\":\"\"}', '{\"ar\":\"\",\"bn\":\"\",\"en\":\"<p>Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit amet.Lorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit amet.Lorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit amet.Lorem ipsum doller sit ametLorem ipsum doller sit amet<\\/p>\",\"es\":\"\",\"fr\":\"\",\"nl\":\"\",\"pt\":\"\",\"ru\":\"\"}', 4, 1424087935, 0);
INSERT INTO dc_blog (`id`, `type`, `featured_img`, `title`, `description`, `created_by`, `create_time`, `status`) VALUES (3, 'news', '2013-chevrolet-express-cargo-van-steel-wheels-980x4763.jpg', '{\"ar\":\"\",\"bn\":\"\",\"en\":\"Lorem ipsum doller sit ametLorem ipsum doller sit amet\",\"es\":\"\",\"fr\":\"\",\"nl\":\"\",\"pt\":\"\",\"ru\":\"\"}', '{\"ar\":\"\",\"bn\":\"\",\"en\":\"<p>Lorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit amet<\\/p>\\r\\n<p>Lorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit amet<\\/p>\",\"es\":\"\",\"fr\":\"\",\"nl\":\"\",\"pt\":\"\",\"ru\":\"\"}', 4, 1424087980, 0);
INSERT INTO dc_blog (`id`, `type`, `featured_img`, `title`, `description`, `created_by`, `create_time`, `status`) VALUES (4, 'blog', 'Afghan_Cars_-_List_Your_Car_2014-11-16_23-24-10.png', '{\"en\":\"My Blog\",\"ru\":\"\",\"ar\":\"\"}', '{\"en\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.Morbi eu sapien ac diam facilisis vehicula nec sit amet odio. Vivamus quis dui ac nulla molestie blandit eu in nunc. In justo erat, lacinia in vulputate non, tristique eu mi. Aliquam tristique dapibus tempor. Vivamus malesuada tempor urna, in convallis massa lacinia sed. Phasellus gravida auctor vestibulum. Suspendisse potenti. In tincidunt felis bibendum nunc tempus sagittis. Praesent elit dolor, ultricies interdum porta sit amet, iaculis in neque. Nullam urna ante, tempus vel iaculis nec, rutrum sit amet nulla. Morbi vestibulum ante in turpis ultricies in tincidunt sapien iaculis. Aenean feugiat rhoncus arcu, at luctus libero blandit tempus. Vivamus rutrum tellus quis leo placerat eu adipiscing purus vehicula.<\\/p>\",\"ru\":\"\",\"ar\":\"\"}', 1, 1424349059, 1);


#
# TABLE STRUCTURE FOR: dc_blog_meta
#

DROP TABLE IF EXISTS dc_blog_meta;

CREATE TABLE `dc_blog_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `key` char(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: dc_categories
#

DROP TABLE IF EXISTS dc_categories;

CREATE TABLE `dc_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL,
  `fa_icon` char(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (1, 'electronics', 0, 'fa-lightbulb-o', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (2, 'community', 0, 'fa-users', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (3, 'fashion', 0, 'fa-female', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (4, 'jobs', 0, 'fa-briefcase', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (5, 'matrimonials', 0, 'fa-heart', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (6, 'pets', 0, 'fa-github', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (7, 'real_estate', 0, 'fa-home', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (8, 'vehicles', 0, 'fa-truck', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (9, 'services', 0, 'fa-wrench', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (10, 'computers_and_laptops', 1, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (11, 'home_appliances', 1, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (12, 'mobiles_and_tablets', 1, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (13, 'tv_and_media', 1, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (14, 'carpool', 2, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (15, 'churches', 2, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (16, 'garage_sales', 2, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (17, 'bags', 3, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (18, 'beauty_products', 3, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (19, 'jewelry', 3, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (20, 'shoes', 3, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (21, 'watches', 3, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (22, 'accounting', 4, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (23, 'cleaning', 4, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (24, 'construction_work', 4, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (25, 'brides', 5, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (26, 'casual_encounters', 5, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (27, 'grooms', 5, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (28, 'cats', 6, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (29, 'dogs', 6, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (30, 'fish_and_reptiles', 6, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (31, 'pet_food', 6, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (32, 'apartment', 7, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (33, 'commercial_places', 7, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (34, 'homes', 7, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (35, 'lands', 7, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (36, 'rentals', 7, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (37, 'sports_cars', 8, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (38, 'SUV', 8, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (39, 'sedan', 8, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (40, 'van_and_truck', 8, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (41, 'cleaning_service', 9, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (42, 'catering_service', 9, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (43, 'moving_service', 9, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (44, 'educational', 9, '', 1, 0, 1);
INSERT INTO dc_categories (`id`, `title`, `parent`, `fa_icon`, `created_by`, `create_time`, `status`) VALUES (45, 'medical', 9, '', 1, 0, 1);


#
# TABLE STRUCTURE FOR: dc_emailtmpl
#

DROP TABLE IF EXISTS dc_emailtmpl;

CREATE TABLE `dc_emailtmpl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_name` char(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `values` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO dc_emailtmpl (`id`, `email_name`, `values`, `status`) VALUES (1, 'confirmation_email', '{\"subject\":\"Confirmation email\",\"body\":\"Hi #username,\\r\\nYour signup is successful. Please follow the below link for activating your account:\\r\\n \\r\\n#activationlink\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\nThanks\\r\\n#webadmin\",\"avl_vars\":\"#username,#useremail,#activationlink,#webadmin\"}', 1);
INSERT INTO dc_emailtmpl (`id`, `email_name`, `values`, `status`) VALUES (2, 'recovery_email', '{\"subject\":\"Recovery email\",\"body\":\"Hi #username,\\r\\nWe have received an account recovery request from your email. Please follow the below link for setting new password \\r\\n\\r\\n#recoverylink\\r\\n\\r\\nThanks\\r\\n#webadmin\",\"avl_vars\":\"#username,#recoverylink,#webadmin\"}', 1);
INSERT INTO dc_emailtmpl (`id`, `email_name`, `values`, `status`) VALUES (3, 'payment_confirmation_email', '{\"subject\":\"Confirmation email\",\"body\":\"Hi #username,\\nYour account is confirmed. Please follow the below link for login\\n\\n#loginlink\\n\\nThanks\\n#webadmin\",\"avl_vars\":\"#username,#loginlink,#webadmin\"}', 1);


#
# TABLE STRUCTURE FOR: dc_locations
#

DROP TABLE IF EXISTS dc_locations;

CREATE TABLE `dc_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL,
  `parent_country` int(11) NOT NULL,
  `name` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` char(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;

INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (1, 0, 0, 'USA', 'country', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (2, 0, 0, ' Canada', 'country', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (3, 0, 0, ' UK', 'country', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (4, 0, 0, ' Mexico', 'country', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (5, 1, 1, 'Alabama', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (6, 1, 1, ' Alaska', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (7, 1, 1, ' Arizona', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (8, 1, 1, ' Arkansas', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (9, 1, 1, ' California', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (10, 1, 1, ' Colorado', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (11, 1, 1, ' Connecticut', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (12, 1, 1, ' Delaware', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (13, 1, 1, ' Florida', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (14, 1, 1, ' Georgia', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (15, 1, 1, ' Hawaii', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (16, 1, 1, ' Idaho', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (17, 1, 1, ' Illinois', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (18, 1, 1, ' Indiana', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (19, 1, 1, ' Iowa', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (20, 1, 1, ' Kansas', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (21, 1, 1, ' Kentucky', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (22, 1, 1, ' Louisiana', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (23, 1, 1, ' Maine', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (24, 1, 1, ' Maryland', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (25, 1, 1, ' Massachusetts', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (26, 1, 1, ' Michigan', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (27, 1, 1, ' Minnesota', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (28, 1, 1, ' Mississippi', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (29, 1, 1, ' Missouri', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (30, 1, 1, ' Montana', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (31, 1, 1, ' Nebraska', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (32, 1, 1, ' Nevada', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (33, 1, 1, ' New Hampshire', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (34, 1, 1, ' New Jersey', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (35, 1, 1, ' New Mexico', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (36, 1, 1, ' New York', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (37, 1, 1, ' North Carolina', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (38, 1, 1, ' North Dakota', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (39, 1, 1, ' Ohio', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (40, 1, 1, ' Oklahoma', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (41, 1, 1, ' Oregon', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (42, 1, 1, ' Pennsylvania', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (43, 1, 1, ' Rhode Island', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (44, 1, 1, ' South Carolina', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (45, 1, 1, ' South Dakota', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (46, 1, 1, ' Tennessee', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (47, 1, 1, ' Texas', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (48, 1, 1, ' Utah', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (49, 1, 1, ' Vermont', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (50, 1, 1, ' Virginia', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (51, 1, 1, ' Washington', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (52, 1, 1, ' West Virginia', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (53, 1, 1, ' Wisconsin', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (54, 1, 1, ' Wyoming', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (55, 2, 2, 'Alberta', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (56, 2, 2, ' British Columbia', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (57, 2, 2, ' Manitoba', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (58, 2, 2, ' New Brunswick', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (59, 2, 2, ' Newfoundland', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (60, 2, 2, ' Northwest Territories', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (61, 2, 2, ' Nova Scotia', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (62, 2, 2, ' Nunavut', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (63, 2, 2, ' Ontario', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (64, 2, 2, ' Prince Edward Island', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (65, 2, 2, ' Quebec', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (66, 2, 2, ' Saskatchewan', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (67, 2, 2, ' Yukon', 'state', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (68, 9, 1, 'Los Angeles', 'city', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (69, 9, 1, 'San Diego', 'city', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (70, 9, 1, 'Palm Sprigs', 'city', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (71, 9, 1, 'San Francisco', 'city', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (72, 9, 1, 'Long Beach', 'city', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (73, 5, 1, 'Florence', 'city', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (74, 5, 1, 'Northport', 'city', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (75, 5, 1, 'Columbiana', 'city', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (76, 13, 1, 'Miami', 'city', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (77, 32, 1, 'Las Vegas', 'city', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (78, 7, 1, 'Phoenix', 'city', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (79, 35, 1, 'Albuquerque', 'city', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (80, 7, 1, 'Tucson', 'city', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (81, 10, 1, 'Denver', 'city', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (82, 35, 1, 'Santa Fe', 'city', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (83, 36, 1, 'New York', 'city', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (84, 42, 1, 'Philadelphia', 'city', 1);
INSERT INTO dc_locations (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES (85, 13, 1, 'Jacksonville', 'city', 1);


#
# TABLE STRUCTURE FOR: dc_media
#

DROP TABLE IF EXISTS dc_media;

CREATE TABLE `dc_media` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `media_name` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `media_url` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `created_by` int(10) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: dc_options
#

DROP TABLE IF EXISTS dc_options;

CREATE TABLE `dc_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `values` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO dc_options (`id`, `key`, `values`, `status`) VALUES (1, 'site_settings', '{\"site_title\":\"NuggPlug Classified\",\"footer_text\":\"NuggPlug 2015, all rights reserved\",\"site_logo\":\"logo_default1.png\",\"site_lang\":\"en\",\"site_direction\":\"ltr\",\"site_direction_rules\":\"required\",\"per_page\":\"6\",\"default_layout\":\"1\",\"ga_tracking_code\":\"\",\"meta_description\":\"buy sell your products and goods. number one classified cms. Build your own in just two easy steps\",\"key_words\":\"classified,sell,buy,post,ads,category,pet,electronics\",\"crawl_after\":\"3\"}', 1);
INSERT INTO dc_options (`id`, `key`, `values`, `status`) VALUES (2, 'active_theme', 'default', 1);
INSERT INTO dc_options (`id`, `key`, `values`, `status`) VALUES (3, 'positions', '[{\"name\":\"home_page\",\"status\":1,\"widgets\":[\"category_main\",\"category_counter\",\"featured_posts_main\",\"recent_posts_main\",\"adsense_full_width\",\"top_locations_home\"]},{\"name\":\"right_bar_home\",\"status\":1,\"widgets\":[\"plain_search_widget\",\"top_posts\",\"category_sidebar\",\"fb_likebox\",\"featured_post\",\"recent_post\",\"top_users\",\"adsense_sidebar\",\"top_locations_sidebar\"]},{\"name\":\"right_bar_detail\",\"status\":1,\"widgets\":[\"plain_search_widget\",\"recent_post\",\"top_locations_sidebar\"]},{\"name\":\"right_bar_all_users\",\"status\":1,\"widgets\":[\"plain_search_widget\",\"featured_post\",\"top_locations_sidebar\",\"category_sidebar\",\"recent_post\"]},{\"name\":\"right_bar_locations\",\"status\":1,\"widgets\":[\"plain_search_widget\",\"recent_post\",\"top_locations_sidebar\",\"category_sidebar\",\"featured_post\",\"adsense_sidebar\"]},{\"name\":\"right_bar_categories\",\"status\":1,\"widgets\":[\"plain_search_widget\",\"recent_post\",\"adsense_sidebar\",\"fb_likebox\",\"top_locations_sidebar\",\"category_featured_post\"]},{\"name\":\"right_bar_search_page\",\"status\":1,\"widgets\":false},{\"name\":\"right_bar_general\",\"status\":1,\"widgets\":[\"plain_search_widget\",\"featured_post\",\"top_locations_sidebar\",\"category_sidebar\"]},{\"name\":\"right_bar_blog_posts\",\"status\":1,\"widgets\":[\"plain_search_widget\",\"top_locations_sidebar\",\"featured_post\"]},{\"name\":\"footer_first_column\",\"status\":1,\"widgets\":[\"contact_text\"]},{\"name\":\"footer_second_column\",\"status\":1,\"widgets\":[\"follow_us\"]},{\"name\":\"footer_third_column\",\"status\":1,\"widgets\":[\"short_description\"]}]', 1);
INSERT INTO dc_options (`id`, `key`, `values`, `status`) VALUES (4, 'top_menu', '[{\"id\":\"1\",\"parent\":0},{\"id\":\"10\",\"parent\":0},{\"id\":\"2\",\"parent\":0},{\"id\":\"9\",\"parent\":0},{\"id\":\"5\",\"parent\":\"9\"},{\"id\":\"11\",\"parent\":\"9\"},{\"id\":\"3\",\"parent\":\"9\"},{\"id\":\"6\",\"parent\":\"9\"},{\"id\":\"7\",\"parent\":\"9\"},{\"id\":\"8\",\"parent\":\"9\"},{\"id\":\"4\",\"parent\":0}]', 1);
INSERT INTO dc_options (`id`, `key`, `values`, `status`) VALUES (5, 'purchase_key', '', 1);
INSERT INTO dc_options (`id`, `key`, `values`, `status`) VALUES (6, 'item_id', '', 1);
INSERT INTO dc_options (`id`, `key`, `values`, `status`) VALUES (7, 'paypal_settings', '{\"enable_sandbox_mode\":\"Yes\",\"enable_sandbox_mode_rules\":\"required\",\"item_name\":\"Realestate Agent Package\",\"item_name_rules\":\"required\",\"email\":\"seller@paypalsandbox.com\",\"email_rules\":\"required\",\"currency\":\"USD\",\"currency_rules\":\"required\",\"finish_url\":\"user\\/payment\\/finish_url\",\"finish_url_rules\":\"required\",\"cancel_url\":\"user\\/payment\\/cancel_url\",\"cancel_url_rules\":\"required\"}', 1);
INSERT INTO dc_options (`id`, `key`, `values`, `status`) VALUES (8, 'banner_settings', '{\"menu_bg_color\":\"rgba(48,46,44,0.86)\",\"menu_text_color\":\"#ffffff\",\"active_menu_text_color\":\"#ffffff\",\"banner_type\":\"Layer Slider\",\"search_panel_bg_color\":\"#beeba2\",\"show_bg_image\":false,\"search_bg\":\"vacation_house_interior-wallpaper-1920x1200-1920x664.jpg\",\"map_latitude\":\"34.0204989\",\"map_longitude\":\"-118.4117325\",\"map_zoom\":\"6\"}', 1);
INSERT INTO dc_options (`id`, `key`, `values`, `status`) VALUES (9, 'webadmin_email', '{\"contact_email\":\"shimulcsedu@gmail.com\",\"webadmin_name\":\"Webadmin\",\"webadmin_email\":\"support@nuggplug.com\"}', 1);
INSERT INTO dc_options (`id`, `key`, `values`, `status`) VALUES (10, 'smtp_settings', '{\"smtp_email\":\"Disable\",\"smtp_email_rules\":\"required\",\"smtp_host\":\"ssl:\\/\\/smtp.googlemail.com\",\"smtp_host_rules\":\"required\",\"smtp_port\":\"465\",\"smtp_port_rules\":\"required\",\"smtp_timeout\":\"30\",\"smtp_timeout_rules\":\"required\",\"smtp_user\":\"test@example.com\",\"smtp_user_rules\":\"required|valid_email\",\"smtp_pass\":\"1234\",\"smtp_pass_rules\":\"required\",\"char_set\":\"utf-8\",\"char_set_rules\":\"required\",\"new_line\":\"\\\\r\\\\n\",\"new_line_rules\":\"required\",\"mail_type\":\"html\",\"mail_type_rules\":\"required\"}', 1);
INSERT INTO dc_options (`id`, `key`, `values`, `status`) VALUES (11, 'classified_settings', '{\"publish_directly\":\"Yes\",\"publish_directly_rules\":\"required\",\"system_currency\":\"USD\",\"system_currency_type\":\"0\",\"system_currency_rules\":\"required\",\"enable_signup\":\"Yes\",\"enable_signup_rules\":\"required\",\"hide_posts_if_expired\":\"No\",\"hide_posts_if_expired_rules\":\"required\",\"show_admin_agent\":\"Yes\",\"show_admin_agent_rules\":\"required\",\"show_state_province\":\"yes\",\"show_state_province_rules\":\"required\",\"posts_per_page\":\"6\",\"posts_per_page_rules\":\"required\",\"max_price_for_search\":\"10000\",\"max_price_for_search_rules\":\"required\",\"currency_placing\":\"before_with_gap\",\"currency_placing_rules\":\"required\",\"enable_fb_login\":\"No\",\"enable_fb_login_rules\":\"required\",\"fb_app_id\":\"\",\"fb_app_id_rules\":\"\",\"fb_secret_key\":\"\",\"fb_secret_key_rules\":\"\",\"enable_comment\":\"No\",\"enable_comment_rules\":\"required\",\"fb_comment_app_id\":\"\",\"fb_comment_app_id_rules\":\"\",\"disqus_shortname\":\"\",\"disqus_shortname_rules\":\"\"}', 1);
INSERT INTO dc_options (`id`, `key`, `values`, `status`) VALUES (12, 'package_settings', '{\"enable_pricing\":\"Yes\",\"enable_pricing_rules\":\"required\",\"enable_paypal_transfer\":\"Yes\",\"enable_paypal_transfer_rules\":\"required\",\"enable_bank_transfer\":\"Yes\",\"enable_bank_transfer_rules\":\"required\",\"bank_transfer_instruction_for_posts\":\"Hello \",\"bank_transfer_instruction_for_posts_rules\":\"required\",\"enable_featured_pricing\":\"Yes\",\"enable_featured_pricing_rules\":\"required\",\"enable_featured_paypal_transfer\":\"Yes\",\"enable_featured_paypal_transfer_rules\":\"required\",\"enable_featured_bank_transfer\":\"No\",\"enable_featured_bank_transfer_rules\":\"required\",\"bank_transfer_instruction_for_featured_posts\":\"\",\"bank_transfer_instruction_for_featured_posts_rules\":\"\"}', 1);


#
# TABLE STRUCTURE FOR: dc_packages
#

DROP TABLE IF EXISTS dc_packages;

CREATE TABLE `dc_packages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` char(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post_package',
  `title` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `expiration_time` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO dc_packages (`id`, `type`, `title`, `description`, `price`, `expiration_time`, `status`) VALUES (1, 'featured_package', 'Basic', 'Sample Package Description...', '0.00', 30, 1);
INSERT INTO dc_packages (`id`, `type`, `title`, `description`, `price`, `expiration_time`, `status`) VALUES (2, 'post_package', 'Normal', '', '10.00', 60, 1);
INSERT INTO dc_packages (`id`, `type`, `title`, `description`, `price`, `expiration_time`, `status`) VALUES (3, 'post_package', 'Free', 'Free for 5 days', '0.00', 5, 1);


#
# TABLE STRUCTURE FOR: dc_pages
#

DROP TABLE IF EXISTS dc_pages;

CREATE TABLE `dc_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` char(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `show_in_menu` int(1) NOT NULL DEFAULT '1',
  `layout` int(1) NOT NULL,
  `content_from` char(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Manual',
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url` char(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sidebar` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `seo_settings` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `create_time` int(20) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '1',
  `editable` int(1) NOT NULL DEFAULT '1',
  `parent` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`),
  UNIQUE KEY `alias_2` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO dc_pages (`id`, `alias`, `show_in_menu`, `layout`, `content_from`, `title`, `url`, `content`, `sidebar`, `seo_settings`, `create_time`, `status`, `editable`, `parent`) VALUES (1, 'home', 1, 1, 'Url', '[home]', '', '', '', '{\"meta_description\":\"classified buy sell. real estates electronics pets vehicles matrimonial jobs community services fashion search and post your ad Top Featured Posts categories\",\"key_words\":\"sale,rent,buy,classified,cms,NuggPlug,electronics,real estate,pets,fashion\",\"crawl_after\":\"3\"}', 1424346356, 1, 0, 0);
INSERT INTO dc_pages (`id`, `alias`, `show_in_menu`, `layout`, `content_from`, `title`, `url`, `content`, `sidebar`, `seo_settings`, `create_time`, `status`, `editable`, `parent`) VALUES (2, 'advanced_search', 1, 1, 'Url', '[advanced_search]', 'results', '', '', '{\"meta_description\":\"\",\"key_words\":\"\",\"crawl_after\":\"\"}', 2147483647, 1, 0, 0);
INSERT INTO dc_pages (`id`, `alias`, `show_in_menu`, `layout`, `content_from`, `title`, `url`, `content`, `sidebar`, `seo_settings`, `create_time`, `status`, `editable`, `parent`) VALUES (3, 'about', 1, 1, 'Manual', '[about]', 'page/about', '<p>About Us:</p>\r\n<p>Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet.</p>\r\n<p>Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet.</p>', '<p>Phone : +34534223434</p>\r\n<p>Mail : support@nuggplug.com</p>', '{\"meta_description\":\"\",\"key_words\":\"\",\"crawl_after\":\"\"}', 2147483647, 1, 0, 0);
INSERT INTO dc_pages (`id`, `alias`, `show_in_menu`, `layout`, `content_from`, `title`, `url`, `content`, `sidebar`, `seo_settings`, `create_time`, `status`, `editable`, `parent`) VALUES (4, 'contact', 1, 1, 'Url', '[contact]', 'contact', '', '', '{\"meta_description\":\"contact us page for NuggPlug, this meta will be read by search engine\",\"key_words\":\"classified,buy,sale\",\"crawl_after\":\"3\"}', 1424339457, 1, 1, 0);
INSERT INTO dc_pages (`id`, `alias`, `show_in_menu`, `layout`, `content_from`, `title`, `url`, `content`, `sidebar`, `seo_settings`, `create_time`, `status`, `editable`, `parent`) VALUES (5, 'users', 1, 0, 'Url', '[users]', 'users', '', '', '{\"meta_description\":\"\",\"key_words\":\"\",\"crawl_after\":\"\"}', 2147483647, 1, 1, 0);
INSERT INTO dc_pages (`id`, `alias`, `show_in_menu`, `layout`, `content_from`, `title`, `url`, `content`, `sidebar`, `seo_settings`, `create_time`, `status`, `editable`, `parent`) VALUES (6, 'blog', 1, 0, 'Url', '[blog]', 'blog-posts', '', '', '{\"meta_description\":\"\",\"key_words\":\"\",\"crawl_after\":\"\"}', 1424339472, 1, 1, 0);
INSERT INTO dc_pages (`id`, `alias`, `show_in_menu`, `layout`, `content_from`, `title`, `url`, `content`, `sidebar`, `seo_settings`, `create_time`, `status`, `editable`, `parent`) VALUES (7, 'news', 1, 0, 'Url', '[news]', 'news-posts', '', '', '{\"meta_description\":\"\",\"key_words\":\"\",\"crawl_after\":\"\"}', 1424339480, 1, 1, 0);
INSERT INTO dc_pages (`id`, `alias`, `show_in_menu`, `layout`, `content_from`, `title`, `url`, `content`, `sidebar`, `seo_settings`, `create_time`, `status`, `editable`, `parent`) VALUES (8, 'articles', 1, 0, 'Url', '[articles]', 'article-posts', '', '', '{\"meta_description\":\"\",\"key_words\":\"\",\"crawl_after\":\"\"}', 1424339485, 1, 1, 0);
INSERT INTO dc_pages (`id`, `alias`, `show_in_menu`, `layout`, `content_from`, `title`, `url`, `content`, `sidebar`, `seo_settings`, `create_time`, `status`, `editable`, `parent`) VALUES (9, 'pages', 1, 0, 'Url', '[pages]', '#', '', '', '{\"meta_description\":\"\",\"key_words\":\"\",\"crawl_after\":\"\"}', 2147483647, 1, 1, 0);
INSERT INTO dc_pages (`id`, `alias`, `show_in_menu`, `layout`, `content_from`, `title`, `url`, `content`, `sidebar`, `seo_settings`, `create_time`, `status`, `editable`, `parent`) VALUES (10, 'post_ad', 1, 0, 'Url', '[post_ad]', 'post-ad', '', '', '{\"meta_description\":\"\",\"key_words\":\"\",\"crawl_after\":\"\"}', 2147483647, 1, 1, 0);
INSERT INTO dc_pages (`id`, `alias`, `show_in_menu`, `layout`, `content_from`, `title`, `url`, `content`, `sidebar`, `seo_settings`, `create_time`, `status`, `editable`, `parent`) VALUES (11, 'locations', 1, 2, 'Url', '[locations]', 'locations', '', '', '{\"meta_description\":\"city, state, country\",\"key_words\":\"city, state, country\",\"crawl_after\":\"3\"}', 2147483647, 1, 1, 0);


#
# TABLE STRUCTURE FOR: dc_post_meta
#

DROP TABLE IF EXISTS dc_post_meta;

CREATE TABLE `dc_post_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `key` char(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: dc_post_package
#

DROP TABLE IF EXISTS dc_post_package;

CREATE TABLE `dc_post_package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unique_id` char(100) NOT NULL,
  `post_id` int(15) NOT NULL,
  `package_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `request_date` date NOT NULL,
  `activation_date` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `is_active` int(1) NOT NULL COMMENT '0=no,2=pending,1=active',
  `status` int(1) NOT NULL COMMENT '0=deleted,1=active',
  `payment_medium` char(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'paypal',
  `payment_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `response_log` text CHARACTER SET utf32 COLLATE utf32_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_id` (`unique_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

INSERT INTO dc_post_package (`id`, `unique_id`, `post_id`, `package_id`, `amount`, `request_date`, `activation_date`, `expiration_date`, `is_active`, `status`, `payment_medium`, `payment_type`, `response_log`) VALUES (1, '54e5b1ea4eb01', 1, 3, '0.00', '2015-02-19', '2015-02-19', '2015-02-24', 1, 1, 'paypal', 'post', 'Free package');
INSERT INTO dc_post_package (`id`, `unique_id`, `post_id`, `package_id`, `amount`, `request_date`, `activation_date`, `expiration_date`, `is_active`, `status`, `payment_medium`, `payment_type`, `response_log`) VALUES (2, '54e5b2c8d9bf6', 2, 3, '0.00', '2015-02-19', '2015-02-19', '2015-02-24', 1, 1, 'paypal', 'post', 'Free package');
INSERT INTO dc_post_package (`id`, `unique_id`, `post_id`, `package_id`, `amount`, `request_date`, `activation_date`, `expiration_date`, `is_active`, `status`, `payment_medium`, `payment_type`, `response_log`) VALUES (3, '54e5b36f23dc0', 3, 3, '0.00', '2015-02-19', '2015-02-19', '2015-02-24', 1, 1, 'paypal', 'post', 'Free package');
INSERT INTO dc_post_package (`id`, `unique_id`, `post_id`, `package_id`, `amount`, `request_date`, `activation_date`, `expiration_date`, `is_active`, `status`, `payment_medium`, `payment_type`, `response_log`) VALUES (4, '54e5b40b85349', 4, 3, '0.00', '2015-02-19', '2015-02-19', '2015-02-24', 1, 1, 'paypal', 'post', 'Free package');
INSERT INTO dc_post_package (`id`, `unique_id`, `post_id`, `package_id`, `amount`, `request_date`, `activation_date`, `expiration_date`, `is_active`, `status`, `payment_medium`, `payment_type`, `response_log`) VALUES (5, '54e5b4b89f513', 5, 3, '0.00', '2015-02-19', '2015-02-19', '2015-02-24', 1, 1, 'paypal', 'post', 'Free package');
INSERT INTO dc_post_package (`id`, `unique_id`, `post_id`, `package_id`, `amount`, `request_date`, `activation_date`, `expiration_date`, `is_active`, `status`, `payment_medium`, `payment_type`, `response_log`) VALUES (6, '54e5b59278dd4', 6, 3, '0.00', '2015-02-19', '2015-02-19', '2015-02-24', 1, 1, 'paypal', 'post', 'Free package');
INSERT INTO dc_post_package (`id`, `unique_id`, `post_id`, `package_id`, `amount`, `request_date`, `activation_date`, `expiration_date`, `is_active`, `status`, `payment_medium`, `payment_type`, `response_log`) VALUES (7, '54e5b63488795', 7, 3, '0.00', '2015-02-19', '2015-02-19', '2015-02-24', 1, 1, 'paypal', 'post', 'Free package');
INSERT INTO dc_post_package (`id`, `unique_id`, `post_id`, `package_id`, `amount`, `request_date`, `activation_date`, `expiration_date`, `is_active`, `status`, `payment_medium`, `payment_type`, `response_log`) VALUES (8, '54e5b7598eabd', 8, 3, '0.00', '2015-02-19', '2015-02-19', '2015-02-24', 1, 1, 'paypal', 'post', 'Free package');
INSERT INTO dc_post_package (`id`, `unique_id`, `post_id`, `package_id`, `amount`, `request_date`, `activation_date`, `expiration_date`, `is_active`, `status`, `payment_medium`, `payment_type`, `response_log`) VALUES (9, '54e5b7f8ca041', 9, 3, '0.00', '2015-02-19', '2015-02-19', '2015-02-24', 1, 1, 'paypal', 'post', 'Free package');
INSERT INTO dc_post_package (`id`, `unique_id`, `post_id`, `package_id`, `amount`, `request_date`, `activation_date`, `expiration_date`, `is_active`, `status`, `payment_medium`, `payment_type`, `response_log`) VALUES (10, '54e5b8da95b16', 10, 3, '0.00', '2015-02-19', '2015-02-19', '2015-02-24', 1, 1, 'paypal', 'post', 'Free package');
INSERT INTO dc_post_package (`id`, `unique_id`, `post_id`, `package_id`, `amount`, `request_date`, `activation_date`, `expiration_date`, `is_active`, `status`, `payment_medium`, `payment_type`, `response_log`) VALUES (11, '54e5bb711d073', 12, 3, '0.00', '2015-02-19', '2015-02-19', '2015-02-24', 1, 1, 'paypal', 'post', 'Free package');
INSERT INTO dc_post_package (`id`, `unique_id`, `post_id`, `package_id`, `amount`, `request_date`, `activation_date`, `expiration_date`, `is_active`, `status`, `payment_medium`, `payment_type`, `response_log`) VALUES (12, '54e5bc6d00b84', 13, 3, '0.00', '2015-02-19', '2015-02-19', '2015-02-24', 1, 1, 'paypal', 'post', 'Free package');
INSERT INTO dc_post_package (`id`, `unique_id`, `post_id`, `package_id`, `amount`, `request_date`, `activation_date`, `expiration_date`, `is_active`, `status`, `payment_medium`, `payment_type`, `response_log`) VALUES (13, '54e5bd1c01c3f', 14, 3, '0.00', '2015-02-19', '2015-02-19', '2015-02-24', 1, 1, 'paypal', 'post', 'Free package');
INSERT INTO dc_post_package (`id`, `unique_id`, `post_id`, `package_id`, `amount`, `request_date`, `activation_date`, `expiration_date`, `is_active`, `status`, `payment_medium`, `payment_type`, `response_log`) VALUES (14, '54e5bde09a7e4', 15, 3, '0.00', '2015-02-19', '2015-02-19', '2015-02-24', 1, 1, 'paypal', 'post', 'Free package');
INSERT INTO dc_post_package (`id`, `unique_id`, `post_id`, `package_id`, `amount`, `request_date`, `activation_date`, `expiration_date`, `is_active`, `status`, `payment_medium`, `payment_type`, `response_log`) VALUES (15, '54e5bef604018', 16, 3, '0.00', '2015-02-19', '2015-02-19', '2015-02-24', 1, 1, 'paypal', 'post', 'Free package');


#
# TABLE STRUCTURE FOR: dc_posts
#

DROP TABLE IF EXISTS dc_posts;

CREATE TABLE `dc_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unique_id` char(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `tags` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `purpose` char(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `parent_category` int(11) NOT NULL DEFAULT '0',
  `contact_for_price` int(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) NOT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` char(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `zip_code` char(15) NOT NULL,
  `latitude` char(20) NOT NULL,
  `longitude` char(20) NOT NULL,
  `featured_img` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `video_url` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `gallery` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_by` int(11) NOT NULL,
  `create_time` int(20) NOT NULL DEFAULT '0',
  `publish_time` int(20) NOT NULL DEFAULT '0',
  `last_update_time` int(20) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `activation_date` date DEFAULT NULL,
  `expirtion_date` date DEFAULT NULL,
  `featured` int(1) NOT NULL DEFAULT '0',
  `featured_expiration_date` int(15) DEFAULT NULL,
  `report` int(11) NOT NULL DEFAULT '0',
  `total_view` int(10) NOT NULL DEFAULT '0',
  `search_meta` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_id` (`unique_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

INSERT INTO dc_posts (`id`, `unique_id`, `title`, `description`, `tags`, `purpose`, `category`, `parent_category`, `contact_for_price`, `price`, `address`, `phone_no`, `country`, `state`, `city`, `zip_code`, `latitude`, `longitude`, `featured_img`, `video_url`, `gallery`, `created_by`, `create_time`, `publish_time`, `last_update_time`, `status`, `activation_date`, `expirtion_date`, `featured`, `featured_expiration_date`, `report`, `total_view`, `search_meta`) VALUES (1, '54e5b1e9e2f70', '{\"en\":\"Wedding Photographer\",\"ru\":\"\",\"ar\":\"\"}', '{\"en\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>\",\"ru\":\"\",\"ar\":\"\"}', 'wedding, photograph, bride, bridal, service', 'sell', 25, 5, 0, '1200.00', '2261 Market St', '888-000-1929', 1, 9, 71, '94114', '37.7646767', '-122.43183690000001', 'bride.jpg', NULL, NULL, 1, 1424339433, 1424339434, 1424339434, 1, '2015-02-19', '2015-02-24', 0, NULL, 0, 0, 'brides matrimonials USA  California San Francisco 94114  2261 Market St Wedding Photographer   wedding, photograph, bride, bridal, service ');
INSERT INTO dc_posts (`id`, `unique_id`, `title`, `description`, `tags`, `purpose`, `category`, `parent_category`, `contact_for_price`, `price`, `address`, `phone_no`, `country`, `state`, `city`, `zip_code`, `latitude`, `longitude`, `featured_img`, `video_url`, `gallery`, `created_by`, `create_time`, `publish_time`, `last_update_time`, `status`, `activation_date`, `expirtion_date`, `featured`, `featured_expiration_date`, `report`, `total_view`, `search_meta`) VALUES (2, '54e5b2c87f688', '{\"en\":\"Pet Iguana\",\"ru\":\"\",\"ar\":\"\"}', '{\"en\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>\",\"ru\":\"\",\"ar\":\"\"}', 'pet, reptile, rare, live', 'sell', 30, 6, 0, '300.00', '1 Stockton St', '333-100-9900', 1, 9, 71, '94108', '37.7858997', '-122.4065091', 'iguana.jpg', NULL, NULL, 1, 1424339656, 1424339656, 1424339656, 1, '2015-02-19', '2015-02-24', 0, NULL, 0, 1, 'fish_and_reptiles pets USA  California San Francisco 94108  1 Stockton St Pet Iguana   pet, reptile, rare, live ');
INSERT INTO dc_posts (`id`, `unique_id`, `title`, `description`, `tags`, `purpose`, `category`, `parent_category`, `contact_for_price`, `price`, `address`, `phone_no`, `country`, `state`, `city`, `zip_code`, `latitude`, `longitude`, `featured_img`, `video_url`, `gallery`, `created_by`, `create_time`, `publish_time`, `last_update_time`, `status`, `activation_date`, `expirtion_date`, `featured`, `featured_expiration_date`, `report`, `total_view`, `search_meta`) VALUES (3, '54e5b36ec2f31', '{\"en\":\"Designer Bag\",\"ru\":\"\",\"ar\":\"\"}', '{\"en\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>\",\"ru\":\"\",\"ar\":\"\"}', 'bag, trendy, fashion, style', 'sell', 17, 3, 0, '300.00', '4833 Santa Monica Ave', '212-992-0091', 1, 9, 69, '92107', '32.7457316', '-117.24764809999999', 'bag.jpg', NULL, NULL, 1, 1424339822, 1424339823, 1424339823, 1, '2015-02-19', '2015-02-24', 0, NULL, 0, 1, 'bags fashion USA  California San Diego 92107 4833 Santa Monica Ave Designer Bag   bag, trendy, fashion, style ');
INSERT INTO dc_posts (`id`, `unique_id`, `title`, `description`, `tags`, `purpose`, `category`, `parent_category`, `contact_for_price`, `price`, `address`, `phone_no`, `country`, `state`, `city`, `zip_code`, `latitude`, `longitude`, `featured_img`, `video_url`, `gallery`, `created_by`, `create_time`, `publish_time`, `last_update_time`, `status`, `activation_date`, `expirtion_date`, `featured`, `featured_expiration_date`, `report`, `total_view`, `search_meta`) VALUES (4, '54e5b40b29954', '{\"en\":\"High Heels\",\"ru\":\"\",\"ar\":\"\"}', '{\"en\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>\",\"ru\":\"\",\"ar\":\"\"}', 'heels, fashion, designer, trendy', 'sell', 20, 3, 0, '650.00', '1032 S Fairfax Ave', '667-990-1231', 1, 9, 68, '90019', '34.0571317', '-118.3639872', 'shoe.jpg', NULL, NULL, 1, 1424339979, 1424339979, 1424339979, 1, '2015-02-19', '2015-02-24', 0, NULL, 0, 0, 'shoes fashion USA  California Los Angeles 90019 1032 S Fairfax Ave High Heels   heels, fashion, designer, trendy ');
INSERT INTO dc_posts (`id`, `unique_id`, `title`, `description`, `tags`, `purpose`, `category`, `parent_category`, `contact_for_price`, `price`, `address`, `phone_no`, `country`, `state`, `city`, `zip_code`, `latitude`, `longitude`, `featured_img`, `video_url`, `gallery`, `created_by`, `create_time`, `publish_time`, `last_update_time`, `status`, `activation_date`, `expirtion_date`, `featured`, `featured_expiration_date`, `report`, `total_view`, `search_meta`) VALUES (5, '54e5b4b823318', '{\"en\":\"Cute Cat\",\"ru\":\"\",\"ar\":\"\"}', '{\"en\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>\",\"ru\":\"\",\"ar\":\"\"}', 'cat, pet, sale, new', 'sell', 28, 6, 0, '900.00', '5040 Spring Mountain Rd', '788-200-1223', 1, 32, 77, '89146', '36.1265042', '-115.2099776', 'cat.jpg', NULL, NULL, 1, 1424340152, 1424340152, 1424340152, 1, '2015-02-19', '2015-02-24', 0, NULL, 0, 0, 'cats pets USA  Nevada Las Vegas 89146 5040 Spring Mountain Rd Cute Cat   cat, pet, sale, new ');
INSERT INTO dc_posts (`id`, `unique_id`, `title`, `description`, `tags`, `purpose`, `category`, `parent_category`, `contact_for_price`, `price`, `address`, `phone_no`, `country`, `state`, `city`, `zip_code`, `latitude`, `longitude`, `featured_img`, `video_url`, `gallery`, `created_by`, `create_time`, `publish_time`, `last_update_time`, `status`, `activation_date`, `expirtion_date`, `featured`, `featured_expiration_date`, `report`, `total_view`, `search_meta`) VALUES (6, '54e5b5922502a', '{\"en\":\"Accounting Course\",\"ru\":\"\",\"ar\":\"\"}', '{\"en\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>\",\"ru\":\"\",\"ar\":\"\"}', 'accounting, course, class', 'sell', 22, 4, 0, '200.00', '317 N Indian Canyon Dr', '271-212-9099', 1, 9, 70, '92262', '33.8273253', '-116.54586140000004', 'development_job.jpg', NULL, NULL, 1, 1424340370, 1424340370, 1424340370, 1, '2015-02-19', '2015-02-24', 0, NULL, 0, 1, 'accounting jobs USA  California Palm Sprigs 92262 317 N Indian Canyon Dr Accounting Course   accounting, course, class ');
INSERT INTO dc_posts (`id`, `unique_id`, `title`, `description`, `tags`, `purpose`, `category`, `parent_category`, `contact_for_price`, `price`, `address`, `phone_no`, `country`, `state`, `city`, `zip_code`, `latitude`, `longitude`, `featured_img`, `video_url`, `gallery`, `created_by`, `create_time`, `publish_time`, `last_update_time`, `status`, `activation_date`, `expirtion_date`, `featured`, `featured_expiration_date`, `report`, `total_view`, `search_meta`) VALUES (7, '54e5b63438c96', '{\"en\":\"Apartment for Sale\",\"ru\":\"\",\"ar\":\"\"}', '{\"en\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>\",\"ru\":\"\",\"ar\":\"\"}', 'apartment, sale, living, blue', 'sell', 32, 7, 0, '20000.00', '7422 Melrose Ave', '990-889-7292', 1, 9, 68, '90046', '34.083373', '-118.35182709999998', 'apartment.jpg', NULL, NULL, 1, 1424340532, 1424340532, 1424340532, 1, '2015-02-19', '2015-02-24', 0, NULL, 0, 1, 'apartment Real Estate USA  California Los Angeles 90046 7422 Melrose Ave Apartment for Sale   apartment, sale, living, blue ');
INSERT INTO dc_posts (`id`, `unique_id`, `title`, `description`, `tags`, `purpose`, `category`, `parent_category`, `contact_for_price`, `price`, `address`, `phone_no`, `country`, `state`, `city`, `zip_code`, `latitude`, `longitude`, `featured_img`, `video_url`, `gallery`, `created_by`, `create_time`, `publish_time`, `last_update_time`, `status`, `activation_date`, `expirtion_date`, `featured`, `featured_expiration_date`, `report`, `total_view`, `search_meta`) VALUES (8, '54e5b7592a073', '{\"en\":\"Church Service\",\"ru\":\"\",\"ar\":\"\"}', '{\"en\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>\",\"ru\":\"\",\"ar\":\"\"}', 'church, sermon, service, nice', 'sell', 15, 2, 0, '300.00', '705 N First St', '222-333-1331', 1, 7, 78, '85004', '33.4558709', '-112.07228320000002', 'church.jpg', NULL, NULL, 1, 1424340825, 1424340825, 1424340825, 1, '2015-02-19', '2015-02-24', 0, NULL, 0, 2, 'churches community USA  Arizona Phoenix 85004 705 N First St Church Service   church, sermon, service, nice ');
INSERT INTO dc_posts (`id`, `unique_id`, `title`, `description`, `tags`, `purpose`, `category`, `parent_category`, `contact_for_price`, `price`, `address`, `phone_no`, `country`, `state`, `city`, `zip_code`, `latitude`, `longitude`, `featured_img`, `video_url`, `gallery`, `created_by`, `create_time`, `publish_time`, `last_update_time`, `status`, `activation_date`, `expirtion_date`, `featured`, `featured_expiration_date`, `report`, `total_view`, `search_meta`) VALUES (9, '54e5b7f85f687', '{\"en\":\"Beauty Products\",\"ru\":\"\",\"ar\":\"\"}', '{\"en\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>\",\"ru\":\"\",\"ar\":\"\"}', 'beauty, new, omg', 'sell', 18, 3, 0, '2000.00', '1131 Mountain Rd NW', '212-992-0091', 1, 35, 79, '', '35.0957409', '-106.65859699999999', 'beauty_products.jpg', NULL, NULL, 1, 1424340984, 1424340984, 1424340984, 1, '2015-02-19', '2015-02-24', 0, NULL, 0, 0, 'beauty_products fashion USA  New Mexico Albuquerque  1131 Mountain Rd NW Beauty Products   beauty, new, omg ');
INSERT INTO dc_posts (`id`, `unique_id`, `title`, `description`, `tags`, `purpose`, `category`, `parent_category`, `contact_for_price`, `price`, `address`, `phone_no`, `country`, `state`, `city`, `zip_code`, `latitude`, `longitude`, `featured_img`, `video_url`, `gallery`, `created_by`, `create_time`, `publish_time`, `last_update_time`, `status`, `activation_date`, `expirtion_date`, `featured`, `featured_expiration_date`, `report`, `total_view`, `search_meta`) VALUES (10, '54e5b8da23ad2', '{\"en\":\"Construction Work\",\"ru\":\"\",\"ar\":\"\"}', '{\"en\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>\",\"ru\":\"\",\"ar\":\"\"}', 'construction, building, tab', 'sell', 24, 4, 0, '7000.00', '49 N Scott Ave', '', 1, 7, 80, '85701', '32.2226452', '-110.9699185', 'construction_work.jpg', NULL, NULL, 1, 1424341210, 1424341210, 1424341210, 1, '2015-02-19', '2015-02-24', 0, NULL, 0, 4, 'construction_work jobs USA  Arizona Tucson 85701 49 N Scott Ave Construction Work   construction, building, tab ');
INSERT INTO dc_posts (`id`, `unique_id`, `title`, `description`, `tags`, `purpose`, `category`, `parent_category`, `contact_for_price`, `price`, `address`, `phone_no`, `country`, `state`, `city`, `zip_code`, `latitude`, `longitude`, `featured_img`, `video_url`, `gallery`, `created_by`, `create_time`, `publish_time`, `last_update_time`, `status`, `activation_date`, `expirtion_date`, `featured`, `featured_expiration_date`, `report`, `total_view`, `search_meta`) VALUES (11, '54e5ba0b76b4d', '{\"en\":\"iPads Ready\",\"ru\":\"\",\"ar\":\"\"}', '{\"en\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>\",\"ru\":\"\",\"ar\":\"\"}', 'ipad, tab, apple, portable', 'sell', 12, 1, 0, '8900.00', '1313 E 6th Ave', '271-212-9099', 1, 10, 81, '80218', '39.7257043', '-104.97129510000002', 'ipad_for_sale.jpg', NULL, NULL, 1, 1424341515, 1424341515, 1424341515, 3, NULL, NULL, 0, NULL, 0, 0, 'mobiles_and_tablets Electronics USA  Colorado Denver 80218 1313 E 6th Ave iPads Ready   ipad, tab, apple, portable ');
INSERT INTO dc_posts (`id`, `unique_id`, `title`, `description`, `tags`, `purpose`, `category`, `parent_category`, `contact_for_price`, `price`, `address`, `phone_no`, `country`, `state`, `city`, `zip_code`, `latitude`, `longitude`, `featured_img`, `video_url`, `gallery`, `created_by`, `create_time`, `publish_time`, `last_update_time`, `status`, `activation_date`, `expirtion_date`, `featured`, `featured_expiration_date`, `report`, `total_view`, `search_meta`) VALUES (12, '54e5bb70889b8', '{\"en\":\"Rolex Watch\",\"ru\":\"\",\"ar\":\"\"}', '{\"en\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>\",\"ru\":\"\",\"ar\":\"\"}', 'rolex, watch, classic', 'sell', 21, 3, 0, '7800.00', '402 N Guadalupe St', '333-100-9900', 1, 35, 82, '87501', '35.6915104', '-105.94618270000001', 'watch.jpg', NULL, NULL, 1, 1424341872, 1424341873, 1424341873, 1, '2015-02-19', '2015-02-24', 0, NULL, 0, 0, 'watches fashion USA  New Mexico Santa Fe 87501 402 N Guadalupe St Rolex Watch   rolex, watch, classic ');
INSERT INTO dc_posts (`id`, `unique_id`, `title`, `description`, `tags`, `purpose`, `category`, `parent_category`, `contact_for_price`, `price`, `address`, `phone_no`, `country`, `state`, `city`, `zip_code`, `latitude`, `longitude`, `featured_img`, `video_url`, `gallery`, `created_by`, `create_time`, `publish_time`, `last_update_time`, `status`, `activation_date`, `expirtion_date`, `featured`, `featured_expiration_date`, `report`, `total_view`, `search_meta`) VALUES (13, '54e5bc6c349b2', '{\"en\":\"Macbook Pro\",\"ru\":\"\",\"ar\":\"\"}', '{\"en\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>\",\"ru\":\"\",\"ar\":\"\"}', 'macbook, laptop, apple, computer', 'sell', 10, 1, 0, '1500.00', '542 SW 12th Ave', '222-333-1331', 1, 13, 76, '33130', '25.7678249', '-80.21485899999999', 'macbook_pro.jpg', NULL, NULL, 1, 1424342124, 1424342125, 1424342125, 1, '2015-02-19', '2015-02-24', 0, NULL, 0, 2, 'Computers & Laptops Electronics USA  Florida Miami 33130 542 SW 12th Ave Macbook Pro   macbook, laptop, apple, computer ');
INSERT INTO dc_posts (`id`, `unique_id`, `title`, `description`, `tags`, `purpose`, `category`, `parent_category`, `contact_for_price`, `price`, `address`, `phone_no`, `country`, `state`, `city`, `zip_code`, `latitude`, `longitude`, `featured_img`, `video_url`, `gallery`, `created_by`, `create_time`, `publish_time`, `last_update_time`, `status`, `activation_date`, `expirtion_date`, `featured`, `featured_expiration_date`, `report`, `total_view`, `search_meta`) VALUES (14, '54e5bd1b94287', '{\"en\":\"Puppy\",\"ru\":\"\",\"ar\":\"\"}', '{\"en\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>\",\"ru\":\"\",\"ar\":\"\"}', 'dog, puppy, pet, sale', 'sell', 29, 6, 0, '200.00', '89 E 42nd St', '333-100-9900', 1, 36, 83, '10017', '40.7524958', '-73.9772992', 'dog.jpg', NULL, NULL, 1, 1424342299, 1424342300, 1424342300, 1, '2015-02-19', '2015-02-24', 0, NULL, 0, 1, 'dogs pets USA  New York New York 10017 89 E 42nd St Puppy   dog, puppy, pet, sale ');
INSERT INTO dc_posts (`id`, `unique_id`, `title`, `description`, `tags`, `purpose`, `category`, `parent_category`, `contact_for_price`, `price`, `address`, `phone_no`, `country`, `state`, `city`, `zip_code`, `latitude`, `longitude`, `featured_img`, `video_url`, `gallery`, `created_by`, `create_time`, `publish_time`, `last_update_time`, `status`, `activation_date`, `expirtion_date`, `featured`, `featured_expiration_date`, `report`, `total_view`, `search_meta`) VALUES (15, '54e5bde03f652', '{\"en\":\"Home Theatre\",\"ru\":\"\",\"ar\":\"\"}', '{\"en\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>\",\"ru\":\"\",\"ar\":\"\"}', 'tv, dvd, player, surround', 'sell', 13, 1, 0, '3000.00', '1137 Spruce St', '333-100-9900', 1, 42, 84, '19107', '39.9466238', '-75.16091389999997', 'led_tv.jpg', NULL, NULL, 1, 1424342496, 1424342496, 1424342496, 1, '2015-02-19', '2015-02-24', 0, NULL, 0, 0, 'tv_and_media Electronics USA  Pennsylvania Philadelphia 19107 1137 Spruce St Home Theatre   tv, dvd, player, surround ');
INSERT INTO dc_posts (`id`, `unique_id`, `title`, `description`, `tags`, `purpose`, `category`, `parent_category`, `contact_for_price`, `price`, `address`, `phone_no`, `country`, `state`, `city`, `zip_code`, `latitude`, `longitude`, `featured_img`, `video_url`, `gallery`, `created_by`, `create_time`, `publish_time`, `last_update_time`, `status`, `activation_date`, `expirtion_date`, `featured`, `featured_expiration_date`, `report`, `total_view`, `search_meta`) VALUES (16, '54e5bef579431', '{\"en\":\"Black Ferrari\",\"ru\":\"\",\"ar\":\"\"}', '{\"en\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst.<\\/p>\",\"ru\":\"\",\"ar\":\"\"}', 'ferrari, luxury, car, sale', 'sell', 37, 8, 0, '80000.00', '1243 King St', '333-100-9900', 1, 13, 85, '32204', '30.3117375', '-81.69433379999998', 'ferrari.jpg', NULL, NULL, 1, 1424342773, 1424342774, 1424342774, 1, '2015-02-19', '2015-02-24', 0, NULL, 0, 0, 'sports_cars vehicles USA  Florida Jacksonville 32204 1243 King St Black Ferrari   ferrari, luxury, car, sale ');


#
# TABLE STRUCTURE FOR: dc_sessions
#

DROP TABLE IF EXISTS dc_sessions;

CREATE TABLE `dc_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(50) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: dc_slider
#

DROP TABLE IF EXISTS dc_slider;

CREATE TABLE `dc_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slide_order` int(11) NOT NULL DEFAULT '0',
  `featured_img` char(200) NOT NULL,
  `title` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO dc_slider (`id`, `slide_order`, `featured_img`, `title`, `description`, `created_by`, `create_time`, `status`) VALUES (1, 2, 'img1.png', ' Easy management', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.', 4, 1424069935, 1);
INSERT INTO dc_slider (`id`, `slide_order`, `featured_img`, `title`, `description`, `created_by`, `create_time`, `status`) VALUES (2, 3, 'img3.png', 'It\'s Revolution', 'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 4, 1424070006, 1);
INSERT INTO dc_slider (`id`, `slide_order`, `featured_img`, `title`, `description`, `created_by`, `create_time`, `status`) VALUES (3, 1, 'img2.png', 'Warm welcome', 'When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane.', 4, 1424070271, 1);


#
# TABLE STRUCTURE FOR: dc_user_meta
#

DROP TABLE IF EXISTS dc_user_meta;

CREATE TABLE `dc_user_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` char(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO dc_user_meta (`id`, `user_id`, `key`, `value`, `status`) VALUES (1, 1, 'query_email#1424350613', '{\"sender_email\":\"jhon@nuggplug.com\",\"sender_name\":\"Jhon Doe\",\"subject\":\"Need to know the price\",\"msg\":\"Hi,\\r\\nI want to know the price. Please notify me when you are online.\\r\\nThanks<br \\/><br \\/> This email was sent from the following page:<br \\/><a href=\\\"http:\\/\\/localhost\\/classifieds\\/index.php\\/en\\/ads\\/54e5bc6c349b2\\/Computers-and-Laptops\\/Macbook-Pro\\\" target=\\\"_blank\\\">http:\\/\\/localhost\\/classifieds\\/index.php\\/en\\/ads\\/54e5bc6c349b2\\/Macbook Pro<\\/a>\"}', 1);
INSERT INTO dc_user_meta (`id`, `user_id`, `key`, `value`, `status`) VALUES (2, 1, 'query_email#1424351451', '{\"sender_email\":\"doe@nuggplug.com\",\"sender_name\":\"Doe\",\"subject\":\"Want to buy\",\"msg\":\"Hi,\\r\\nI want to buy your laptop. Can you send me the price.\\r\\nThanks<br \\/><br \\/> This email was sent from the following page:<br \\/><a href=\\\"http:\\/\\/localhost\\/classifieds\\/index.php\\/en\\/ads\\/54e5bc6c349b2\\/Computers-and-Laptops\\/Macbook-Pro\\\" target=\\\"_blank\\\">http:\\/\\/localhost\\/classifieds\\/index.php\\/en\\/ads\\/54e5bc6c349b2\\/Macbook Pro<\\/a>\"}', 1);


#
# TABLE STRUCTURE FOR: dc_users
#

DROP TABLE IF EXISTS dc_users;

CREATE TABLE `dc_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_type` int(3) NOT NULL,
  `first_name` char(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` char(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gender` char(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `profile_photo` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_name` char(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_email` char(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `remember_me_key` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recovery_key` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `confirmation_key` char(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `confirmed` int(1) NOT NULL DEFAULT '1',
  `confirmed_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(1) NOT NULL DEFAULT '0',
  `banned` int(11) NOT NULL DEFAULT '0',
  `banned_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `banned_till` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO dc_users (`id`, `user_type`, `first_name`, `last_name`, `gender`, `profile_photo`, `user_name`, `user_email`, `password`, `remember_me_key`, `recovery_key`, `confirmation_key`, `confirmed`, `confirmed_date`, `status`, `banned`, `banned_date`, `banned_till`) VALUES (1, 1, 'Admin', 'Doe', 'male', 'propic.jpg', 'admin', 'shimulcsedu@gmail.com', '022f121a7b44a8eec06f4005f43414e2b21bfa9a', '', '', '', 1, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: dc_usertype
#

DROP TABLE IF EXISTS dc_usertype;

CREATE TABLE `dc_usertype` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` char(20) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO dc_usertype (`id`, `name`, `status`) VALUES (1, 'admin', 1);
INSERT INTO dc_usertype (`id`, `name`, `status`) VALUES (2, 'business', 1);
INSERT INTO dc_usertype (`id`, `name`, `status`) VALUES (3, 'individual', 1);


#
# TABLE STRUCTURE FOR: dc_widgets
#

DROP TABLE IF EXISTS dc_widgets;

CREATE TABLE `dc_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `alias` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `params` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` int(1) NOT NULL,
  `editable` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

INSERT INTO dc_widgets (`id`, `name`, `alias`, `params`, `status`, `editable`) VALUES (1, 'Facebook like box', 'fb_likebox', '', 1, 1);
INSERT INTO dc_widgets (`id`, `name`, `alias`, `params`, `status`, `editable`) VALUES (2, 'Contact text', 'contact_text', '', 1, 1);
INSERT INTO dc_widgets (`id`, `name`, `alias`, `params`, `status`, `editable`) VALUES (3, 'Follow us', 'follow_us', '', 1, 1);
INSERT INTO dc_widgets (`id`, `name`, `alias`, `params`, `status`, `editable`) VALUES (4, 'Short Description', 'short_description', '', 1, 1);
INSERT INTO dc_widgets (`id`, `name`, `alias`, `params`, `status`, `editable`) VALUES (5, 'Adsense full width', 'adsense_full_width', '', 1, 1);
INSERT INTO dc_widgets (`id`, `name`, `alias`, `params`, `status`, `editable`) VALUES (6, 'Adsense Sidebar', 'adsense_sidebar', '', 1, 1);
INSERT INTO dc_widgets (`id`, `name`, `alias`, `params`, `status`, `editable`) VALUES (7, 'Plain Search Widget', 'plain_search_widget', '', 1, 1);
INSERT INTO dc_widgets (`id`, `name`, `alias`, `params`, `status`, `editable`) VALUES (8, 'Adv Search Widget', 'advance_search_widget', '', 1, 1);
INSERT INTO dc_widgets (`id`, `name`, `alias`, `params`, `status`, `editable`) VALUES (9, 'Recent Posts Main', 'recent_posts_main', '', 1, 1);
INSERT INTO dc_widgets (`id`, `name`, `alias`, `params`, `status`, `editable`) VALUES (10, 'Category Main', 'category_main', '', 1, 1);
INSERT INTO dc_widgets (`id`, `name`, `alias`, `params`, `status`, `editable`) VALUES (11, 'Top Bar', 'top_bar', NULL, 1, 1);
INSERT INTO dc_widgets (`id`, `name`, `alias`, `params`, `status`, `editable`) VALUES (12, 'Top Bar Social', 'top_bar_social', NULL, 1, 1);
INSERT INTO dc_widgets (`id`, `name`, `alias`, `params`, `status`, `editable`) VALUES (13, 'Footer Links', 'footer_links', NULL, 1, 1);
INSERT INTO dc_widgets (`id`, `name`, `alias`, `params`, `status`, `editable`) VALUES (14, 'Top Posts', 'top_posts', NULL, 1, 1);
INSERT INTO dc_widgets (`id`, `name`, `alias`, `params`, `status`, `editable`) VALUES (15, 'Category Counter', 'category_counter', NULL, 1, 1);
INSERT INTO dc_widgets (`id`, `name`, `alias`, `params`, `status`, `editable`) VALUES (16, 'Tag Cloud', 'tag_cloud', NULL, 1, 1);
INSERT INTO dc_widgets (`id`, `name`, `alias`, `params`, `status`, `editable`) VALUES (17, 'Recent Post', 'recent_post', NULL, 1, 1);
INSERT INTO dc_widgets (`id`, `name`, `alias`, `params`, `status`, `editable`) VALUES (18, 'Category Featured Post', 'category_featured_post', NULL, 1, 1);
INSERT INTO dc_widgets (`id`, `name`, `alias`, `params`, `status`, `editable`) VALUES (19, 'Category Sidebar', 'category_sidebar', NULL, 1, 1);
INSERT INTO dc_widgets (`id`, `name`, `alias`, `params`, `status`, `editable`) VALUES (20, 'Social Media Cloud', 'social_media_cloud', NULL, 1, 1);
INSERT INTO dc_widgets (`id`, `name`, `alias`, `params`, `status`, `editable`) VALUES (21, 'Featured Posts Main', 'featured_posts_main', NULL, 1, 1);
INSERT INTO dc_widgets (`id`, `name`, `alias`, `params`, `status`, `editable`) VALUES (22, 'Top Locations Home', 'top_locations_home', NULL, 1, 1);
INSERT INTO dc_widgets (`id`, `name`, `alias`, `params`, `status`, `editable`) VALUES (23, 'Featured Post', 'featured_post', NULL, 1, 1);
INSERT INTO dc_widgets (`id`, `name`, `alias`, `params`, `status`, `editable`) VALUES (24, 'Top Locations Sidebar', 'top_locations_sidebar', NULL, 1, 1);
INSERT INTO dc_widgets (`id`, `name`, `alias`, `params`, `status`, `editable`) VALUES (25, 'Top Users', 'top_users', NULL, 1, 1);



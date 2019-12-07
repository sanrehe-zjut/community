CREATE TABLE `community`.`comment`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(0) NOT NULL COMMENT '父类ID',
  `type` int(255) NOT NULL COMMENT '父类类型',
  `commentator` int(255) NOT NULL COMMENT '评论人ID',
  `gmt_create` bigint(255) NOT NULL COMMENT '创建时间',
  `gmt_modified` bigint(255) NOT NULL COMMENT '更新时间',
  `like_count` bigint(255) NULL DEFAULT 0,
  PRIMARY KEY (`id`)
);
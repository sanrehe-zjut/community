ALTER TABLE `community`.`question`
MODIFY COLUMN `creator` bigint(255) NULL DEFAULT NULL AFTER `gmt_modified`;
ALTER TABLE `community`.`comment`
MODIFY COLUMN `commentator` bigint(255) NOT NULL COMMENT '评论人ID' AFTER `type`;
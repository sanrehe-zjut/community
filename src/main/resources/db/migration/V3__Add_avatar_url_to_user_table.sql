ALTER TABLE `community`.`user` 
ADD COLUMN `avatar_url` varchar(100) NULL COMMENT '头像地址' AFTER `bio`;
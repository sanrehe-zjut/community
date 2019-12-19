ALTER TABLE `community`.`notification`
ADD COLUMN `notifier_name` varchar(100) NULL COMMENT '提问者的名称' AFTER `notifier`,
ADD COLUMN `outer_title` varchar(255) NULL AFTER `status`;
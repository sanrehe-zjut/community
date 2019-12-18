CREATE TABLE `community`.`notification`  (
    `id` bigint(0) NOT NULL AUTO_INCREMENT,
    `notifier` bigint(0) NOT NULL,
    `receiver` bigint(0) NOT NULL,
    `outerid` bigint(0) NOT NULL COMMENT '问题或者回复的id',
    `type` int(0) NOT NULL,
    `gmt_create` bigint(0) NOT NULL,
    `status` int(0) NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`)
);
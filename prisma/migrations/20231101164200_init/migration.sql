-- CreateTable
CREATE TABLE `user_roles` (
    `role_id` INTEGER NOT NULL AUTO_INCREMENT,
    `role` VARCHAR(100) NOT NULL,
    `username` VARCHAR(100) NOT NULL,

    PRIMARY KEY (`role_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `users` (
    `username` VARCHAR(100) NOT NULL,
    `password` VARCHAR(100) NOT NULL,
    `name` VARCHAR(100) NOT NULL,
    `token` VARCHAR(100) NULL,
    `role_id` INTEGER NOT NULL,

    PRIMARY KEY (`username`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `users` ADD CONSTRAINT `users_role_id_fkey` FOREIGN KEY (`role_id`) REFERENCES `user_roles`(`role_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

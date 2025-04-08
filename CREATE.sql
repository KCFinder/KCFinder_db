CREATE DATABASE IF NOT EXISTS KCFinder;
USE KCFinder;

CREATE TABLE `users` (
	`id` BIGINT PRIMARY KEY AUTO_INCREMENT,
    `user_id` VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `create_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `update_at` TIMESTAMP,
    `mobile_number` VARCHAR(255) NOT NULL UNIQUE,
    `sns_id` VARCHAR(255) DEFAULT NULL, # sns 로그인 아이디
    `join_path` VARCHAR(5) NOT NULL # 회원가입 경로
);

-- CREATE TABLE `user_uploads` (
-- 	`id` BIGINT PRIMARY KEY AUTO_INCREMENT,
-- 	`user_id` BIGINT NOT NULL,
-- 	`image_path` VARCHAR(255)	NOT NULL,
-- 	`image_name` VARCHAR(255)	NOT NULL,
-- 	`image_size` INT NOT NULL,
-- 	`image_type` VARCHAR(20) NOT NULL,
-- 	`upload_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
-- 	`features` LONGBLOB NOT NULL, -- Nest50 벡터 저장용
--     FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
-- );

-- CREATE TABLE `database_images` (
-- 	`id` BIGINT PRIMARY KEY AUTO_INCREMENT,
-- 	`url` VARCHAR(255) NOT NULL,
-- 	`certification_number` VARCHAR(255)	NOT NULL,
-- 	`image_path` VARCHAR(255) NOT NULL,
-- 	`image_name`	VARCHAR(255)	NOT NULL,
-- 	`image_size` INT NOT NULL COMMENT '저장된 이미지는 모두 배경 제거 후 PNG로 저장 될 거라 타입 컬럼x',
-- 	`timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
-- 	`features` LONGBLOB	NOT NULL -- Nest50 벡터 저장용
-- );

-- CREATE TABLE `similarity_results` (
-- 	`id` BIGINT PRIMARY KEY AUTO_INCREMENT,
-- 	`upload_id` BIGINT NOT NULL,
-- 	`image_id` BIGINT	NOT NULL,
-- 	`similarity_score` FLOAT NOT NULL,
-- 	`rank` INT NOT NULL,
-- 	`create_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
--     FOREIGN KEY (upload_id) REFERENCES user_uploads(id) ON DELETE CASCADE,
--     FOREIGN KEY (image_id) REFERENCES users(id) ON DELETE CASCADE
-- );

-- CREATE TABLE `temp_results` (
-- 	`id` BIGINT PRIMARY KEY AUTO_INCREMENT,
-- 	`upload_id` BIGINT NOT NULL,
-- 	`image_id` BIGINT NOT NULL,
-- 	`similarity_score` FLOAT NOT NULL,
-- 	`rank` INT NOT NULL,
-- 	`create_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
-- 	`expiry_time` TIMESTAMP	NOT NULL, -- 임시 테이블 삭제 일자
--     FOREIGN KEY (upload_id) REFERENCES user_uploads(id) ON DELETE CASCADE,
--     FOREIGN KEY (image_id) REFERENCES database_images(id) ON DELETE CASCADE
-- );

CREATE TABLE `notices` (
	`id` BIGINT PRIMARY KEY AUTO_INCREMENT,
	`title` VARCHAR(255) NOT NULL,
	`contenct` TEXT,
	`view_count` INT NOT NULL DEFAULT 0,
	`create_at`	TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`update_at`	TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



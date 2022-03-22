-- 创建数据库
CREATE DATABASE gogs;

-- 创建用户
CREATE USER 'gogs'@'%' IDENTIFIED WITH mysql_native_password BY 'cde3VFR$' PASSWORD EXPIRE NEVER;

-- 授权
GRANT ALL PRIVILEGES ON gogs.* TO gogs@'%';

-- 重载配置
FLUSH PRIVILEGES;

-- 已创建用户更改认证加密方式
ALTER USER 'gogs'@'%' IDENTIFIED BY 'cde3VFR$' PASSWORD EXPIRE NEVER;
ALTER USER 'gogs'@'%' IDENTIFIED WITH mysql_native_password BY 'cde3VFR$';
FLUSH PRIVILEGES;
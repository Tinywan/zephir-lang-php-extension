## clone
```
git clone https://github.com/Tinywan/zephir-lang-php-extension.git
```

## build

```php
zephir-lang-php-extension/zephirencrypt# zephir build
 Cleaning old kernel files...
 Copying new kernel files...
 Preparing for PHP compilation...
 Preparing configuration file...
 Compiling...
 Zephir version has changed, use "zephir fullclean" to perform a full clean of the project
 Installing...

 Extension installed.
 Add "extension=zephirencrypt.so" to your php.ini

 ! [NOTE] Don't forget to restart your web server
```

## extension

`php.ini` add `extension=zephirencrypt.so`

## use

```php
<?php
/**
 * @desc zephir.php 
 * @author Tinywan(ShaoBo Wan)
 * @date 2024/8/5 22:51
 */
declare(strict_types=1);

$serviceUuid = "13c7c8e1-3ac2-41a6-95dc-ff954b431bbf";
$authLicense = "1728869954-0-0-eabfb0fb52c429d4fa037585f7afd512";

$liveModule = new \ZephirEncrypt\Module\LiveModule($serviceUuid, $authLicense);
print_r($liveModule);

$res = $liveModule->start();
var_dump($res);
```
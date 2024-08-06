<?php
/**
 * @desc EncryptionUtil
 * @author Tinywan(ShaoBo Wan)
 * @date 2024/8/6 22:22
 */
declare(strict_types=1);

$key = '2024PpTJIR1aYFiFh0PppZzE';

// 加密内容
$content = [
    'name' => 'Tinywan',
    'school' => 'ZheJiang University',
    'age' => 24,
    'github' => [
        'home' => 'https://github.com/Tinywan',
        'start' => '6.8k',
    ],
];

/***
 * 加密
 */
// 必须转换为字符串
$dataJson = json_encode($content, JSON_UNESCAPED_UNICODE);
$decrypt = \Utils\Encrypt\EncryptionUtil::encrypt($dataJson, $key, \Utils\Encrypt\EncryptionUtil::AES_128_ECB);
var_dump($decrypt);

// 输出 WtFU2wa9nEAJWmAqAnj6LVqEoKa1/7MVZ76cY3kOLAVDb/8qoBn4MrkHgwvGA0ApGLWfIc8muKDQWISfucZAEiGpW/MuJ0fBa/g/EpNNSn8M3AmDtKa7fswCHG1IuwE70Sw/O4YlHTMTJl2d3h/wmQL8ILe1dPUsamkmAs7SDfY=

/***
 * 解密
 */
$encrypt = \Utils\Encrypt\EncryptionUtil::decrypt($decrypt, $key, \Utils\Encrypt\EncryptionUtil::AES_128_ECB);
var_dump($encrypt);
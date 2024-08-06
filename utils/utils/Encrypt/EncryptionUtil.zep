/**
 * @desc 授权许可证
 * @author Tinywan(ShaoBo Wan)
 * @date 2024/6/16 20:14
 */
namespace Utils\Encrypt;

class EncryptionUtil
{
    /** AES-128-ECB 加密方式*/
    const AES_128_ECB = 'AES-128-ECB';

    /**
     * @desc 加密
     * @param string $data 加密的数据
     * @param string $key 密钥，必须是16、24或32个字符长度
     * @param string $algo 加密方式
     * @param string $iv 初始向量（IV）
     * @return string
     * @author Tinywan(ShaoBo Wan)
     */
    public static function encrypt(string data, string key, string algo) -> string
    {
        var encryptedBytes = openssl_encrypt(data, algo, key, OPENSSL_RAW_DATA);
        return base64_encode(encryptedBytes);
    }

    /**
     * @desc 解密
     * @param string $data
     * @param string $key 密钥，必须是16、24或32个字符长度
     * @param string $algo 加密方式
     * @param string $iv 初始向量（IV）
     * @return false|string
     * @author Tinywan(ShaoBo Wan)
     */
    public static function decrypt(string data, string key, string algo) -> string
    {
        return openssl_decrypt(base64_decode(data), algo, key, OPENSSL_RAW_DATA);
    }
}
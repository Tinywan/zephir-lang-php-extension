/**
 * @desc 授权许可证
 * @author Tinywan(ShaoBo Wan)
 * @date 2024/6/16 20:14
 */
namespace Encrypt\Auth;

class License
{
    /**
     * @desc 构架函数
     * @author Tinywan(ShaoBo Wan)
     */
    public function __construct()
    {
        echo "License __construct ";
    }

    /**
     * @desc 授权认证
     * @author Tinywan(ShaoBo Wan)
     */
    public static function check(string service_uuid, string auth_license, int uid = 0, int rand = 0)
    {
        var private_key = "tinywan2024";
        var expire_time = substr(auth_license, 0, 10);
        var current_time = time();
        var sequest_hash_value = substr(auth_license, -32);
        var res_hash_value = md5(service_uuid . "-" . expire_time . "-" . rand . "-" . uid . "-" . private_key);

        if expire_time < current_time {
            return -1;
        }

        if sequest_hash_value != res_hash_value {
            return 0;
        }
        return 1;
    }
}
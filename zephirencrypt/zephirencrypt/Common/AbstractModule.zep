/**
 * @desc 抽象业务模块
 * @author Tinywan(ShaoBo Wan)
 * @date 2024/6/16 20:14
 */
namespace ZephirEncrypt\Common;
use ZephirEncrypt\Auth\License;

abstract class AbstractModule
{
    protected service_uuid;

    protected auth_license;

    /** 1 true , 0 false */
    public auth_status = 0;

    /**
    * @desc 构架函数
    * @author Tinywan(ShaoBo Wan)
    */
    public function __construct(string service_uuid, string auth_license)
    {
        let this->service_uuid = service_uuid;
        let this->auth_license = auth_license;
        var checkRes = License::check(this->service_uuid, this->auth_license);
        if checkRes == -1 {
            let this->auth_status = -1;
        }

        if checkRes == 0 {
            let this->auth_status = 0;
        }

        if checkRes == 1 {
            let this->auth_status = 1;
        }
    }

    /** 获取权限状态 */
    abstract public function getAuthStatus();
}

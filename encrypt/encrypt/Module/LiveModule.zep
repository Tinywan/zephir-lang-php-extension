/**
 * @desc 抽象业务模块
 * @author Tinywan(ShaoBo Wan)
 * @date 2024/6/16 20:14
 */
namespace Encrypt\Module;
use Encrypt\Common\AbstractModule;

class LiveModule extends AbstractModule
{
    /**
     * @desc 构架函数
     * @author Tinywan(ShaoBo Wan)
     */
    final public function __construct(string service_uuid, string auth_license)
    {
        parent::__construct(service_uuid, auth_license);
    }

    /**
    * @desc 获取权限状态
    * @author Tinywan(ShaoBo Wan)
    */
    public function getAuthStatus()
    {
        return $this->auth_status;
    }

    /**
     * @desc 业务测试
     * @author Tinywan(ShaoBo Wan)
     */
    public function start()
    {
        var res = [];
        if this->auth_status != 1 {
            let res = ["code":this->auth_status, "msg":"no permission to access"];
            return json_encode(res);
        }
        echo "直播开始成功..............";
        echo "这里开始写你的业务代码.....";
        echo "这里开始写你的业务代码.....";
        echo "这里开始写你的业务代码.....";
    }
}

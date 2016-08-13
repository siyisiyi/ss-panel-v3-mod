<?php

//  ss-panel v3 配置
//
// !!! 修改此key为随机字符串确保网站安全 !!!
$System_Config['key'] = 'lfaZm.aeI*20[d}seDeoPE';
$System_Config['debug'] =  'true';  //  正式环境请确保为false
$System_Config['appName'] = '主题测试';             //站点名称
$System_Config['baseUrl'] = 'localhost:8888';            // 站点地址
$System_Config['timeZone'] = 'PRC';        // RPC 天朝时间  UTC 格林时间
$System_Config['pwdMethod'] = 'sha256';       // 密码加密   可选 md5,sha256
$System_Config['salt'] = 'Viva-Da-Vila';               // 密码加密用，从旧版升级请留空
$System_Config['theme']    = 'dotunnel';   // 主题
$System_Config['authDriver'] = 'cookie';   // 登录验证存储方式,推荐使用Redis   可选: cookie,redis
$System_Config['sessionDriver'] = 'cookie';
$System_Config['cacheDriver'] = 'cookie';
$System_Config['tokenDriver'] = 'db';

//$System_Config['version'] = '<a href="https://www.zhaoj.in">Glzjin</a> mod-2016042210000';

// mu key 用于校验ss-go mu的请求,半角逗号分隔
$System_Config['muKey'] = '';
// 邮件
$System_Config['mailDriver'] = 'mailgun';   // mailgun or smtp

// 用户签到设置
$System_Config['checkinTime'] = '24';      // 签到间隔时间 单位小时
$System_Config['checkinMin'] = '1989';       // 签到最少流量 单位MB
$System_Config['checkinMax'] = '8964';       // 签到最多流量

//
$System_Config['defaultTraffic'] = '100';      // 用户初始流量 单位GB

// 注册后获得的邀请码数量
$System_Config['inviteNum'] = '0';

# database 数据库配置
$System_Config['db_driver'] = 'mysql';
$System_Config['db_host'] = 'localhost';
$System_Config['db_database'] = 'ss_panel';
$System_Config['db_username'] = 'root';
$System_Config['db_password'] = 'Jintian123';
$System_Config['db_charset'] = 'utf8';
$System_Config['db_collation'] = 'utf8_general_ci';
$System_Config['db_prefix'] = '';

# redis
$System_Config['redis_scheme'] = 'tcp';
$System_Config['redis_host'] = '127.0.0.1';
$System_Config['redis_port'] = '6379';
$System_Config['redis_database'] = '0';
$System_Config['redis_password']="";

# mailgun
$System_Config['mailgun_key'] = '';
$System_Config['mailgun_domain'] = '';
$System_Config['mailgun_sender'] = '';

# smtp
$System_Config['smtp_host'] = '';
$System_Config['smtp_username'] = '';
$System_Config['smtp_port'] = '25';
$System_Config['smtp_name'] = '';
$System_Config['smtp_sender'] = '';
$System_Config['smtp_passsword'] = '';
$System_Config['smtp_ssl'] = 'false';

# aws
$System_Config['aws_access_key_id'] = '';
$System_Config['aws_secret_access_key'] = '';


#glzjin's time

#功能开关
$System_Config['enable_wecenter']='false';
$System_Config['enable_radius']='false';
$System_Config['enable_cloudxns']='false';
$System_Config['enable_duoshuo']='false';
$System_Config['enable_rss']='true';
$System_Config['enable_paymentwall']='false';




#用户过期时间，在注册时设置。（天）
$System_Config['user_expire_in_default']='99999';

#Radius数据库设置
$System_Config['radius_db_host']='';
$System_Config['radius_db_database']='';
$System_Config['radius_db_user']='';
$System_Config['radius_db_password']='';

#Radius连接密钥
$System_Config['radius_secret']='';




#多说设置
$System_Config['duoshuo_shortname']="";
$System_Config['duoshuo_apptoken']="";


#节点离线设置
$System_Config['node_offline_warn']='true';

#异地登陆提示
$System_Config['login_warn']='true';

#端口池
$System_Config['min_port']='10000';
$System_Config['max_port']='65535';

#两种方式相对于ss端口的偏移
$System_Config['pacp_offset']='-20000';
$System_Config['pacpp_offset']='-20000';

#测速周期/h
$System_Config['Speedtest_duration']='6';


#随机分组，注册时随机分配到的分组，多个分组请用英文半角逗号分隔。
$System_Config['ramdom_group']='0';

#Wecenter 数据库信息
$System_Config['wecenter_db_host']='localhost';
$System_Config['wecenter_db_database']='';
$System_Config['wecenter_db_user']='';
$System_Config['wecenter_db_password']='';

#系统根域名 zhaoj.in 这样
$System_Config['wecenter_system_main_domain']='';

#访问路径，不开启这个功能的话就清空这个设置项吧
$System_Config['wecenter_url']='http://help.';

#可从安装好的 wecenter 目录下的 system/config.inc.php 得到

#G_COOKIE_PREFIX
$System_Config['wecenter_cookie_prefix']='mmg_';

#G_COOKIE_HASH_KEY
$System_Config['wecenter_cookie_key']='';

#充值返利百分比
$System_Config['code_payback']='10';

#注册时的流量重置日以及需要重置的流量,0不重置
$System_Config['reg_auto_reset_day']='0';
$System_Config['reg_auto_reset_bandwidth']='100';



#PaymentWall
$System_Config['pmw_publickey']='';
$System_Config['pmw_privatekey']='';
$System_Config['pmw_widget']='m2_1';
$System_Config['pmw_height']='350px';


#Cloudxns
$System_Config['cloudxns_apikey']='';#自己去 cloudxns.net 申请
$System_Config['cloudxns_apisecret']='';
$System_Config['cloudxns_domain']='zhaoj.in';#你的域名



#自动备份设置
$System_Config['enable_auto_backup']='false';
$System_Config['auto_backup_email']='your email';
$System_Config['auto_backup_webroot']='your base dir ,such as /home/wwwroot/ss.panel/';
$System_Config['auto_backup_passwd']='zip password';


#跳转延时,ms
$System_Config['jump_delay']='1800';



#是否启用邀请码注册
$System_Config['enable_invite_code']='true';

#是否启用邮箱验证码
$System_Config['enable_email_verify']='true';

#邮箱验证码有效期
$System_Config['email_verify_ttl']='3600';

#单IP可请求验证码次数（上面那个周期内）
$System_Config['email_verify_iplimit']='10';


#注册时默认加密方式
$System_Config['reg_method']='rc4-md5';

#注册时默认协议
$System_Config['reg_protocol']='origin';

#注册时默认协议参数
$System_Config['reg_protocol_param']='';

#注册时默认混淆方式
$System_Config['reg_obfs']='plain';

#注册时默认混淆参数
$System_Config['reg_obfs_param']='';

#是否将登陆线程和IP绑定
$System_Config['enable_login_bind_ip']='true';



#等级到期时是否重置流量
$System_Config['enable_class_expire_reset']='true';

#等级到期时重置为的流量值，GB
$System_Config['enable_class_expire_reset_traffic']='0';

#账户到期时是否重置流量
$System_Config['enable_account_expire_reset']='true';

#账户到期时重置为的流量值，GB
$System_Config['enable_account_expire_reset_traffic']='0';

#购买时是否重置流量
$System_Config['enable_bought_reset']='true';

#账户到期之后是否会删除账户
$System_Config['enable_account_expire_delete']='true';

#账户到期几天之后会删除账户
$System_Config['enable_account_expire_delete_days']='0';

#验证码相关设置，自己去 Geetest.com 申请
$System_Config['geetest_id']='fd9093e471c9ee2a5e58e87588f54a56';
$System_Config['geetest_key']='a78d13316ee833976330816f71e3531c';

#启用注册验证码
$System_Config['enable_geetest_reg']='false';

#启用登录验证码
$System_Config['enable_geetest_login']='false';

#启用签到验证码
$System_Config['enable_geetest_checkin']='false';

#自动清理多少天没签到的0级用户
$System_Config['enable_auto_clean_uncheck']='false';
$System_Config['enable_auto_clean_uncheck_days']='7';


#自动清理多少天没使用的0级用户
$System_Config['enable_auto_clean_unused']='false';
$System_Config['enable_auto_clean_unused_days']='30';


#是否夹带统计代码，自己在 resources/views/{主题名} 下创建一个 analytics.tpl ，如果有必要就用 literal 界定符
$System_Config['enable_analytics_code']='false';

$System_Config['enable_alipay']='true';


#支付宝接口，spay.swapteam.cn，使用此接口的一切后果与本人无关
$System_Config['enable_alipay']='true';

#合作伙伴号
$System_Config['alipay_id']='14692878638046';

#安全密钥
$System_Config['alipay_key']='f77e7e6d6586321890df6b1f20ab2758';

#是否启用捐赠相关功能
$System_Config['enable_donate']='true';

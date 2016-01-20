//
//  ViewController.m
//  dictest
//
//  Created by dc008 on 16/1/18.
//  Copyright © 2016年 cxy. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDictionary *codePort = [NSDictionary dictionary];
    codePort = @{@"- 10004001" : @"发布者ID错误",
                               @"- 10004002" : @"请选择所属商圈",
                               @"- 10004003" : @"请填写信息类型",
                               @"- 10004004" : @"请填写消息内容",
                               @"- 10004005" : @"请填写手机号码",
                               @"- 10004006" : @"发布位置错误",
                               
                               
                               @"- 10007001" : @"缺少参数message_id",
                               @"- 10007002" : @"缺少参数images",
                               @"- 10007003" : @"没找到对应的消息",
                               
                               
                               @"- 60002001" : @"信息ID错误",
                               @"- 60002002" : @"用户ID错误",
                               @"- 60002003" : @"该用户已经点过赞了",
                               
                               
                               @"- 60001001" : @"信息ID错误",
                             
                               
                               @"- 40002001" : @"评论的消息ID不能为空",
                               @"- 40002002" : @"评论的内容不能为空",
                               @"- 40002003" : @"评论用户ID不存在",
                               @"- 40002004" : @"请输入评论用户手机号",
                               
                               
                               @"- 40001001" : @"每页数量错误",
                               @"- 40001002" : @"当前页码错误",
                               @"- 40001003" : @"信息状态错误",
                               @"- 40001004" : @"类型类型ID错误",
                               
                               
                               @"- 30001001" : @"当前页码错误",
                               @"- 30001002" : @"每页数量错误",
                               @"- 30001003" : @"信息状态错误",
                               @"- 30001004" : @"广告类型id错误",
                               
                               
                               @"- 30002001" : @"消息参数错误",
                               @"- 30002002" : @"类型参数错误",
                               @"- 30002003" : @"标签参数错误",
                               @"- 30002004" : @"图片参数错误",
                               @"- 30002005" : @"内容参数错误",
                               @"- 30002006" : @"图片链接参数错误",
                               @"- 30002007" : @"开始时间参数错误",
                               @"- 30002008" : @"结束时间参数错误",
                               @"- 30002009" : @"广告状态参数错误",
                               
                               
                               @"- 20002001" : @"账户长度(3-11)错误",
                               @"- 20002002" : @"密码长度(6-11)错误",
                               @"- 20002003" : @"用户名或密码参数错误",
                               @"- 20002004" : @"用户或密码错误",
                               @"- 20002005" : @"用户未审核",
                               
                               
                               
                               @"- 10006001" : @"用户手机号或验证类型错误",
                               @"- 10006002" : @"不要重复发送",
                               
                               
                               @"- 20001001" : @"手机、密码、微信参数错误",
                               @"- 20001002" : @"验证码超时",
                               @"- 20001003" : @"验证码错误",
                               @"- 20001004" : @"账号已存在",
                               @"- 20001005" : @"用户密码长度6-11",
                               
                               
                               @"- 10008001" : @"缺少参数user_account",
                               @"- 10008002" : @"缺少参数user_phone",
                               @"- 10008003" : @"缺少参数user_weixin",
                               @"- 10008004" : @"缺少参数user_qq",
                               @"- 10008005" : @"缺少参数user_id",
                               @"- 10008006" : @"没发现这个用户",
                               
                               
                               @"- 10003001" : @"缺少参数手机号或原密码",
                               @"- 10003002" : @"缺少参数新密码或确认密码",
                               @"- 10003003" : @"两次密码不一致",
                               @"- 10003004" : @"原密码不正确",
                               
                               
                               @"- 10001001" : @"手机号码输入错误",
                               
                               
                               @"- 90001005" : @"数据是空的",
                               
                          };
    NSLog(@"%lu",codePort.count);
    NSLog(@"%@",codePort);
    
    
    NSMutableDictionary *MutableDictionary = [[NSMutableDictionary alloc]init];
    //1.2.4 发布消息 错误代码
    [MutableDictionary setObject:@"发布者ID错误" forKey:@"- 10004001"];
    [MutableDictionary setObject:@"请选择所属商圈" forKey:@"- 10004002"];
    [MutableDictionary setObject:@"请填写信息类型" forKey:@"- 10004003"];
    [MutableDictionary setObject:@"请填写消息内容" forKey:@"- 10004004"];
    [MutableDictionary setObject:@"请填写手机号码" forKey:@"- 10004005"];
    [MutableDictionary setObject:@"发布位置错误" forKey:@"- 10004006"];
    
    //1.3.4 上传消息图片 错误代码
    [MutableDictionary setObject:@"缺少参数message_id" forKey:@"- 10007001"];
    [MutableDictionary setObject:@"缺少参数images" forKey:@"- 10007002"];
    [MutableDictionary setObject:@"没找到对应的消息" forKey:@"- 10007003"];
    
    //2.1.4 消息的点赞 错误代码
    [MutableDictionary setObject:@"信息ID错误" forKey:@"- 60002001"];
    [MutableDictionary setObject:@"用户ID错误" forKey:@"- 60002002"];
    [MutableDictionary setObject:@"该用户已经点过赞了" forKey:@"- 60002003"];
    
    //2.2.4 点赞列表 错误代码
    [MutableDictionary setObject:@"信息ID错误" forKey:@"- 60001001"];
    
    //3.1.4 添加信息评论 错误代码
    [MutableDictionary setObject:@"评论的消息ID不能为空" forKey:@"- 40002001"];
    [MutableDictionary setObject:@"评论的内容不能为空" forKey:@"- 40002002"];
    [MutableDictionary setObject:@"评论用户ID不存在" forKey:@"- 40002003"];
    [MutableDictionary setObject:@"请输入评论用户手机号" forKey:@"- 40002004"];
    
    //3.2.4 信息评论列表 错误代码
    [MutableDictionary setObject:@"每页数量错误" forKey:@"- 40001001"];
    [MutableDictionary setObject:@"当前页码错误" forKey:@"- 40001002"];
    [MutableDictionary setObject:@"信息状态错误" forKey:@"- 40001003"];
    [MutableDictionary setObject:@"类型类型ID错误" forKey:@"- 40001004"];
    
    //5.1.4 获取广告列表 错误代码
    [MutableDictionary setObject:@"当前页码错误" forKey:@"- 30001001"];
    [MutableDictionary setObject:@"每页数量错误" forKey:@"- 30001002"];
    [MutableDictionary setObject:@"信息状态错误" forKey:@"- 30001003"];
    [MutableDictionary setObject:@"广告类型id错误" forKey:@"- 30001004"];
    
    //5.2.4 增加广告信息 错误代码
    [MutableDictionary setObject:@"消息参数错误" forKey:@"- 30002001"];
    [MutableDictionary setObject:@"类型参数错误" forKey:@"- 30002002"];
    [MutableDictionary setObject:@"标签参数错误" forKey:@"- 30002003"];
    [MutableDictionary setObject:@"图片参数错误" forKey:@"- 30002004"];
    [MutableDictionary setObject:@"内容参数错误" forKey:@"- 30002005"];
    [MutableDictionary setObject:@"图片链接参数错误" forKey:@"- 30002006"];
    [MutableDictionary setObject:@"开始时间参数错误" forKey:@"- 30002007"];
    [MutableDictionary setObject:@"结束时间参数错误" forKey:@"- 30002008"];
    [MutableDictionary setObject:@"广告状态参数错误" forKey:@"- 30002009"];
    //6.1.3 登陆接口信息 错误代码
    [MutableDictionary setObject:@"账户长度(3-11)错误" forKey:@"- 20002001"];
    [MutableDictionary setObject:@"密码长度(6-11)错误" forKey:@"- 20002002"];
    [MutableDictionary setObject:@"用户名或密码参数错误" forKey:@"- 20002003"];
    [MutableDictionary setObject:@"用户或密码错误" forKey:@"- 20002004"];
    [MutableDictionary setObject:@"用户未审核" forKey:@"- 20002005"];
    
    //6.2.4 发送短信验证码 错误代码
    [MutableDictionary setObject:@"用户手机号或验证类型错误" forKey:@"- 10006001"];
    [MutableDictionary setObject:@"不要重复发送" forKey:@"- 10006002"];
    
    //6.3.4 注册用户 错误代码
    [MutableDictionary setObject:@"手机、密码、微信参数错误" forKey:@"- 20001001"];
    [MutableDictionary setObject:@"验证码超时" forKey:@"- 20001002"];
    [MutableDictionary setObject:@"验证码错误" forKey:@"- 20001003"];
    [MutableDictionary setObject:@"账号已存在" forKey:@"- 20001004"];
    [MutableDictionary setObject:@"用户密码长度6-11" forKey:@"- 20001005"];
    
    //6.4.4 修改用户信息 错误代码
    [MutableDictionary setObject:@"缺少参数user_account" forKey:@"- 10008001"];
    [MutableDictionary setObject:@"缺少参数user_phone" forKey:@"- 10008002"];
    [MutableDictionary setObject:@"缺少参数user_weixin" forKey:@"- 10008003"];
    [MutableDictionary setObject:@"缺少参数user_qq" forKey:@"- 10008004"];
    [MutableDictionary setObject:@"缺少参数user_id" forKey:@"- 10008005"];
    [MutableDictionary setObject:@"没发现这个用户" forKey:@"- 10008006"];
    
    //6.5.4 修改用户密码 错误代码
    [MutableDictionary setObject:@"缺少参数手机号或原密码" forKey:@"- 10003001"];
    [MutableDictionary setObject:@"缺少参数新密码或确认密码" forKey:@"- 10003002"];
    [MutableDictionary setObject:@"两次密码不一致" forKey:@"- 10003003"];
    [MutableDictionary setObject:@"原密码不正确" forKey:@"- 10003004"];
    
    //7.2.4 登陆日志 错误代码
    [MutableDictionary setObject:@"手机号码输入错误" forKey:@"- 10001001"];
    
    //8.1.4 获取临时消息接口 错误代码
    [MutableDictionary setObject:@"数据是空的" forKey:@"- 90001005"];
//    
//    for (NSObject *object in MutableDictionary) {
//        NSLog(@"遍历KEY的值:%@",object);
//        
//    }
//    NSLog(@"%@",MutableDictionary);
//    NSLog(@"%lu",(unsigned long)MutableDictionary.count);
//    NSLog(@"%@",
//    [MutableDictionary objectForKey:@"- 10001001"]);
//    NSLog(@"%@",[MutableDictionary keyEnumerator]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

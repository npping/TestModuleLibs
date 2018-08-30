//
//  ModuleA_SubPageOneVC.m
//  InterfacesTest
//
//  Created by nigel.ning on 2018/8/30.
//  Copyright © 2018年 nigel.ning. All rights reserved.
//

#import "ModuleA_SubPageOneVC.h"

@interface ModuleA_SubPageOneVC ()
@property (nonatomic, strong)NSDictionary *dic;
@end

@implementation ModuleA_SubPageOneVC

- (id)initWithParams:(NSDictionary *)dic {
    self = [super init];
    self.dic = dic;
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    self.title = @"ModuleA_SubPageOne";
    
    UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 50)];
    [self.view addSubview:lbl];
    if(self.dic) {
        lbl.text = [NSString stringWithFormat:@"%@", self.dic];
    }else {
        lbl.text = @"我是模块A的子级页面SubPageOne";
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end



#import "MBProgressHUD.h"

@interface MBProgressHUD (NJ)
+ (void)showSuccess:(NSString *)success toView:(UIView *)view;
+ (void)showError:(NSString *)error toView:(UIView *)view;

+ (MBProgressHUD *)showMessage:(NSString *)message toView:(UIView *)view;


+ (void)showSuccess:(NSString *)success;
+ (void)showError:(NSString *)error;

+ (MBProgressHUD *)showMessage:(NSString *)message;

+ (void)hideHUDForView:(UIView *)view;
+ (void)hideHUD;

//增加时间控制
+ (void)showSuccess:(NSString *)success time:(float)time;
+ (void)showError:(NSString *)error time:(float)time;

@end

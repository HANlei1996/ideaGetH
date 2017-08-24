//
//  HotelsTableViewCell.h
//  Get Hotels
//
//  Created by admin on 2017/8/23.
//  Copyright © 2017年 com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HotelsTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *hotelsImage;
@property (weak, nonatomic) IBOutlet UILabel *hotelsName;
@property (weak, nonatomic) IBOutlet UILabel *hotelsmoney;
@property (weak, nonatomic) IBOutlet UILabel *hotelsAddr;
@property (weak, nonatomic) IBOutlet UILabel *hotelsDistance;
@end

//
//  MemoTableViewCell.h
//  CustomM
//
//  Created by MerryMacMini on 2014/08/02.
//  Copyright (c) 2014年 growMerry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MemoTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *memoTitle;
@property (weak, nonatomic) IBOutlet UITextView *memoDetail;
@property (weak, nonatomic) IBOutlet UILabel *memoDate;

@end

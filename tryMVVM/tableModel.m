//
//  tableModel.m
//  tryMVVM
//
//  Created by Анастасия Рябова on 30/06/2019.
//  Copyright © 2019 Анастасия Рябова. All rights reserved.
//

//отвечает за данные
//сама ячейка

#import "tableModel.h"


@interface tableModel ()

@end

@implementation tableModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.coverImageView = [UIImageView new];
        self.titleLabelText = [UILabel new];
        self.subtitleLabel = [UILabel new];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.coverImageView.backgroundColor = [UIColor blueColor];
        [self.contentView addSubview:self.coverImageView];
        
        self.titleLabelText.backgroundColor = [UIColor yellowColor];
        [self.contentView addSubview:self.titleLabelText];
        
        self.subtitleLabel.backgroundColor = [UIColor whiteColor];
        [self.contentView addSubview:self.subtitleLabel];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.coverImageView.frame = CGRectMake((CGRectGetWidth(self.contentView.bounds) - 30.f) / 2, 4.f, 20.f, 20.f);
    
    self.titleLabelText.frame = CGRectMake(4.f, CGRectGetMaxY(self.coverImageView.frame) + 2.f, CGRectGetWidth(self.contentView.bounds) - 8.f, 10.f);
    
    self.subtitleLabel.frame = CGRectMake(4.f, CGRectGetMaxY(self.titleLabelText.frame) + 2.f, CGRectGetWidth(self.contentView.bounds) - 8.f, 10.f);
}

- (void)prepareForReuse
{
    [super prepareForReuse];
    self.coverImageView.image = nil;
    self.titleLabelText.text = nil;
    self.subtitleLabel.text = nil;
}

@end

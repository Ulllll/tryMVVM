//
//  tableModelView.m
//  tryMVVM
//
//  Created by Анастасия Рябова on 30/06/2019.
//  Copyright © 2019 Анастасия Рябова. All rights reserved.
//

//связь ViewController и Model, изменение данных во ViewController и перебрасывание их в Mpdel и наоборот

#import "tableModelView.h"

@implementation tableModelView


- (void)setTitle:(NSString *)title
{
    self.titleLabelText.text = title;
}

@end

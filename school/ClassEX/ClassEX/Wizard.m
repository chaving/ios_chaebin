//
//  Wizard.m
//  ClassEX
//
//  Created by chaving on 2016. 9. 20..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "Wizard.h"

@implementation Wizard

- (id)firewall{
    NSLog(@"불로 만든 벽을 만듭니다.");
    return nil;
}

- (id)icespear{
    NSLog(@"얼음으로 만든 창을 날립니다.");
    return nil;
}

- (id)hellfire{
    NSLog(@"하늘에서 불로된 구체를 만듭니다.");
    return nil;
}

- (id)rangeAttack{
    NSLog(@"원거리에서 공격합니다.");
    return nil;
}


- (id)windstorm:(id)to{
    NSLog(@"%@에게 윈드스톰을 날립니다.", to);
    return nil;
}

- (id)windstorm:(id)to damage:(id)damage{
    NSLog(@"%@에게 %@의 데미지로 윈드스톰을 날립니다.", to, damage);
    return nil;
}

- (id)magicalAttack:(id)to{
    NSLog(@"%@에게 마법공격을 합니다.", to);
    return nil;
}

- (id)magicalAttack:(id)to damage:(id)damage{
    NSLog(@"%@에게 %@의 데미지로 마법공격을 합니다.", to, damage);
    return nil;
}

- (id)heal:(id)to{
    NSLog(@"%@의 체력을 회복합니다.", to);
    return nil;
}

- (id)heal:(id)to critical:(id)critical percent:(id)percent{
    NSLog(@"%@의 채력을 %@로 인해 %@ 추가 회복합니다.", to, critical, percent);
    return nil;
}
































@end

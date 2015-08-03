//
//  ViewController.m
//  iPhoneContacts_tutorial
//
//  Created by Emanuel Andrade on 01/08/15.
//  Copyright (c) 2015 Emanuel Andrade. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

-(IBAction)openContacts:(id)sender
{
    ABPeoplePickerNavigationController *picker = [[ABPeoplePickerNavigationController  alloc] init];
    picker.peoplePickerDelegate = self;
    [self presentViewController:picker animated:YES completion:nil];
    
}

-(void) peoplePickerNavigationControllerDidCancel:(ABPeoplePickerNavigationController *)peoplePicker
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)peoplePickerNavigationController:(ABPeoplePickerNavigationController *)peoplePicker didSelectPerson:(ABRecordRef)person
{
    NSString *contactName = (NSString *) CFBridgingRelease(ABRecordCopyValue(person, kABPersonFirstNameProperty));
    self.nameLabel.text = contactName;
    if(ABPersonHasImageData(person))
    {
        self.contactImageView.image = [UIImage imageWithData:(NSData * )CFBridgingRelease(ABPersonCopyImageData(person))];
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end

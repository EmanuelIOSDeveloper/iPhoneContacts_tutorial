//
//  ViewController.h
//  iPhoneContacts_tutorial
//
//  Created by Emanuel Andrade on 01/08/15.
//  Copyright (c) 2015 Emanuel Andrade. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AddressBook/AddressBook.h>
#import <AddressBookUI/AddressBookUI.h>

@interface ViewController : UIViewController <ABPeoplePickerNavigationControllerDelegate>


@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *contactImageView;

- (IBAction)openContacts:(id)sender;

@end


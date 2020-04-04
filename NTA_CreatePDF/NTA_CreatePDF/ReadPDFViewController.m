//
//  ReadPDFViewController.m
//  NTA_CreatePDF
//
//  Created by Anh Nguyen on 4/3/20.
//  Copyright © 2020 ATA_Studio. All rights reserved.
//

#import "ReadPDFViewController.h"

@interface ReadPDFViewController ()

@property (strong, nonatomic) IBOutlet UIWebView *pdfViewer;
@end

@implementation ReadPDFViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSURL *pdfURL = [[NSURL alloc]initFileURLWithPath:self.pdfPath];
    NSURLRequest *pdfReq = [[NSURLRequest alloc] initWithURL:pdfURL];
    [self.pdfViewer loadRequest:pdfReq];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

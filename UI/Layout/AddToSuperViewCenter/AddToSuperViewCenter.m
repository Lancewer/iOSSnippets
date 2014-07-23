- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIView *innerView = [[UIView alloc] init];
    [innerView setBounds:CGRectMake(0, 0, 50, 50)];
    [innerView setBackgroundColor:[UIColor greenColor]];
    [innerView setCenter:self.view.center];
    
    [self.view addSubview:innerView];
}
- (IBAction)beginAnimate:(UIButton *)sender {
    if (self.tableView) {
        [UIView animateWithDuration:0.5 animations:^{
            [self.tableView setBackgroundColor:[UIColor orangeColor]];
            [self.tableView setFrame:CGRectMake(self.tableView.frame.origin.x, self.tableView.frame.origin.y, self.tableView.frame.size.width, 0)];
        } completion:^(BOOL finished){
            if (finished) {
                [self.tableView removeFromSuperview];
                self.tableView = nil;
            }
        }];
    }else{
        self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(sender.frame.origin.x, sender.frame.origin.y + sender.frame.size.height, 200, 0) style:UITableViewStylePlain];
        //hide the extra empty table cells
        self.tableView.tableFooterView = [[UIView alloc] init];
        [self.tableView setBackgroundColor:[UIColor yellowColor]];
        [self.view addSubview:self.tableView];
        [UIView animateWithDuration:0.5 animations:^{
            [self.tableView setFrame:CGRectMake(self.tableView.frame.origin.x, self.tableView.frame.origin.y, self.tableView.frame.size.width, self.tableView.frame.size.height + 100)];
        }];
    }
}
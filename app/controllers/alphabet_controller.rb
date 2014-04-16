class AlphabetController < UIViewController
  def viewDidLoad
    super
    self.title = "Alphabet"
    @table = UITableView.alloc.initWithFrame(self.view.bounds)
    @table.autoresizingMask = UIViewAutoresizingFlexibleHeight
    self.view.addSubview(@table)
    @table.dataSource = self
  end

  def tableView(tableView, numberOfRowsInSection: section)
    10
  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    @reuseIdentifier ||= "CELL_IDENTIFIER"

    cell = tableView.dequeueReusableCellWithIdentifier(@reuseIdentifier)
    cell ||= UITableViewCell.alloc.initWithStyle(
      UITableViewCellStyleDefault,
      reuseIdentifier:@reuseIdentifier)

    cell
  end
end

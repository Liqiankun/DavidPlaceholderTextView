DavidPlaceholderTextView
============================
I'm sure sometimes you wish `UITextView` like `UITextField` has `placehodler`,but it doesn't! With `DavidPlaceholderTextView` things are easy right now.
![](https://github.com/Liqiankun//DavidPlaceholderTextView/raw/master/DavidPlaceholderTextView.gif)

How to use
============================
Darg `DavidPlaceholderTextView` file to you project. Then `#improt "DavidPlaceholderTextView.h"`.<br>
Like:<bt>
```oc
    self.textView = [[DavidPlaceholderTextView alloc] initWithFrame:self.view.bounds];
    self.textView.backgroundColor = [UIColor whiteColor];
    
    self.textView.placeholder = @"我有占位提示文字奥...";
    self.textView.placeholderColor = [UIColor grayColor];
    
    self.textView.font = [UIFont systemFontOfSize:20];
```
Configuration
===================
The placehodler string;
```oc
@property(nonatomic,copy) NSString *placeholder;
```
The color of placeholder. Default is `[UIColor grayColor]`.
```oc
@property(nonatomic,strong) UIColor *placeholderColor;
```

 

DavidPlaceholderTextView
============================
I'm sure sometimes you wish `UITextView` like `UITextField` has `placehodler`,but it doesn't! With `DavidPlaceholderTextView` things are easy right now.<br>

我敢肯定有的时候你希望`UITextView`像`UITextField`一样有`placehodler`，但是很遗憾它没有。现在有了`DavidPlaceholderTextView`问题就解决了。<br>


![](https://github.com/Liqiankun//DavidPlaceholderTextView/raw/master/DavidPlaceholderTextView.gif)

How to use
============================
Darg `DavidPlaceholderTextView` file to you project. Then `#improt "DavidPlaceholderTextView.h"`.<br>
把`DavidPlaceholderTextView`文件夹拖到你的项目中。然后 `#improt "DavidPlaceholderTextView.h"。<br>
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
The placehodler string. Default is @"我有占位提示文字奥...".<br>
这个是placeholder属性。默认是@"我有占位提示文字奥..."。<br>
```oc
@property(nonatomic,copy) NSString *placeholder;
```
The color of placeholder. Default is `[UIColor grayColor]`.<br>
这个是placeholder颜色属性，默认是`[UIColor grayColor]`。<br>
```oc
@property(nonatomic,strong) UIColor *placeholderColor;
```

 

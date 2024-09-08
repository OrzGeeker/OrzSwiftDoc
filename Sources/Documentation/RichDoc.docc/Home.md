# ``OrzSwiftDoc``

@Metadata {
    @TitleHeading("教程")
    @DisplayName("Docc文档元素")
}

## 文档元素

写文档时，可以使用到的各种元素

### 表格

可合并单元格：

- `^` 垂直方向
- `|` 水平方向

First | Second | Third 
----- | ------ | ----- 
One           || Two   
^             || Three 

### 旁白

> Note: General information that applies to some users.

> Important: Important information, such as a requirement.

> Warning: Critical information, like potential data loss or an irrecoverable state.

> Tip: Helpful information, such as shortcuts, suggestions, or hints.

> Experiment: Instructional information to reinforce a learning objective, or to encourage developers to try out different parts of your framework.

### 代码片段

```swift
struct Sightseeing: Activity {
    func perform(with sloth: inout Sloth) -> Speed {
        sloth.energyLevel -= 10
        return .slow
    }
}
```

### 自定义样式

- [theme-settings.json](https://github.com/swiftlang/swift-docc/blob/main/Sources/SwiftDocC/SwiftDocC.docc/Resources/ThemeSettings.spec.json)


### MetaData配置

- [Metadata](https://www.swift.org/documentation/docc/metadata)


### 多标签切换

@TabNavigator {
    
   @Tab("Powers") {
      ![A diagram with the five sloth power types.](alipay)
   }


   @Tab("Exercise routines") {
      ![A sloth relaxing and enjoying a good book.](alipay)
   }


   @Tab("Hats") {
      ![A sloth discovering newfound confidence after donning a fedora.](alipay)
   }
}

###  行列布局

@Row {
    
   @Column {
      @Image(source: "alipay", alt: "A blue square containing a snowflake.") {
         Ice power
      }
   }

   @Column {
      @Image(source: "alipay", alt: "A red square containing a flame.") {
         Fire power
      }
   }


   @Column {
      @Image(source: "alipay", alt: "A teal square containing a breath of air.") {
         Wind power
      }
   }


   @Column(size: 2) {
      @Image(source: "alipay", alt: "A yellow square containing a lightning bolt.") {
         Lightning power
      }
   }
}

### 链接样式

@Links(visualStyle: compactGrid) {
    - <doc:Article>
    - <doc:Article>
    - <doc:Article>
}

### 版权字体

@Small {
    _Licensed under Apache License v2.0 with Runtime Library Exception._
}

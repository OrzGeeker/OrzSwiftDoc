# Article Title

Article Summary

@Comment { Article 文档的第一行只能是文档标题 }

@Metadata {
    @SupportedLanguage(swift)
    @SupportedLanguage(objc)
    @CallToAction(url:nil, label:"Download Sample Code")
    @PageKind(sampleCode)
    
    @Redirected(from: "old/path/to/page")
    @Redirected(from: "another/old/path/to/page")
    
    @DocumentationExtension(mergeBehavior: override)
    
    @PageColor(green)
    @PageImage(purpose: icon, source: alipay)
}


## Overview

Article Overview Content


### 页面标题

```markdown
# Page Title
```

```swift
``Symbol``
```

### Overview/Discussion/Topics 区

```markdown
## Overview

## Discussion

## Topics
```

### 其它区

```md
### Other Section
```

### 格式化文本

```markdown

**粗体** 或 __粗体__

*斜体* 或 _斜体_

`行内代码` 或称为 `code voice`

```

### 代码列表

@Comment { Add the Syntax for code list display }

```swift
func main() {
    print("Hello, world!")
}
```

---

### 无序列表

@TabNavigator {
    @Tab("写法1") {
        ```md
        * list item
        * list item
        * list item
        ```
        * list item
        * list item
        * list item
    }
    
    @Tab("写法2") {
        ```md
        - list item
        - list item
        - list item
        ```
        - list item
        - list item
        - list item
    }
    
    @Tab("写法3") {
        ```md
        * list item
        - list item
        + list item
        ```
        * list item
        - list item
        + list item
    }
}
> \* + - 可以混合使用，效果相同
---

### 有序列表

@TabNavigator {
    @Tab("写法1") {
        ```md
        1. list item
        2. list item
        3. list item
        ```
        1. list item
        2. list item
        3. list item
    }
    
    @Tab("写法2") {
        ```md
        1. list item
        1. list item
        1. list item
        ```
        1. list item
        1. list item
        1. list item
    }
    
    @Tab("写法3") {
        ```md
        1. list item
        4. list item
        6. list item
        ```
        1. list item
        4. list item
        6. list item
    }
}
> 序号只要是数字就可以，会自动计算
---

### 术语列表

```md
- term item1: item1 description
- term item2: item2 description
- term item3: item3 description
```
- term item1: item1 description
- term item2: item2 description
- term item3: item3 description
---


### 表格

@TabNavigator {
    @Tab("普通表格") {
        ```
        Header Field 1| Header Field 2|Header Field 3
        --------------|---------------|--------------
        row1_col1     |row1_col2      |row1_col3
        row2_col1     |row2_col2      |row2_col3
        row3_col1     |row3_col2      |row3_col3
        ```
        Header Field 1| Header Field 2|Header Field 3
        --------------|---------------|--------------
        row1_col1     |row1_col2      |row1_col3
        row2_col1     |row2_col2      |row2_col3
        row3_col1     |row3_col2      |row3_col3
    }
    @Tab("单元格对齐") {
        ```
        Header Field 1| Header Field 2|Header Field 3
        :-------------|:-------------:|-------------:
        row1_col1     |row1_col2      |row1_col3
        row2_col1     |row2_col2      |row2_col3
        row3_col1     |row3_col2      |row3_col3
        ```
        Header Field 1| Header Field 2|Header Field 3
        :-------------|:-------------:|-------------:
        row1_col1     |row1_col2      |row1_col3
        row2_col1     |row2_col2      |row2_col3
        row3_col1     |row3_col2      |row3_col3
        
        > - 左对齐：不加冒号 或 左端加冒号
        > - 居中对齐：两端加冒号
        > - 右对齐：右端加冒号
    }
    @Tab("合并单元格") {
        ```
        First | Second | Third 
        ----- | ------ | ----- 
        One           || Two   
        ^             || Three 
        ```

        First | Second | Third 
        ----- | ------ | ----- 
        One           || Two   
        ^             || Three 
        
        > `^` 垂直方向合并
        >
        > `|` 水平方向合并
    }
}

---


### 旁注

```
> default note aside without aside type specified
```
> default note aside without aside type specified

```
> Note: General information
```
> Note: General information

```
> Note: General information
```
> Important: Important information

```
> Warning: Critical information
```
> Warning: Critical information

```
> Tip: Helpful information
```
> Tip: Helpful information

```
> Experiment: Instructional information
```
> Experiment: Instructional information


```
> 自定义: 自定义旁注
```
> 自定义: 自定义旁注

> Important: 特殊字符可以使用转义字符\来处理，例如：\*\*粗体\*\*

---

### 添加图片

```
![image_description_for_screen_reader](image_name)
```

一个示例：
```
![alipay qrcode](alipay)
```
![alipay qrcode](alipay)

> Important: 图片资源的命名示例: 
> 适配暗黑模式的2倍图：image~dark@2x.png

---

### 自定义文档样式

 [theme-settings.json](https://github.com/swiftlang/swift-docc/blob/main/Sources/SwiftDocC/SwiftDocC.docc/Resources/ThemeSettings.spec.json)
 
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

### 行列布局

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

@Small { _Licensed under Apache License v2.0 with Runtime Library Exception._ }


### 生成并发布文档

- [reference](https://www.swift.org/documentation/docc/distributing-documentation-to-other-developers)

```bash
docc convert MyNewPackage.docc \
  --fallback-display-name MyNewPackage \
  --fallback-bundle-identifier com.example.MyNewPackage \
  --fallback-bundle-version 1 \
  --additional-symbol-graph-dir .build \
  --output-dir MyNewPackage.doccarchive
```

### 配置文档行为

- [API Doc](https://www.swift.org/documentation/docc/api-reference-syntax)

### Section header

``singleLineCommentDemo(_:arg2:)``

``OrzSwiftDoc/singleLineCommentDemo(_:arg2:)``

<doc:singleLineCommentDemo(_:arg2:)>

``multiLineCommentDemo(_:arg2:)``

``OrzSwiftDoc/multiLineCommentDemo(_:arg2:)``

<doc:multiLineCommentDemo(_:arg2:)>

``TrafficLightColor``

``TrafficLightColor/red``

``Color/red-property``

``Color/red-type.property``

<doc:Article>

<doc:Tutorial>

<doc:TOC>

<doc:Article#Section-header>

<doc:OrzSwiftDoc/SwiftPerson>

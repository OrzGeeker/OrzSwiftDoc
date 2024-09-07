# ``OrzSwiftDoc``

@Metadata {
    @TitleHeading("教程")
    @DisplayName("Swift DocC 语法教程")
}

> DocC语法（称为文档标记）是 Markdown 的一种自定义变体，
它为 Swift 软件开发者扩展了一些自定义功能，例如：跨符号链接、术语定义列表、代码清单和旁白。
> 
> DocC编译器可以把开发人员在代码文件中添加的文档注释与单独编写DocC Catalog文件合并在一起，生成最终结构化的DocC  Archive文档。

## 源码里写文档注释

@TabNavigator {
    @Tab("`///`开头的单行文档注释") {
        ```swift
        /// 符号简要描述
        ///
        /// 段落1
        /// 段落1内容：空行把注释内容分隔成不同的段落
        /// 
        /// 段落2
        /// 段落2内容
        ///
        /// - Parameters:
        ///     - arg1: 参数1描述
        ///     - arg2: 参数2描述
        ///
        /// - Returns: 返回值描述。DocC仅支持一个Returns段落
        ///
        /// - Throws： 异常情况描述。 DocC仅支持一个Throws段落
        public func function(_ arg1: String, arg2: String) throws -> Int {
        }
        ```
    }
    @Tab("`/**`和`*/`之间的多行文档注释") {
        ```swift
        /**符号简要描述
        段落1
        段落1内容：空行把注释内容分隔成不同的段落
        
        段落2
        段落2内容
        
        - Parameters:
            - arg1: 参数1描述
            - arg2: 参数2描述
        
        - Returns: 返回值描述。DocC仅支持一个Returns段落
        
        - Throws： 异常情况描述。 DocC仅支持一个Throws段落
        */
        public func function(_ arg1: String, arg2: String) throws -> Int {
        }
        ```
    }
}

## 使用符号链接来进行跳转

使用 `<doc:SymbolName>` 可以添加链接跳转，
例如 `<doc:Article>` 对应渲染为：<doc:Article>
点击即可跳转到对应的文档中

## 使用符号扩展文件

在源码中对符号只能进行一些文本类的注释，如果想加一些图片或者代码示例进一步丰富文档内容，
就可以添加单独的符号扩展文件

> 扩展文件可以用来补充或者覆盖源码文件中的注释内容。
>
> 覆盖源码文件中的注释内容时可以使用 DocumentationExtension 指令设置

```markdown

# ``Symbol Name``

@Metadata {
    @DocumentationExtension(mergeBehavior: override)
}

## Overview

content


```

## 使用Article文件

Article文档是独立的.md文件，用来解释概念或描述任务

```markdown
# Article Title

Article Summary

## Overview

overview content

## Level 2 Section

level 2 section content

### Level 3 Section

level 3 section content

...

```

## 在文档中链接其它内容

DocC支持添加的链接类型如下：

|链接类型|DocC 语法|渲染效果|
|------|--------|-------|
|符号链接|`<doc:singleLineCommentDemo(_:arg2:)>`|<doc:singleLineCommentDemo(_:arg2:)>
|文章链接|`<doc:Article>`|<doc:Article>
|教程链接|`<doc:Tutorial>`|<doc:Tutorial>
|Web链接|`[百度](https://www.baidu.com)`|[百度](https://www.baidu.com)
|标题链接|`<doc:Article#Section-header>`|<doc:Article#Section-header>

---

## 文档元素

写文档时，可以使用到的各种元素



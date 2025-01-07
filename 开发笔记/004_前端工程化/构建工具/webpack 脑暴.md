webpack
- entry
  - entry 的格式支持字符串、数组、对象
- output
  - path: 输出文件的目录
  - filename: 输出文件的名称
  - publicPath: 输出文件的公共路径
  - chunkFilename: 非入口文件的输出文件的名称

- module-rules
  - js
    - babel-loader
      - @babel/preset-env
      - @babel/preset-react
      - @babel/preset-typescript
    - 
  - css
    - css-loader: 负责将css文件转为js模块
    - style-loader: 负责将js模块动态插入到html中

- plugin
  - html-template-plugin: 负责定义html模板
  - mini-css-extract-plugin: 负责将css文件抽离为单独的文件

- sourcemap: 源代码和编译后的代码的映射关系
  - devtool: 定义生成什么样的sourcemap、关键字有eval、source-map、cheap、inline、hidden
  - 涉及到的编码：VLQ编码、base64 VLQ编码
  - VLQ编码的原理：
    - 转换前的行号、列号、文件名、转换后的行号、列

- 模块
  - cjs：commonjs
  - esm：es module
  - 动态加载esm：import()，原理利用了jsonp

- jsonp的原理是：
  - 利用script标签的src属性，可以跨域请求资源

- 联邦模块
  - host
  - remote
  - 每个仓库都是一个独立的模块
  - 联邦模块的目的是为了复用
  - 涉及plugin：webpack-module-federation-plugin
  - 涉及到的配置：
    - remotes: 远程模块的地址
    - exposes: 暴露的模块
    - shared: 共享的模块

- ast
	- 词法解析：最终得到token
	- 语法解析：最终得到ast树
- babel
	- @babel/core
	- @babel/type
	- @babel/parser
	- @babel/traverse
	- @babel/generator
- babel插件开发：插件是一个对象，对象中必须包含visitor方法，可以在visitor方法中重写需要的ast节点的方法


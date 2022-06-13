# flutter_popular

学习使用flutter流行的库

## Getting Started

1. auto_route https://pub.dev/packages/auto_route
 auto_route结合auto_route_generator能自动根据配置项里(routes.dart)生成路由类，这点还是很方便的。也有类似拦截器的AutoRouteGuard类，可以在里面判断登录态，就是登录完成后需要自己pop掉登录页。跳转传值还是比较方便的，比官方的arguments参数好用，Page暴露出来参数就行，也可以看到接收的参数类型。阅读完官方文档，太复杂的功能一般用不到，就普通的跳转传值，pop、登录拦截验证就够用了。
2. json_serializable https://pub.dev/packages/json_serializable

      part 'xxx.g.dart';这个是必须得添加的，不用管报错，否则build不出来自动生成的g.dart文件。可以使用这个工具 https://caijinglong.github.io/json2dart/index_ch.html 自动生成数据。能省很多事。
    之前一直使用的是FlutterJsonBeanFactory​ https://plugins.jetbrains.com/plugin/11415-flutterjsonbeanfactory-only-null-safety- 非常方便快捷，以前是生成的helper文件来解析，新版本已经支持了json_serializable，会自动生成xxx.g.dart文件，并且保留了JsonConvert方便支持泛型来统一解析Model。
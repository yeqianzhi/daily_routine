# flutter_app

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

flutter_app
├── android
├── icons  // 图标
├── i10n-arb  // 多语言支持
├── imgs  // 图片
├── ios
├── jsons  // 保存json文件
├── lib
└── test

lib
├── common  一些工具类，如通用方法类、网络接口类、保存全局变量的静态类等
├── i10n 	国际化相关的类都在此目录下
├── models  Json文件对应的Dart Model类会在此目录下
├── states  保存APP中需要跨组件共享的状态类
├── routes  存放所有路由页面类
└── widgets APP内封装的一些Widget组件都在该目录下
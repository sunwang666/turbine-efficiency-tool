# 汽轮机效率计算器 - Android App

## 构建方法（需要 Android Studio）

### 方式一：Android Studio 构建（推荐）

1. 安装 Android Studio (https://developer.android.com/studio)
2. 打开此目录 ("android_app")
3. 等待 Gradle 同步完成
4. 点击 Build → Build Bundle(s) / APK(s) → Build APK(s)
5. 生成的 APK 在 `app/build/outputs/apk/debug/`

### 方式二：命令行构建

需要安装 JDK 17 和 Android SDK：
```bash
# 设置 Android SDK 路径
export ANDROID_HOME=/path/to/android/sdk

# 构建 debug APK
./gradlew assembleDebug
# APK 位置: app/build/outputs/apk/debug/app-debug.apk

# 构建 release APK（需要签名）
./gradlew assembleRelease
```

## 手动安装 APK

1. 将 APK 传到手机
2. 在手机设置中允许"安装未知来源应用"
3. 点击 APK 文件安装

## 技术说明

- 使用 Android WebView 包裹移动端网页
- 蒸汽表数据基于 IAPWS-IF97，内置于 assets
- 完全离线运行，无需联网


## 方式三：GitHub Actions 云构建（无需安装任何工具）

1. 在 GitHub 上创建新仓库
2. 将 `android_app` 目录下的所有文件推送到仓库
3. 在 GitHub 仓库页面点击 Actions → 选择 "Build Android APK" → Run workflow
4. 等待几分钟，构建完成后在 Artifacts 下载 APK
5. 将 APK 传到手机安装即可

### 快速开始（一键云构建）

```bash
# 1. 在 GitHub 创建仓库（如 turbine-android）
# 2. 在本地或网页上上传 android_app 目录所有文件
# 3. 进入 GitHub Actions 页面，手动触发 Build
# 4. 下载生成的 APK
```

## 方式四：使用在线 APK 生成服务

将 `assets/index.html` 和 `assets/steam_data.js` 部署到任何静态服务器，
然后访问以下网站生成 APK：

- https://pwabuilder.com - 微软 PWA → APK 工具
- https://appmaker.xyz - 在线 APK 生成器
- https://www.pwastore.com - PWA 转 APK

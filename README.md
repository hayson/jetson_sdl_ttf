# 背景
英伟达平台搞osd时间戳，参考原海思，稍微麻烦了一点！
osd背景参考[《海思OSD开发系列(一) SDL_TTF框架移植》](https://blog.csdn.net/haysonzeng/article/details/106670568)

# 超快编译
我已经将所有资源整理上传到github/gitee

## 使用编译完成的库直接测试
所有编译好的库和文件都放在lib下面。
```
git clone https://github.com/hayson/jetson_sdl_ttf.git
cd jetson_sdl_ttf/sample
make;./run_test.sh
```
打开save.bmp即生成的osd位图。

## 重新编译
```
cd jetson_sdl_ttf/
./build.sh
```

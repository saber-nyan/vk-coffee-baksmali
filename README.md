# vk-coffee-baksmali
Декомпилированный VK Coffee.<br>
Декомпиляция проводилась с Apktool 2.2.3 (Oracle JDK 1.8.0_121); **ни один ресурс не изменялся**. Можете проверить!<br>

Версия:
```
rasva@THERASVA-PC C:\Users\rasva\Desktop
> apktool -version
2.2.3

rasva@THERASVA-PC C:\Users\rasva\Desktop
> java -version
java version "1.8.0_121"
Java(TM) SE Runtime Environment (build 1.8.0_121-b13)
Java HotSpot(TM) 64-Bit Server VM (build 25.121-b13, mixed mode)
```

Декомпиляция:
```
rasva@THERASVA-PC C:\Users\rasva\Desktop
> apktool decode .\VKCoffee_RELEASE_5.32_05092016_01-58-27.apk -o .\coffee_out
I: Using Apktool 2.2.3 on VKCoffee_RELEASE_5.32_05092016_01-58-27.apk
I: Loading resource table...
I: Decoding AndroidManifest.xml with resources...
I: Loading resource table from file: C:\Users\rasva\AppData\Local\apktool\framework\1.apk
I: Regular manifest package...
I: Decoding file-resources...
I: Decoding values */* XMLs...
I: Baksmaling classes.dex...
I: Baksmaling classes2.dex...
I: Copying assets and libs...
I: Copying unknown files...
I: Copying original files...
```

## Полезные ссылки
* [diff-файл](https://gist.github.com/saber-nyan/7672051185fd913ef7ecd0c3ec60b296) моей модификации VK Coffee
* [Тема](http://4pda.ru/forum/index.php?showtopic=701681) автора (4pda)

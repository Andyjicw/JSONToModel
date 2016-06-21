JSONToModel
-
记得star一下哦</br>
JSON串转换为model，借助ESJsonFormat插件生成model文件

[ESJsonFormat-Xcode 传送门](https://github.com/EnjoySR/ESJsonFormat-Xcode)

#注意：

要将 model.m 中生成的` + (NSDictionary *)objectClassInArray`

改写成
```
- (NSDictionary *)objectClassInArray
```
## 使用

###JSONDicModel
```
JSONDicModel *tmp = [JSONDicModel objectWithObj:result];
```
result 是获取到的json串，最外层是个dic
```
 {
    "data": [
        {
            "set_name": {
                "k1": "111",
                "k2": "222"
            },
            "classes": "xieemanhua",
            "group": "a560a5616b2a432eb18047ca7fe512f4",
            "file_ext": ".jpg",
            "pic_count": "9",
            "pic_id": "1"
        },
        {
 
            "set_name": {
                "k1": "111",
                "k2": "222"
            },
            "classes": "xieemanhua",
            "group": "bc7d22fd07b0bb99457a626ce7bf867b",
            "file_ext": ".jpg",
            "pic_count": "7",
            "pic_id": "2"
        }
    ]
 }
```
###JSONArrModel

```
JSONArrModel *tmp = [JSONArrModel objectWithObj:result];
```
result 是获取到的json串，最外层是个arr
 ```
 [
    {
        "set_name": "www.27270.com",
        "classes": "xieemanhua",
        "group": "a560a5616b2a432eb18047ca7fe512f4",
        "file_ext": ".jpg",
        "pic_count": "9",
        "pic_id": "1"
    },
    {
        "set_name": "www.27270.com",
        "classes": "xieemanhua",
        "group": "bc7d22fd07b0bb99457a626ce7bf867b",
        "file_ext": ".jpg",
        "pic_count": "7",
        "pic_id": "2"
    }
 ]
 ```
欢迎指出问题
联系我：479003573@qq.com Andyjicw
#TODO
最外层是个arr的json解析失败

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

#TODO

需要添加其他 自定义属性的时候 还没有找到一个好的切入点去添加
需要思考下
有好的想法，请联系我

=======================

联系我  : 479003573@qq.com 

github :Andyjicw

=======================
## 须知       
中文：如果您在您的项目中使用该开源组件,请给我们发[电子邮件](mailto:479003573@qq.com?subject=From%20GitHub%20JSONToModel)告诉我们您的应用程序的名称。         

## Instructions
         
English：If you use the open source components in your project, please [Email us](mailto:479003573@qq.com?subject=From%20GitHub%20JSONToModel) to tell us the name of your application.

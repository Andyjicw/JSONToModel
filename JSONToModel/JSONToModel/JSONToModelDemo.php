<?php

if (isset($_SERVER["REQUEST_METHOD"])) {
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $res = (array) json_decode(file_get_contents("php://input"));
        $value = $res['key'];
        switch ($value) {
            case 'demo1': {
                echo "{\"data\":[{\"set_name\":{\"k1\":\"111\",\"k2\":\"222\"},\"classes\":\"xieemanhua\",\"group\":\"a560a5616b2a432eb18047ca7fe512f4\",\"file_ext\":\".jpg\",\"pic_count\":\"9\",\"pic_id\": \"1\"},{\"set_name\":{\"k1\":\"111\",\"k2\":\"222\"},\"classes\":\"xieemanhua\",\"group\":\"bc7d22fd07b0bb99457a626ce7bf867b\",\"file_ext\":\".jpg\",\"pic_count\":\"7\",\"pic_id\":\"2\"}]}";
                break;
        	}
            case 'demo2': {
              echo "[{\"set_name\": \"www.27270.com\",\"classes\": \"xieemanhua\",\"group\": \"a560a5616b2a432eb18047ca7fe512f4\",\"file_ext\": \".jpg\",\"pic_count\": \"9\",\"pic_id\": \"1\"},{\"set_name\": \"www.27270.com\",\"classes\": \"xieemanhua\",\"group\": \"bc7d22fd07b0bb99457a626ce7bf867b\",\"file_ext\": \".jpg\",\"pic_count\": \"7\",\"pic_id\": \"2\"}]";
                break;
            }
            case 'demo3': {
                echo "[{\"testObject\": {\"arr1\": [\"test0\",\"test1\",\"test2\",\"test3\"],\"arr2\": [\"test20\",\"test21\",\"test22\",\"test23\"]},\"set_name\": \"www.27270.com\",\"classes\": \"xieemanhua\",\"group\": \"a560a5616b2a432eb18047ca7fe512f4\",\"file_ext\": \".jpg\",\"pic_count\": \"9\",\"pic_id\": \"1\"},{\"testObject\": {\"arr1\": [\"test4\",\"test5\",\"test6\",\"test7\"],\"arr2\": [\"test24\",\"test25\",\"test26\",\"test27\"]},\"set_name\": \"www.27270.com\",\"classes\": \"xieemanhua\",\"group\": \"bc7d22fd07b0bb99457a626ce7bf867b\",\"file_ext\": \".jpg\",\"pic_count\": \"7\",\"pic_id\": \"2\"}]";
                break;
            }
            case 'demo4': {
                echo "{\"testArr\":[{\"testArrObj1\":{\"testArrObj1item1\":\"测试字符串1\",\"testArrObj1item2\":null,\"testArrObj1item3\":100,\"testArrObj1item4\":true},\"testArrObj2\":{\"Obj2item1\":\"TestObj2item1\",\"Obj2item2\":\"TestObj2item2\",\"Obj2item3\":\"TestObj2item3\"}},{\"testArrObj1\":{\"testArrObj1item1\":\"测试字符串1\",\"testArrObj1item2\":null,\"testArrObj1item3\":100,\"testArrObj1item4\":true},\"testArrObj2\":{\"Obj2item1\":\"TestObj2item1\",\"Obj2item2\":\"TestObj2item2\",\"Obj2item3\":\"TestObj2item3\"}},{\"testArrObj1\":{\"testArrObj1item1\":\"测试字符串1\",\"testArrObj1item2\":null,\"testArrObj1item3\":100,\"testArrObj1item4\":true},\"testArrObj2\":{\"Obj2item1\":\"TestObj2item1\",\"Obj2item2\":\"TestObj2item2\",\"Obj2item3\":\"TestObj2item3\"}}],\"testObj\":{\"testArr\":[{\"testArrObj1\":{\"testArrObj1item1\":\"TestString1\",\"testArrObj1item2\":null,\"testArrObj1item3\":200,\"testArrObj1item4\":false},\"testArrObj2\":{\"Obj2item1\":\"TestObj2item1\",\"Obj2item2\":\"TestObj2item2\",\"Obj2item3\":\"TestObj2item3\"}},{\"testArrObj1\":{\"testArrObj1item1\":\"TestString1\",\"testArrObj1item2\":null,\"testArrObj1item3\":200,\"testArrObj1item4\":false},\"testArrObj2\":{\"Obj2item1\":\"TestObj2item1\",\"Obj2item2\":\"TestObj2item2\",\"Obj2item3\":\"TestObj2item3\"}},{\"testArrObj1\":{\"testArrObj1item1\":\"TestString1\",\"testArrObj1item2\":null,\"testArrObj1item3\":200,\"testArrObj1item4\":false},\"testArrObj2\":{\"Obj2item1\":\"TestObj2item1\",\"Obj2item2\":\"TestObj2item2\",\"Obj2item3\":\"TestObj2item3\"}}],\"testObj1\":{\"testObj1item1\":\"TestString1\",\"testObj1item2\":null,\"testObj1item3\":300,\"testObj1item4\":true},\"testObj2\":{\"Obj2item1\":\"TestObj2item1\",\"Obj2item2\":\"TestObj2item2\",\"Obj2item3\":\"TestObj2item3\"}}}";
                break;
            }
            default: {
                echo "参数错误！";
            }
        }
    }
}

?>
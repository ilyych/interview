/*

使用Json作为配置文件 org.nutz.ioc.loader.json.JsonLoader
使用XML作为配置文件 org.nutz.ioc.loader.xml.XmlIocLoader
使用注解作为配置文件 org.nutz.ioc.loader.annotation.AnnotationIocLoader
使用Map作为配置文件 org.nutz.ioc.loader.map.MapLoader
混合使用多种配置?一样可以! org.nutz.ioc.loader.combo.ComboIocLoader
  
// JsonLoader
{
    "对象名称" : {
        type : "对象类型",
        singleton : true | false,
        events : {
            fetch : "触发器的类型或者函数名",
            create : "触发器的类型或者函数名",
            depose : "触发器的类型或者函数名"
        },
        args : [
            "参数1", "参数2", "..."
        ],
        fields : {
            "字段名称1" : "字段值1", 
            "字段名称2" : "字段值2", 
            "..." : "..."
        }
    }
}




*/

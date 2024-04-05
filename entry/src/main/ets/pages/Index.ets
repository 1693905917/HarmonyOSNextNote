//console.log('消息的解释说明','需要打印的内容');
//console.log('我说','Hello World')


// 变量的存储和修改(string number boolean)
// 1,变量存储
// 1.1字符串string类型
// 注意点1：字符串需要用引号引起来（单引和双引号都可以，推荐使用''）'字符串' "字符串"
// 注意点2：存储的时候，后面的存的内容，需要和前面的类型对应

// let title: string = '巨无霸汉堡'
// console.log('字符串title',title)
//
// //1.2数字number类型
// let age: number = 18
// console.log('年纪age',age)
//
// //1.3布尔boolean类型(true真，false假)
// let isLogin: boolean = true
// console.log('是否登录成功',isLogin)
//
// //2,变量的修改
// age=80
// console.log('年纪age',age)

// 用一个函数，来实现下面的需求
// 传入价格和数量，返回计算的结果
// 1.苹果2元/斤，买了3斤，多少钱？
// 2.香蕉4元/斤，买了4斤，多少钱？

//普通函数
// function buy(price:number,num:number){
//   console.log('传入的数据',price,num)
//   //1.处理数据
//   let result:number=price*num;
//   //2.返回结果
//   return result
// }
//
// let apple:number=buy(2,3);
// console.log('苹果',apple);
//
// let banner:number=buy(4,4);
// console.log('香蕉',banner);

//箭头函数
// let buy=(price:number,num:number)=>{
//     console.log('传入的数据',price,num)
//     //1.处理数据
//     let result:number=price*num;
//     //2.返回结果
//     return result
// }
//
// let apple:number=buy(2,3);
// console.log('苹果',apple);
//
// let banner:number=buy(4,4);
// console.log('香蕉',banner);

//对象
// interface Person{
//   name:string;
//   age:number;
//   weight:number;
//   dance:()=>void;
//   sing:(song:string)=>void;
// }
// let person : Person = {
//   name: '彭于晏',
//   age:18,
//   weight:90,
//   dance:()=>{
//     console.log('彭于晏说','我来跳个舞');
//   },
//   sing:(song:string)=>{
//     console.log('彭于晏说','我来唱一首',song);
//   }
// }
// console.log('姓名',person.name);
// console.log('年龄',person.age);
// console.log('体重',person.weight);
// person.dance();
// person.sing('紫荆花盛开');


//联合类型
// let gender:'man'|'woman'|'secret'
// gender='man'
// console.log('性别为',gender)
// let judge: number | string =100
// console.log('成绩为',judge)
// judge='A'
// console.log('成绩为',judge)
// judge='不错'
// console.log('成绩为',judge)

// 需求：利用枚举类型，给变量设置主色
// 取色范围
// 红色 '#ff0f29'
// 橙色 '#ff7100'
// 绿色 '#30b30e'

//1.定义枚举（定义常量列表）
// enum ThemeColor{
//   Red='#ff0f29',
//   Orange='#ff7100',
//   Green='#30b30e'
// }
//
// //2.给变量设定枚举类型
// let color:ThemeColor =ThemeColor.Red;
// console.log('主页颜色',color);



@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  //构建→界面
  build() {
    Column() {
      Text('待完善')
        .fontColor(Color.Red)
        .padding(5)
        .border({
          width: 1, // 宽度（必须）
          color: Color.Red, // 颜色
          style: BorderStyle.Dashed // 样式(实线、虚线、点线)
        })
        .margin({ bottom: 20 })

      Text('单边框')
        .padding(5)
          // 单边框，可以通过 left right bottom top 配置四个方向边框
        .border({
          width: { left: 1, right: 2 },
          color: { left: Color.Red, right: Color.Green },
          style: {
            left: BorderStyle.Dashed,
            right: BorderStyle.Dotted
          }
        })
    }
    .padding(20)
    }
}


    //QQ音乐-登录
    // Column(){
    //   Image($r('app.media.m_user')).width(100)
    //   Text('大王叫我来巡山').fontWeight(700).margin({
    //     top:10,
    //     bottom:40
    //   })
    //   Button('QQ登录').width('100%').margin({
    //     bottom:10
    //   })
    //
    //   Button('微信登录').width('100%').backgroundColor('#ddd').fontColor('#000')
    // }.width('100%')
    // .padding(20)

    //Padding margin
    // Column(){
    //   Text("黄志鹏").backgroundColor(Color.Pink)
    //     // .padding(50)//四个方向设置同样的内边距
    //     .padding({
    //       left:20,
    //       top:30,
    //       right:5,
    //       bottom:30
    //     })
    //   Text('外边距margin')
    //     .margin({
    //       top: 10,
    //       right: 20,
    //       bottom: 40,
    //       left: 80
    //     }) // 四个方向外边距分别设
    // }

    // //svg
    // Column(){
    //   //知识点1：图标命名：ic_*****
    //   //知识点2：fillColor()只对svg有效果
    //   Image($r('app.media.ic_late')).width(200).fillColor(Color.Orange)
    //
    //   Image($r('app.media.icon')).width(50)
    // }

    //华为登录
    // Column({space:15}){//控制Column内部组件间的距离，可以给Column设置{space:间隙大小}
    //   Image($r('app.media.huawei')).width(60)
    //   TextInput({placeholder:'请输入用户名'});
    //   TextInput({placeholder:'请输入密码'}).type(InputType.Password);
    //   Button('登录').width(200);
    //
    //   Row({space:20}){
    //     Text('前往注册');
    //     Text('忘记密码');
    //   }
    // }.padding(20)


    // Column({space:15}){//控制Column内部组件间的距离，可以给Column设置{space:间隙大小}
    //   TextInput({placeholder:'请输入用户名'});
    //   TextInput({placeholder:'请输入密码'}).type(InputType.Password);
    //   Button('登录').width(200);
    // }.padding(20)

    // Column(){
    //   // Image('https://www.itheima.com/images/logo.png')
    //   //   .width(200);
    //   Image($r('app.media.product')).width(200);
    //   Text('耐克龙年限定款！！！').height(50).width(200).fontColor('#707070');
    //   Row(){
    //     Image($r('app.media.avatar')).width(20);
    //     Text('令人脱发的代码')
    //   }.width(200);
    // }

    // Column() {
    //   Text('HarmonyOS开发初体验')
    //     .width('100%')
    //     .lineHeight(50)
    //     .fontSize(20)
    //     .fontWeight(FontWeight.Bold)
    //   Text('方舟开发框架（简称ArkUI）为HarmonyOS应用的UI开发提供了完整的基础设施，' +
    //     '包括简洁的UI语法、丰富的UI功能（组件、布局、动画以及交互事件），以及实时界面预览工具等，' +
    //     '可以支持开发者进行可视化界面开发。')
    //     .width('100%')
    //     .lineHeight(24)
    //       // 重点记忆：文字溢出显示省略号
    //     .textOverflow({  //{}里面是对象
    //       overflow: TextOverflow.MARQUEE
    //     })
    //       // 必须配合maxLines才有效果
    //     .maxLines(2)
    // }
    // .width('100%')
    // .padding(20)
    // Column(){
    //   Text('学鸿蒙，就来黑马程序员~')
    //     .fontSize(24)
    //     .width('100%');
    //   Row(){
    //     Text('置顶')
    //       .fontColor('#C95A5B')
    //       .width(50)
    //       .height(30);
    //     Text('新华社')
    //       .fontColor('#ADADAD')
    //       .width(60)
    //       .height(30);
    //     Text('4680评论')
    //       .fontColor('#ADADAD')
    //       .width(80)
    //       .height(30);
    //   }.width('100%')
    // }.width('100%')
   // Column(){ //Column默认将{}中的内容居中显示
   //   Text('小说简介')  //Text是默认根据打印字符的长度来固定长度并且默认左对齐
   //     // .backgroundColor(Color.White)
   //      .width('100%')
   //     .fontSize(20)
   //       //fontWeight有两种写法:
   //     // .fontWeight(FontWeight.Bold)
   //     .fontWeight(900);//100~900的数字加粗700默认400
   //   Row(){       //Row是默认根据打印字符的长度来固定长度并且默认左对齐
   //     Text('都市')
   //       .width(50)
   //       .height(30)
   //       .backgroundColor(Color.Orange);
   //     Text('生活')
   //       .width(50)
   //       .height(30)
   //       .backgroundColor(Color.Pink);
   //     Text('情感')
   //       .width(50)         .height(30)
   //       .backgroundColor(Color.Yellow);
   //     Text('男频')
   //       .width(50)
   //       .height(30)
   //       .backgroundColor(Color.Gray);
   //   }
   //   // .backgroundColor(Color.Red)
   //   .width('100%')
   // }
   //  // .backgroundColor(Color.Pink)
   //  //.width('100%') //以'%'来进行设置，则会依据父类组件的宽度来取百分比
   //  .width('100%')//根据数字来设置固定的宽度

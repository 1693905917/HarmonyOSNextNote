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
// let color:ThemeColor =ThemeColor.Red;// console.log('主页颜色',color);



@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    // position绝对定位：可以控制组件位置，可以实现层叠效果
    // 语法：
    // .position({
    //   x: 50,
    //   y: 50
    // })
    // 特点：
    // 1. 相对于父组件左顶点进行偏移（调整位置）
    // 2. 原本的位置不占了，且可以任意调整位置，不影响其他元素

    // 后面的组件明显层次更高，会盖住前面的组件
    // 需求：不动结构的情况下，调整组件的层级 .zIndex(数字)
    Column() {

      Text('大儿子')
        .width(80)
        .height(80)
        .backgroundColor(Color.Green)
        .zIndex(3)
      Text('二儿子定位')
        .width(80)
        .height(80)
        .backgroundColor(Color.Yellow)
        .position({
          x: 50,
          y: 50
        })
        .zIndex(4)
      Text('三儿子')
        .width(80)
        .height(80)
        .backgroundColor(Color.Orange)
        .zIndex(2)
    }
    .width(300)
    .height(300)
    .backgroundColor(Color.Pink)
  }

}
// // Flex默认主轴水平往右，交叉轴垂直往下 → Row
// // 1. 主轴方向
// //    direction: FlexDirection.Row / Column
// // 2. 主轴对齐方式
// //    justifyContent: FlexAlign.SpaceAround
// // 3. 交叉轴对齐方式
// //    alignItems: ItemAlign.Stretch / Start / Center / End
// // 单行或者单列的情况，优先还是使用线性布局（本质基于Flex设计的，且还做了性能优化）
//
// // Flex布局：伸缩布局。当子盒子的总和溢出父盒子，默认进行压缩显示。
// // 4. 换行 wrap
// //    FlexWrap.Wrap 换行
// //    FlexWrap.NoWrap 不换行
// Flex({
//   wrap: FlexWrap.Wrap
// }) {
//   Text()
//     .width(80).height(80)
//     .backgroundColor(Color.Pink)
//     .border({ width: 1, color: Color.Blue })
//   Text()
//     .width(80).height(80)
//     .backgroundColor(Color.Pink)
//     .border({ width: 1, color: Color.Blue })
//   Text()
//     .width(80).height(80)
//     .backgroundColor(Color.Pink)
//     .border({ width: 1, color: Color.Blue })
//   Text()
//     .width(80).height(80)
//     .backgroundColor(Color.Pink)
//     .border({ width: 1, color: Color.Blue })
//   Text()
//     .width(80).height(80)
//     .backgroundColor(Color.Pink)
//     .border({ width: 1, color: Color.Blue })
// }
// .width(300)
// .height(300)
// .backgroundColor('#5f9a5c')
// // Flex默认主轴水平往右，交叉轴垂直往下 → Row
// // 1. 主轴方向
// //    direction: FlexDirection.Row / Column
// // 2. 主轴对齐方式
// //    justifyContent: FlexAlign.SpaceAround
// // 3. 交叉轴对齐方式
// //    alignItems: ItemAlign.Stretch / Start / Center / End
// // 单行或者单列的情况，优先还是使用线性布局（本质基于Flex设计的，且还做了性能优化）
// Flex({
//   direction: FlexDirection.Column,
//   justifyContent: FlexAlign.SpaceBetween,
//   alignItems: ItemAlign.Start
// }) {
//   Text()
//     .width(80).height(80)
//     .backgroundColor(Color.Pink)
//     .border({ width: 1, color: Color.Blue })
//   Text()
//     .width(80).height(80)
//     .backgroundColor(Color.Pink)
//     .border({ width: 1, color: Color.Blue })
//   Text()
//     .width(80).height(80)
//     .backgroundColor(Color.Pink)
//     .border({ width: 1, color: Color.Blue })
// }
// .width('100%')
// .height(600)
// .backgroundColor('#5f9a5c')

// Column() {
//   Column() {
//     Image($r('app.media.nick'))
//       .width('100%')
//       .borderRadius({
//         topLeft: 5,
//         topRight: 5
//       })
//     Text('今晚吃这个 | 每日艺术分享 No.43')
//       .fontWeight(600)
//       .fontSize(14)
//       .lineHeight(22)
//       .height(60)
//
//     // 底部
//     Row() {
//       // 头像、昵称
//       Row({ space: 5 }) {
//         Image($r('app.media.user'))
//           .width(16)
//           .borderRadius(8)
//         Text('插画师分享聚集地')
//           .fontSize(10)
//           .fontColor('#999')
//       }
//       .layoutWeight(1)
//
//       // 点赞图标、点赞数
//       Row({ space: 5}) {
//         Image($r('app.media.ic_like'))
//           .width(12)
//           .fillColor('#999')
//         Text('2300')
//           .fontSize(10)
//           .fontColor('#666')
//       }
//     }
//     .padding({ left: 15, right: 15 })
//   }
//   .width(200)
//   .padding({ bottom: 15 })
//   .backgroundColor(Color.White)
//   .borderRadius(5)
// }
// .padding(10)
// .width('100%')
// .height('100%')
// .backgroundColor('#ccc')
// Column() {
//   // layoutWeight 自适应伸缩: 按照[份数权重]，分配[剩余空间]
//   Row() {
//     Text('左侧')
//       .layoutWeight(1)
//       .height(40)
//       .backgroundColor(Color.Pink)
//     Text('右侧固定')
//       .width(80)
//       .height(40)
//       .backgroundColor(Color.Orange)
//   }
//   .width(300)
//   .height(40)
//   .backgroundColor('#fff')
//
//   Row() {
//     Text('老大')
//       .layoutWeight(1)
//       .height(40)
//       .backgroundColor(Color.Gray)
//     Text('老二')
//       .layoutWeight(2)
//       .height(40)
//       .backgroundColor(Color.Orange)
//     Text('老三')
//       .layoutWeight(3)
//       .height(40)
//       .backgroundColor(Color.Pink)
//     Text('小宝')
//       .width(50)
//       .height(40)
//       .backgroundColor(Color.Brown)
//   }
//   .width(300)
//   .height(40)
//   .backgroundColor('#fff')
//   .margin({ top: 30 })
//
// }
// .padding(10)
// .width('100%')
// .height('100%')
// .backgroundColor('#ccc')

//   Column() {
//     Row() {
//       // 左侧列
//       Column({ space: 8 }) {
//         Text('玩一玩')
//           .fontSize(18)
//           .fontWeight(700)
//         Text('签到兑礼 | 超多大奖 超好玩')
//           .fontSize(12)
//           .fontColor('#999')
//       }
//       .alignItems(HorizontalAlign.Start)
//       // 右侧行
//       Row({ space: 8 }) {
//         Image($r('app.media.tree'))
//           .width(50)
//           .backgroundColor('#efefef')
//           .borderRadius(5)
//         Image($r('app.media.ic_arrow_right'))
//           .width(20)
//           .fillColor('#999')
//       }
//     }
//     .justifyContent(FlexAlign.SpaceBetween)
//     .padding({ left: 15, right: 15 })
//     .width('100%')
//     .height(80)
//     .backgroundColor('#fff')
//     .borderRadius(5)
//   }
//   .padding(10)
//   .width('100%')
//   .height('100%')
//   .backgroundColor('#ccc')
// }
// // Column 交叉轴的对齐方式（水平往右）
// // alignItems(HorizontalAlign.Start)  Center End
// Column() {
//   Text()
//     .width(200).height(100)
//     .backgroundColor(Color.Pink)
//     .border({ width: 2 })
//   Text()
//     .width(200).height(100)
//     .backgroundColor(Color.Pink)
//     .border({ width: 2 })
//     .margin({ top: 5, bottom: 5 })
//   Text()
//     .width(200).height(100)
//     .backgroundColor(Color.Pink)
//     .border({ width: 2 })
// }
// .alignItems(HorizontalAlign.End)
// .width('100%')
// .height('100%')
// .backgroundColor('#ccc')

// Column() {
//   Row() {
//     Image($r('app.media.ic_arrow_left'))
//       .width(30)
//     Text('个人中心')
//     Image($r('app.media.ic_more'))
//       .width(24)
//   }
//   .justifyContent(FlexAlign.SpaceBetween)
//   .width('100%')
//   .height(40)
//   .padding({ left: 10, right: 10 })
//   .backgroundColor(Color.White)
// }
// .width('100%')
// .height('100%')
// .backgroundColor('#ccc')

// Column() {
//   Text()
//     .width(200).height(100)
//     .backgroundColor(Color.Pink)
//     .border({ width: 2 })
//   Text()
//     .width(200).height(100)
//     .backgroundColor(Color.Pink)
//     .border({ width: 2 })
//     .margin(5)
//   Text()
//     .width(200).height(100)
//     .backgroundColor(Color.Pink)
//     .border({ width: 2 })
//     .margin(5)
//   Text()
//     .width(200).height(100)
//     .backgroundColor(Color.Pink)
//     .border({ width: 2 })
// }
// .width('100%')
// .height('100%')
// .backgroundColor('#ccc')
// // 设置排布主方向的对齐方式（主轴）
// // 1. Start  （排布主方向）主轴起始位置对齐
// // 2. Center  主轴居中对齐
// // 3. End     主轴结束位置对齐
// // 4. SpaceBetween 贴边显示，中间的元素均匀分布间隙
// // 5. SpaceAround 间隙环绕  0.5  1  1  1  0.5 的间隙分布，靠边只有一半的间隙
// // 6. SpaceEvenly 间隙均匀环绕，靠边也是完整的一份间隙
// // justifyContent(枚举FlexAlign)  ctrl+p  cmd+p
// // .justifyContent(FlexAlign.Center)
// // .justifyContent(FlexAlign.SpaceBetween)
// // .justifyContent(FlexAlign.SpaceAround)
// .justifyContent(FlexAlign.SpaceEvenly)

// Column() {
//   Text()
//     .width(330)
//     .height(200)
//     .backgroundColor(Color.Pink)
//     .backgroundImage($r('app.media.jd_bg'))
//     .backgroundImagePosition(Alignment.Center)
//     .backgroundImageSize(ImageSize.Cover)
//
//   // 1. 直接写 宽高尺寸 对象
//   // .backgroundImageSize({
//   //   width: 150,
//   //   // height: 100
//   // })
//
//   // 2. 设置 背景尺寸 的枚举 ImageSize
//   // (1) Contain: 等比例缩放，展示整张图片，可能会留白
//   // (2) Cover: 等比例缩放，让图片铺满整个容器，不会留白，但是有可能会有部分内容显示不全
// }
// Column() {
//   Text()
//     .width('300vp')
//     .height('200vp')
//     .backgroundColor(Color.Pink)
//     .backgroundImage($r('app.media.flower'))
//     .backgroundImagePosition({
//       x: vp2px(150),
//       y: vp2px(100)
//     })
// }
// .padding(20)
// backgroundImagePosition
// 1. 传入对象, 设置位置坐标，背景图片的左顶点
//    { x: 坐标值, y: 坐标值 }
//    注意：坐标值的单位，和宽高的默认单位不同的，显示出来大小会不同
//
// 2. Alignment 枚举，设置一些特殊的位置（中央、左顶点...）
//    Center  TopStart左顶点 TopEnd右顶点 BottomEnd右下...
// Column() {
//   Text()
//     .width(300)
//     .height(200)
//     .backgroundColor(Color.Pink)
//     .backgroundImage($r('app.media.flower'))
//     .backgroundImagePosition({
//       x: 400,
//       y: 300
//     })
//     .backgroundImagePosition(Alignment.BottomEnd)
// }
// .padding(20)

// Column() {
//   Text('我是内容文本')
//     .fontColor(Color.White)
//     .width(300)
//     .height(200)
//     .backgroundColor(Color.Pink)
//       // backgroundImage(加载的背景图片, 是否平铺ImageRepeat枚举)
//     .backgroundImage($r('app.media.flower'), ImageRepeat.XY )
// }
// .padding(20)
// Column() {
//   // 1. 正圆 （头像）
//   Image($r('app.media.cat'))
//     .width(100)
//     .height(100)
//     .borderRadius(50)
//
//   // 2. 胶囊按钮 (左右半圆)
//   Text('今天还没打卡呦~')
//     .width(240)
//     .height(60)
//     .borderRadius(30)
//     .backgroundColor(Color.Pink)
//     .margin({ top: 20 })
// }
// .padding(20)
// }
//设置组件圆角
// Column() {
//   Text('没有圆角')
//     .width(100)
//     .height(60)
//     .backgroundColor(Color.Pink)
//     .margin({ bottom: 30 })
//
//   // 添加圆角：
//   // 1. .borderRadius(数值) 四个角圆角相同
//   // 2. .borderRadius({ 方位词: 值 }) 单独给某个角设置圆角
//   Text('添加圆角')
//     .width(100)
//     .height(60)
//     .backgroundColor(Color.Orange)
//       // .borderRadius(15) // 通过不同数值，可以设置不同大小的圆角
//       // .borderRadius({
//       //   topLeft: 10,
//       //   topRight: 20,
//       //   bottomRight: 30,
//       //   bottomLeft: 40
//       // })
//     .borderRadius({
//       topLeft: 20,
//       bottomRight: 20
//     })
// }
// .padding(20)
    //单边框
    // Column() {
    //   Text('待完善')
    //     .fontColor(Color.Red)
    //     .padding(5)
    //     .border({
    //       width: 1, // 宽度（必须）
    //       color: Color.Red, // 颜色
    //       style: BorderStyle.Dashed // 样式(实线、虚线、点线)
    //     })
    //     .margin({ bottom: 20 })
    //
    //   Text('单边框')
    //     .padding(5)
    //       // 单边框，可以通过 left right bottom top 配置四个方向边框
    //     .border({
    //       width: { left: 1, right: 2 },
    //       color: { left: Color.Red, right: Color.Green },
    //       style: {
    //         left: BorderStyle.Dashed,
    //         right: BorderStyle.Dotted
    //       }
    //     })
    // }
    // .padding(20)

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

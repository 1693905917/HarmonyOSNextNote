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

// // 字符串拼接 + 拼串
// let name: string = '吕布'
// let age: number = 18
// console.log('简介信息:', '姓名' + name)
// console.log('简介信息:', '年纪' + age)
//
// // 注意点: + 两边只要有字符串, 就是拼串的作用 (如果两边都是数字, 就是计算求和的作用)
// let num1: number = 100
// let num2: number = 200
// console.log('总数', num1 + num2)
//模板字符串 `` (支持变量, 更利于字符串拼接)    普通字符串 ''  ""
// let str: string = `hello world`
//
// let name: string = '成小龙'
// let age: number = 18
// let hobby: string = '打拳'
// console.log('简介信息', `姓名: ${name}, 年纪: ${age}岁, 爱好: ${hobby}`)

// let money: string = '10000'
// let money2: number = 500

// + 的两端, 只要有字符串, 就是拼接
// 需要是计算, 必须都是数字 => 将字符串类型, 转成数字
// console.log('总工资', Number(money) + money2)

// let str1: string = '1.1'
// let str2: string = '1.9'
// let str3: string = '1.99a'
// let str4: string = 'a'
//
// // 转数字类型
// // 1. Number(变量) 原样转数字
// console.log('Number', Number(str1)) // 1.1
// console.log('Number', Number(str2)) // 1.9
// console.log('Number', Number(str3)) // NaN
// console.log('Number', Number(str4)) // NaN

// 2. parseInt(变量) 去掉小数部分(取整)
// console.log('parseInt', parseInt(str1)) // 1
// console.log('parseInt', parseInt(str2)) // 1
// console.log('parseInt', parseInt(str3)) // 1
// console.log('parseInt', parseInt(str4)) // NaN

// 3. parseFloat(变量) 保留小数部分
// console.log('parseFloat', parseFloat(str1)) // 1.1
// console.log('parseFloat', parseFloat(str2)) // 1.9
// console.log('parseFloat', parseFloat(str3)) // 1.99
// console.log('parseFloat', parseFloat(str4)) // NaN
// 数字通常用于计算, 字符串通常用于展示
// let money: number = 10000
// // 将数字转字符串, toString()  toFixed()
// // 1. 数据.toString() 原样转字符串
// console.log('toString:', money.toString())
//
// // 2. 数据.toFixed(保留几位小数)  四舍五入
// console.log('toFixed:', money.toFixed())
// console.log('toFixed:', money.toFixed(2))

// 注意点:
// 1. 普通变量, 只能在初始化时渲染, 后续变化了, 也不会引起更新
// 2. 状态变量, 被装饰器修饰, 值的改变, 会 [自动] 引起 界面的刷新

// 组件外的[普通变量] 不需要this即可访问
// let myName: string = '吕布'
// 算数运算符 + - * / %
// console.log('计算结果', 1 + 1)
// console.log('计算结果', 2 - 1)
// console.log('计算结果', 3 * 5)
// console.log('计算结果', 9 / 3)
// console.log('取余', 9 % 2) // 4余1
// console.log('取余', 9 % 5) // 1余4

// 赋值运算符 =
// +=  -=  *=  /=  %= (本质就是一个简写, 对变量本身进行计算, 计算完再赋值回来)
// let num: number = 200
// num *= 2 // num = num * 2
// console.log('num', num)

// let num2: number = 199
// num2 %= 100 // num2 = num2 % 100
// console.log('num2', num2)
// 一元运算符(++  --)
// ++ 作用: 让变量,在原本基础之上加1
// let num: number = 10
// // num++ // 先赋值,后自增
// // ++num // 先自增,后赋值
// console.log('num', num)

// let num1: number = 10
// let res1: number = num1++
// console.log('res1', res1) // 10
// console.log('num1', num1) // 11
//
// let num2: number = 10
// let res2: number = ++num2
// console.log('res2', res2) // 11
// console.log('num2', num2) // 11
//
// let num2: number = 10
// let res2: number = --num2
// console.log('res2', res2) // 9
// console.log('num2', num2) // 9

// 比较运算符 >  <   >=  <=   ==  !=
// let num1: number = 11
// let num2: number = 11
// console.log('判断结果', num1 > num2) // false
// console.log('判断结果', num1 < num2) // false
// console.log('判断结果', num1 >= num2) // true

// == != 判断是否相等(判断数字, 也会用来判断字符串)
// let num1: number = 200
// let num2: number = 201
// console.log('判断结果', num1 == num2)

// 判断密码是否正确
// let password: string = '123456'
// let password2: string = '123456'
// console.log('判断结果', password == password2)

// 1. 定义一个数组
// let names: string[] = ['刘小备', '吕小布', '张大飞']
// console.log('整个数组',names)
//
// // 2. 数组取值(通过下标)
// console.log('数组取值', names[1])
// console.log('数组长度', names.length)
//
// // 3. 数组修改(通过下标)
// names[2] = '赵云'
// console.log('修改数组', names)
//
// // 定义一个数组
// let songs: string[] = ['告白气球', '洋葱', '吻别']

// 添加
// 1. 往开头新增 unshift(新增的值)  返回操作后的数组的长度
// songs.unshift('彩虹')
// console.log('返回数组长度', songs.unshift('七里香'))
// console.log('数组songs', songs)

// 2. 往结尾新增 push(新增的值)  返回操作后的数组的长度
// songs.push('光辉岁月', '海阔天空')
// console.log('数组', songs)

// 删除
// 1. 从开头删 shift
// console.log('返回删除的项', songs.shift())
// console.log('返回删除的项', songs.shift())
// console.log('数组', songs)

// 2. 从结尾删 pop
// songs.pop()
// songs.pop()
// songs.pop()
// console.log('数组', songs)

// 开头(S): unshift(开头增)  shift(开头删)
// 结尾(P): push(结尾增)  pop(结尾删)

// 定义一个数组
// let songs: string[] = ['告白气球', '洋葱', '吻别', '双节棍', '曹操']
// splice 在任意位置进行删除或新增内容
// 数组名.splice(操作的起始位置, 删除几个, 新增的项1, 新增的项2, ...)

// 1. 删除(任意位置)
// songs.splice(2, 2)
// console.log('数组songs', songs)

// 2. 新增(任意位置)
// songs.splice(1, 0, '彩虹') // 新增

// 3. 替换(删了一项, 又加了一项)
// songs.splice(1, 1, '彩虹')
// console.log('数组songs', songs)
// 分支语句 - if 语句
// 1. 单分支 (满足条件, 就会执行一段代码)
// if (逻辑条件) {
//   条件成立时执行的代码
// }
// 2. 双分支 (满足条件, 会执行A代码, 不满足条件, 会执行B代码)
// if (逻辑条件) {
//   条件成立时执行的代码
// }
// else {
//   条件不成立时执行的代码
// }

// let score: number = 92
//
// if (score >= 90) {
//   console.log('奖励', '一台游戏机')
// }
// else {
//   console.log('惩罚', '写个检讨, 分析出错原因')
// }
// let score: number = 35
//
// if (score >= 90) {
//   console.log('评价:', '优秀')
// }
// else if (score >= 80) {
//   console.log('评价:', '良好')
// }
// else if (score >= 60) {
//   console.log('评价:', '及格')
// }
// else {
//   console.log('评价:', '不及格')
// }
// 输入水果名称, 查询价格 (精确匹配)
// let fruit: string = '榴莲'
//
// switch (fruit) {
//   case '苹果':
//     console.log('苹果价格:', '2.8元一斤')
//     break
//   case '香蕉':
//     console.log('香蕉价格:', '5.5元一斤')
//     break
//   case '西瓜':
//     console.log('西瓜价格:', '1.5元一斤')
//     break
//   default:
//     console.log('提示:', '尊敬的用户, 该水果不存在')
// }

// 三元条件表达式
// 语法: 条件 ? 条件成立执行的表达式 : 条件不成立执行的表达式
// @State count: number = 5
// let num1: number = 40
// let num2: number = 30
//
// // let max: number = num1 > num2 ? num1 : num2
// // console.log('三元条件表达式', max)
//
// let res: number = num1 > num2 ? 3 * 5 : 2 + 6
// console.log('三元条件表达式', res)
// @Entry
// while循环: 可以重复的执行一段代码
// while (条件) {
//   需要循环执行的语句
// }

// 死循环: 没有结束条件
// while (true) {
//   console.log('while', '重复执行的代码')
// }

// 实际开发真正需要的, 有次数的循环
// 三要素: 变量初始值; 判断条件; 变化量(变量要变)
// let i: number = 1
// while (i < 10) {
//   console.log('小于10成立', '执行代码', i) // 9
//   i++ // 10
// }

// 需求1: 打印1-100的数字,  1, 2, 3, 4, 5 ... 100
// 三要素: 变量起始值; 判断条件; 变化量;
// let i: number = 1
// while (i <= 100) {
//   console.log('i的值:', i)
//   i++
// }

// let i: number = 100
// while (i >= 1) {
//   console.log('i的值:', i)
//   i--
// }

// 需求2: 打印 1-100 中的偶数
// let i: number = 1
// while (i <= 100) {
//   if (i % 2 === 0) {
//     console.log('i的值:', i)
//   }
//   i++
// }

// 需求3: 计算 1-10 的数字的 累加和,  1 + 2 + 3 + 4 + 5 ... + 10
// 三要素: 变量起始值; 判断条件; 变化量;
// let i: number = 1
// let sum: number = 0 // 存储累加的结果
//
// while (i <= 10) {
//   console.log('需要累加的数字:', i)
//   // 每次执行下面这行代码, 就会进行一次累加, 并且更新累加的结果
//   sum = sum + i
//   i++
// }
// console.log('累加结果:', sum)
// for (初始值; 循环条件; 变化量) {
//   重复执行的代码(循环体)
// }

// 需求: 打印 1-10 →  从 1 开始, 循环到 10 结束
// for (let i: number = 1; i <= 10; i++) {
//   console.log('for循环', i)
// }


// 1-10的和, 从1开始,循环到10
// let sum = 0
// for (let i: number = 1; i <= 10; i++) {
//   console.log('for', i)
//   sum = sum + i // sum += i
// }
// console.log('求和', sum)

// 退出循环:
// 1. break: 终止整个循环 (后面的循环不执行了)
// 2. continue: 退出当前这一次循环, 继续执行下一次循环 (包子当前这个不吃了, 吃下一个)

// 1. 一共8个包子, 吃到第5个, 饱了
// for (let i: number = 1; i <= 8; i++) {
//   if (i == 5) {
//     console.log('拿起了第5个包子, 发现吃不动了')
//     // 终止当前的循环 (本次循环后面的代码不执行了, 且后续循环的代码也不执行了, 跳出循环)
//     break
//   }
//   console.log('吃包子:', `第${i}个`)
// }
//
// console.log('这是循环外的代码')


// 2. 一个8个包子, 吃到第5个, 坏了
// for (let i: number = 1; i <= 8; i++) {
//   if (i == 5) {
//     console.log('拿起了第5个包子, 发现坏了')
//     // 当前这次循环不继续执行了, 继续执行下一次循环
//     continue
//   }
//   console.log('吃包子:', `第${i}个`)
// }
//
// console.log('这是循环外的代码')

// 遍历数组: 利用循环, 依次按顺序访问数组的每一项
// let names: string[] = ['大强', '老莫', '小龙', '大黑', '小黄']
//
// // 数组的最后一项 names[names.length - 1]
// // for (let i: number = 0; i < names.length; i++) {
// //   console.log('名字是', names[i])
// // }
//
// for (let item of names) {
//   console.log('数组中的每一项', item)
// }
// 对象数组 => 数组中包裹存储了很多的对象
// 1. 约定接口 (对象的类型)
interface Student {
  stuId: number
  name: string
  gender: string
  age: number
}

// 2. 基于接口, 构建对象数组
let stuArr: Student[] = [
  { stuId: 1, name: '小丽', gender: '女', age: 12 },
  { stuId: 2, name: '小红', gender: '女', age: 11 },
  { stuId: 3, name: '大强', gender: '男', age: 12 },
  { stuId: 4, name: '阿明', gender: '男', age: 13 },
]
// 包括对象的复杂数据,如果想要在日志中打印, 需要调用一个方法, 转成字符串格式
// JSON.stringify(复杂类型)  对象/数组
// console.log('学生数组', JSON.stringify(stuArr))

// 3. 具体使用 (访问 →  通过下标)
// console.log('小红', stuArr[1].name)
// console.log('小红', JSON.stringify(stuArr[1]))

// 4. 也支持遍历 for... of, 普通for
for (let item of stuArr) {
  console.log('每一项', JSON.stringify(item))
}


@Entry
@Component
struct Index {
  // 库存, 有库存 > 0
  @State count: number = 0  // 无库存

  build() {

  }
}
// Column() {
//   Column() {
//     // 底部菜单
//     Row({space: 10}) {
//       // 左侧菜单
//       Row() {
//         Column({space: 5}) {
//           Image($r('app.media.ic_dianpu'))
//             .width(20)
//           Text('店铺')
//             .fontSize(10)
//             .fontColor('#262626')
//         }
//         Column({space: 5}) {
//           Image($r('app.media.ic_kefu'))
//             .width(20)
//             .fillColor('#666')
//           Text('客服')
//             .fontSize(10)
//             .fontColor('#262626')
//         }
//         Column({space: 5}) {
//           Image($r('app.media.ic_cart2'))
//             .width(20)
//             .fillColor('#666')
//           Text('购物车')
//             .fontSize(10)
//             .fontColor('#262626')
//         }
//       }
//       .layoutWeight(1)
//       .justifyContent(FlexAlign.SpaceBetween)
//
//       // 根据库存控制不同按钮的展示
//       if (this.count > 0) {
//         // 右侧按钮 -- 可以购买
//         Row({space: 5}) {
//           Button('加入购物车')
//             .width(105)
//             .height(40)
//             .backgroundColor('#ffcc00')
//             .fontSize(14)
//             .fontWeight(600)
//           Button('立即购买')
//             .width(105)
//             .height(40)
//             .backgroundColor('#f92c1b')
//             .fontSize(14)
//             .fontWeight(600)
//         }
//       }
//       else {
//         // 右侧按钮 -- 不能购买
//         Row() {
//           Button('查看类似商品')
//             .width(170)
//             .height(40)
//             .backgroundColor('#ffcc00')
//             .fontSize(14)
//             .fontWeight(600)
//         }
//       }
//     }
//     .width('100%')
//     .height(60)
//     .backgroundColor('#f7f7f7')
//     .padding({left: 20, right: 10})
//
//     // 消息提示：库存 <= 0 显示，否则隐藏
//     if (this.count <= 0) {
//       Row() {
//         // 左侧
//         Row({ space: 5 }) {
//           Image($r('app.media.ic_lingdang'))
//             .width(12)
//             .fillColor('#de6a1c')
//           Text('该商品暂时没有库存，看看相似商品吧')
//             .fontSize(10)
//             .fontColor('#de6a1c')
//         }
//
//         // 右侧
//         Image($r('app.media.ic_shangjiantou'))
//           .width(15)
//           .padding(3)
//           .fillColor('#d0662c')
//           .backgroundColor('rgba(0,0,0,0.1)')
//           .borderRadius(8)
//       }
//       .width('100%')
//       .height(36)
//       .backgroundColor('#fbf9da')
//       .position({ x: 0, y: '-36' })
//       .padding({ left: 20, right: 20 })
//       .justifyContent(FlexAlign.SpaceBetween)
//     }
//
//   }
//   .position({x:0,y:'100%'})
//   .translate({y: '-100%'})
// }
// .width('100%')
// .height('100%')
// .padding({bottom:20})
// .backgroundColor('#f2f2f2')

// @Entry
// @Component
// struct Index {
//   @State age: number = 15
//   build() {
//     // 条件渲染: 不同的条件, 控制不同的UI界面展示
//     Column() {
//       if (this.age < 18) {
//         Text('未成年, 18岁以下')
//       }
//       else if (this.age < 60) {
//         Text('成年人, 18~60岁')
//       }
//       else {
//         Text('老年人, 60+')
//       }
//       Button('长大').onClick(() => {
//         this.age += 5
//       })
//       Text(`当前年纪: ${this.age}`)
//     }
//   }
// }
// Column() {
//   Row() {
//     Text('-')
//       .width(40)
//       .height(40)
//       .border({width: 2, color: '#999', radius: {topLeft: 3, bottomLeft:3}})
//       .textAlign(TextAlign.Center)
//       .onClick(() => {
//         // 如果数字大于1, 可以减
//         if (this.count > 1) {
//           this.count--
//         }
//         // 否则, 给个提示
//         else {
//           // console.log('提示', '最小值为1, 不能再减了')
//           AlertDialog.show({
//             message: '最小值为1, 不能再减了'
//           })
//         }
//       })
//     Text(this.count.toString())
//       .height(40)
//       .padding({left: 20, right: 20 })
//       .border({width: {top: 2, bottom: 2}, color: '#999'})
//       .fontSize(14)
//     Text('+')
//       .width(40)
//       .height(40)
//       .border({width: 2, color: '#999', radius: {topRight: 3, bottomRight: 3}})
//       .textAlign(TextAlign.Center)
//       .onClick(() => {
//         this.count++
//       })
//   }
// }
// .padding(20)

// // 声明状态 颜色 点赞数
// @State myColor: string = '#7e7e7e'
// @State myCount: number = 8888

// Column() {
//   Column({ space: 8}) {
//     // 图片
//     Image($r('app.media.eyes')).width('100%').borderRadius({topLeft: 6, topRight: 6})
//     // 标题文字
//     Text('考眼力又来了你能看到几只鸭子？')
//       .fontSize(14).lineHeight(18).padding({left: 5, right: 5})
//     // 来源和点赞
//     Row(){
//       Text() {
//         ImageSpan($r('app.media.avatar'))
//           .width(16).margin({right: 3})
//         Span('视野联行眼镜')
//           .fontSize(12).fontColor('#7e7e7e')
//       }
//       Row() {
//         Image($r('app.media.ic_love'))
//           .margin({right: 3}).width(14).fillColor(this.myColor)
//         Text(this.myCount.toString()).fontSize(12).fontColor(this.myColor)
//       }
//       .onClick(() => {
//         // 修改数字
//         this.myCount += 1
//         // 修改颜色
//         this.myColor = '#ff0000'
//       })
//     }
//     .width('100%').justifyContent(FlexAlign.SpaceBetween).padding({left: 5, right: 5})
//   }
//   .width('50%')
// }
// .padding(20)
// // [组件的]状态变量  this.xxx
// @State count: number = 1
//   Row() {
//     Button('-')
//       .onClick(() => {
//         this.count = this.count - 1
//       })
//     Text(this.count.toString()).margin(10)
//     Button('+')
//       .onClick(() => {
//         // 只要修改了状态变量, 自动触发界面(视图)的更新
//         this.count = this.count + 1
//       })
//   }
//   .padding(20)

// // 组件内的[普通变量] this.xxx
// myAge: number = 18
//
// // 组件内的[状态变量] this.xxx
// @State myMsg: string = 'hello 黑马'
//
// build() {
//   Column() {
//     Text(myName).onClick(() => {
//       myName = '貂蝉'
//       console.log('myName', myName)
//     })
//     Text(this.myAge.toString()).onClick(() => {
//       this.myAge = 200
//       console.log('myAge', this.myAge)
//     })
//     Text(this.myMsg).onClick(() => {
//       this.myMsg = '你好 状态'
//     })
//   }
// }

// Row() {
//   Column() {
//     Button('点我,显示对话框')
//       .onClick(() => {
//         // console.log('消息:', '你好点击事件')
//         // 弹个框
//         AlertDialog.show({
//           message: '你好~ 这是个弹框'
//         })
//       })
//     Text('我是文本')
//       .onClick(() => {
//         // 弹个框
//         AlertDialog.show({
//           message: '你好~ 我是文本组件'
//         })
//       })
//   }
//   .width('100%')
// }
// .height('100%')
// // 层叠布局
//     // Stack({
//     //   alignContent: Alignment.Bottom
//     // }) {
//     //   Text('大儿子')
//     //     .width(250)
//     //     .height(250)
//     //     .backgroundColor(Color.Green)
//     //     .zIndex(3)
//     //   Text('二儿子')
//     //     .width(150)
//     //     .height(150)
//     //     .backgroundColor(Color.Orange)
//     //     .zIndex(4)
//     //   Text('三儿子')
//     //     .width(50)
//     //     .height(50)
//     //     .backgroundColor(Color.Yellow)
//     //     .zIndex(5)
//     // }
//     // .width(300)
//     // .height(600)
//     // .backgroundColor(Color.Pink)

// // position绝对定位：可以控制组件位置，可以实现层叠效果
// // 语法：
// // .position({
// //   x: 50,
// //   y: 50
// // })
// // 特点：
// // 1. 相对于父组件左顶点进行偏移（调整位置）
// // 2. 原本的位置不占了，且可以任意调整位置，不影响其他元素
//
// // 后面的组件明显层次更高，会盖住前面的组件
// // 需求：不动结构的情况下，调整组件的层级 .zIndex(数字)
// Column() {
//
//   Text('大儿子')
//     .width(80)
//     .height(80)
//     .backgroundColor(Color.Green)
//     .zIndex(3)
//   Text('二儿子定位')
//     .width(80)
//     .height(80)
//     .backgroundColor(Color.Yellow)
//     .position({
//       x: 50,
//       y: 50
//     })
//     .zIndex(4)
//   Text('三儿子')
//     .width(80)
//     .height(80)
//     .backgroundColor(Color.Orange)
//     .zIndex(2)
// }
// .width(300)
// .height(300)
// .backgroundColor(Color.Pink)

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

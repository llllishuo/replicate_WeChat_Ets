import { MsgData } from '../../../common/data/MsgData'
import router from '@ohos.router';
import { MeData } from '../../../common/data/MeData'
import { TipList } from '../../../common/data/TipList'
import { getTipList, addTipToList, updateTips,getIsLately } from '../../../common/data/model/MsgDataModel'

@Entry
@Component
struct MsgMain {
  meFrom: MeData = router.getParams()?.['meFrom']
  tipValue: string
  newTip: TipList
  item: MsgData = router.getParams()?.['item']
  isUpdate: number = 0
  colorType: string = router.getParams()?.['colorType']
  //true--clear   false--dark
  @State themeClearOrDark: boolean =  router.getParams()?.['themeClearOrDark']
  //主题类型
  themeColor: string = this.themeClearOrDark ? "clear" : "dark"
  //导航颜色
  colorBorder: string = this.themeClearOrDark ? "#404040" : "#111"
  //背景颜色
  colorMainBackground: string = this.themeClearOrDark ? "#202020" : "#111"

  nowTime: string

  scroller: Scroller = new Scroller()

  onPageShow(){
    //滚动条来到底端
    this.scroller.scrollEdge(Edge.Bottom)
  }

  aboutToAppear(){

    //设置当前时间
    let date = new Date()
    this.nowTime = date.getFullYear() + "年"
    + (date.getMonth() + 1) + "月"
    + date.getDate() + "日 "
    +  date.getHours() +":"+date.getMinutes()
  }
  //封装数据发送请求
  updateTimeAndRequest() {
    let date = new Date()
    if (this.tipValue !== undefined) {
//      console.info("封装数据:")
      //封装数据
      let tipTime = date.getFullYear() + "年"
      + (date.getMonth() + 1) + "月"
      + date.getDate() + "日 "
      +  date.getHours() +":"+date.getMinutes()
      this.newTip = new TipList(this.meFrom.id, this.tipValue, tipTime)
      this.item.tips = addTipToList(this.newTip, this.item.tips)
//      console.info(JSON.stringify(this.item.tips))
      //标志码
      this.isUpdate++
//      console.info('开始刷新页面,请求数据为:')
//      console.info(JSON.stringify(this.item))
      //刷新页面
      router.replace({
        url: 'pages/mainPage/msgPage/MsgMain',
        params: {
          meFrom: this.meFrom,
          colorType: this.colorType,
          item: this.item,
          isRequest: true
        },
      });
    }
  }
  build() {
    Column() {
      Row() {
        Text("<")
          .align(Alignment.Center)
          .fontColor(this.colorType)
          .fontSize(30)
          .width("10%")
          .height("100%")
          .minFontSize(35)
          .maxFontSize(35)
          .onClick(() => {
            //更新数据
            if (this.isUpdate !== 0) {
              this.item = updateTips(this.newTip, this.item)
              //              console.info("更新数据...")
            }
            //            console.info("返回主页面")
            router.push({
              url: 'pages/Index',
              params: {
                msgList: this.item,
                isRequest: true
              }
            })

          })
        Text(this.item.name)
          .fontColor(this.colorType)
          .align(Alignment.Center)
          .minFontSize(30)
          .maxFontSize(35)
          .maxLines(1)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .width("80%")
          .height("100%")
        Text("***")
          .fontColor(this.colorType)
          .align(Alignment.Center)
          .width("10%")
          .height("100%")
          .minFontSize(30)
          .maxFontSize(30)

      }
      .backgroundColor(this.colorBorder)
      .width("100%")
      .height("8%")

      List({scroller: this.scroller}) {
        ForEach(this.item.tips, (item) => {
          ListItem() {
            tipList({
              isMe: this.meFrom.id === item.id ? true : false,
              item: item,
              headImg: this.meFrom.id === item.id ? this.meFrom.headImage : this.item.headImage,
              colorType: this.colorType,
              nowTime: this.nowTime
            })
          }
        })
      }
      .backgroundColor(this.colorMainBackground)
      .edgeEffect(EdgeEffect.Spring)
      .scrollBar(BarState.On)
      .height("84%")
      .width("100%")

      Stack({ alignContent: Alignment.Start }) {
        Row() {
          Image("/common/media/userImage/headImg.png")
            .constraintSize({
              maxWidth: 70,
              maxHeight: 70
            })
            .height("100%")
            .width("10%")
          TextInput({ text: this.tipValue })
            .fontColor(this.colorType)
            .fontSize(30)
            .border({ width: 5, color: Color.Gray })
            .height("100%")
            .width("70%")
            .onChange((value: string) => {
              this.tipValue = value
            })
            .onSubmit((enterKey) => {
              this.updateTimeAndRequest()
            })
            .onKeyEvent((event: KeyEvent) => {
              if (event.keyCode === 2054 || event.keyCode === 66) {
                this.updateTimeAndRequest()
              }
            })
          Image("/common/media/userImage/headImg.png")
            .constraintSize({
              maxWidth: 70,
              maxHeight: 70
            })
            .height("100%")
            .width("10%")
          Image("/common/media/userImage/headImg.png")
            .constraintSize({
              maxWidth: 70,
              maxHeight: 70
            })
            .height("100%")
            .width("10%")
        }

      }
      .backgroundColor(this.colorBorder)
      .width("100%")
      .height("8%")
    }
  }
}


@Component
struct tipList {

  //true为自己 false为对方
  isMe: boolean
  item: any
  headImg: string
  t: string
  tipLength: number
  colorType: string




  nowTime: string
  IsLately: boolean


  aboutToAppear() {

    //    console.info(JSON.stringify(this.item.tips))
    this.t = this.item.tips
    let i = this.t.length
    this.tipLength = i / 18
    //    console.info((i/18+1)+"")
    this.IsLately = getIsLately(this.item.tipTime,this.nowTime)



  }

  build() {
    Column() {
      Row() {
        Text(this.item.tipTime)
//          .visibility(this.IsLately? Visibility.Visible :Visibility.None)
          .fontColor(this.colorType)
      }

      Flex({
        direction: !this.isMe ? FlexDirection.Row : FlexDirection.RowReverse,
        justifyContent: FlexAlign.Center,
        alignItems: ItemAlign.Center
      }) {
        Column() {
          Image(this.headImg)
        }
        .constraintSize({
          maxWidth: 70,
          maxHeight: 70
        })
        .align(Alignment.Start)
        .width("10%")
        .height("60%")

        Row() {
          Text(this.item.tips)
            .minFontSize(20)
            .maxFontSize(30)
            .backgroundColor("#259c5c")

            .borderRadius(3)
        }
        .borderStyle(BorderStyle.Dotted)
        .margin(10)
        .direction(!this.isMe ? Direction.Ltr : Direction.Rtl)
        .width("90%")
      }
      .constraintSize({
        maxWidth: "100%",
        minHeight: "10%",
        maxHeight: 10 + 5 * this.tipLength + "%"
      })
      .width("100%")
    }

  }
}



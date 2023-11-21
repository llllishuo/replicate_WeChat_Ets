import router from '@ohos.router';
import { MsgData } from '../../common/data/MsgData'
import {
  initializeOnStartup,
  getTime,
  getDay,
  getNewTip,
  updateNewTime
} from '../../common/data/model/MsgDataModel'
import { MeData } from '../../common/data/MeData'

@Component
struct WeChatList {
  @Link meFrom: MeData
  msgList: MsgData[]
  colorType: string
  isRequest: boolean
  themeClearOrDark: boolean

  aboutToAppear() {
    //    console.info("遍历MsgList:")
    //    console.info(JSON.stringify(this.msgList))
  }

  build() {
    List() {
      ForEach(this.msgList, (item, value) => {
        ListItem() {
          MsgList({
            item: item,
            colorType: this.colorType,
            meFrom: $meFrom,
            isRequest: this.isRequest,
            value: value,
            themeClearOrDark: this.themeClearOrDark,

          })
        }
        .align(Alignment.Start)
        //        .border({width: 5,color: Color.White})
        .width("100%")
        .height("15%")
      })
    }
    .edgeEffect(EdgeEffect.Spring)
    .divider({ strokeWidth: 0.5, startMargin: "15%", color: "#2c2c2c" })
    .scrollBar(BarState.On)
    .height("100%")
    .width("100%")
  }
}

@Component
struct MsgList {
  @Link meFrom: MeData
  isRequest: boolean
  colorType: string
  item: MsgData
  time: string
  textWidthX: number
  textWidthY: number
  value: number
  themeClearOrDark: boolean



  aboutToAppear() {
    //    console.info("定位:"+ this.value+ ",id:"+ this.item.id)
    //    console.info("当前数据为:"+JSON.stringify(this.item))
    if (this.isRequest) {
      this.item = updateNewTime(this.item)
      //      console.info("新时间:"+JSON.stringify(this.item.newTime))
    }
    this.time = getTime(this.item.newTime)
    let date = new Date()
    let time = this.item.newTime.split(" ", 2)
    let i = getDay(time[0], date)
    if (i === -2) {
      this.textWidthX = 33
      this.textWidthY = 100 - this.textWidthX
    } else {
      this.textWidthX = 20
      this.textWidthY = 80
    }

    if (Number(this.item.id) / 100 - 2 >= 0 && Number(this.item.id) / 100 - 2 < 1) {
      this.item.newTips = this.item.name + ":" + this.item.newTips
    }

    //    console.info("最新消息为:"+this.item.newTips+ ",时间为:"+ this.item.newTime)

  }

  build() {

    Row({ space: 5 }) { /*this.item.headImage*/
      Column() {
        Image(this.item.headImage)
          .sourceSize({
            width: 30
          , height: 30
          })

          .width("75%")
          .height("75%")
          .objectFit(ImageFit.Fill)

      }
      .justifyContent(FlexAlign.Center)
      .width("15%")
      .height("80%")

      Column() {
        Row() {
          Text(this.item.name)
            .constraintSize({ maxWidth: "80%" })
            .maxLines(1)
            .textOverflow({ overflow: TextOverflow.Ellipsis })
            .fontColor(this.colorType)
            .fontSize(30)
            .height("100%")
            .width(this.textWidthY + "%")

          Text(this.time)
            .align(Alignment.End)
            .constraintSize({ minWidth: "20%" })
            .fontColor("#404040")
              //            .border({width: 5,color: Color.Green})
            .width(this.textWidthX + "%")
            .height("100%")
        }
        .width("100%")
        .height("60%")
        //        .border({width: 5,color: Color.Blue})
        Row() {
          Text(this.item.newTips)
            .maxLines(1)
            .textOverflow({ overflow: TextOverflow.Ellipsis })
            .fontSize(20)
            .fontColor("#2c2c2c")
            .width("100%")
            .height("100%")

        }
        .width("100%")
        .height("40%")

      }
      .width("80%")
      .height("76%")
    }
    .justifyContent(FlexAlign.SpaceEvenly)


    .onClick(() => {
      router.push({
        url: 'pages/mainPage/msgPage/MsgMain',
        params: {
          meFrom: this.meFrom,
          colorType: this.colorType,
          item: this.item,
          themeClearOrDark: this.themeClearOrDark
        }

      })

    })
  }
}

export default WeChatList
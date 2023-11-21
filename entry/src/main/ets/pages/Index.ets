import MainBorderBelow from './mainPage/MainBorderBelow'
import MainBorderTop from './mainPage/MainBorderTop'
import WeChatList from './mainPage/WechatList'
import MailList from './mainPage/MailList'
import FindList from './mainPage/FindList'
import MeList from './mainPage/MeList'
import router from '@ohos.router';
import {MeData} from '../common/data/MeData'
import {initializeForMe} from '../common/data/model/MeDataModel'
import {initializeOnStartup,updateMsgDataList} from  '../common/data/model/MsgDataModel'
import {MsgData} from '../common/data/MsgData'
@Entry
@Component
struct Index {
  @State mainStatus: number = 0
  textUpColor: string = "#3eb575"
  textOffColor: string = "#fff"
  //true--clear   false--dark
  @State themeClearOrDark: boolean = false
  //主题类型
  themeColor: string = this.themeClearOrDark ? "clear" : "dark"
  //导航颜色
  colorBorder: string = this.themeClearOrDark ? "#404040" : "#111"
  //背景颜色
  colorMainBackground: string = this.themeClearOrDark ? "#202020" : "#111"
  //字体颜色
  colorType: string = this.themeClearOrDark ? "#000000" : "#FFFFFF"


  @State meFrom: MeData= initializeForMe()
  isRequest: boolean = router.getParams()?.['isRequest']===undefined?  false:true
  requestMsgList: MsgData[] = !this.isRequest? initializeOnStartup():updateMsgDataList(router.getParams()?.['msgList'],initializeOnStartup())
  msgList: MsgData[] = initializeOnStartup()

  aboutToAppear(){
//    console.info(this.isRequest? "请求数据":"非请求数据")
//    console.info(JSON.stringify(router.getParams()?.['msgList']))
  }

  //  ▪▪••⊙⊙••☆☆✦✦
  build() {

    Column() {
      //上导航栏
      MainBorderTop({ mainStatus: $mainStatus, themeClearOrDark: this.themeClearOrDark, colorType: this.colorType })
      //内容模块
      if (this.mainStatus === 0) {
        //消息列表
        WeChatList({ colorType: this.colorType ,meFrom: $meFrom,msgList: this.isRequest? this.requestMsgList: this.msgList,isRequest: this.isRequest})
          .width("100%")
          .height("83%")
      }
      if (this.mainStatus === 1) {
        MailList({ colorType: this.colorType, colorBorder: this.colorMainBackground })
          .width("100%")
          .height("83%")
      }
      if (this.mainStatus === 2) {
        FindList({ colorType: this.colorType })
          .width("100%")
          .height("83%")
      }
      if (this.mainStatus === 3) {
        MeList({ colorType: this.colorType })
          .width("100%")
          .height("83%")
      }
      //下导航栏
      MainBorderBelow({ mainStatus: $mainStatus, themeClearOrDark: this.themeClearOrDark })

    }
    .backgroundColor(this.colorMainBackground)
    .height("100%")
    .width("100%")
  }
}
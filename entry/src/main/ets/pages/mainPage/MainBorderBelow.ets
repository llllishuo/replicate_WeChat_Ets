import { RowsValue } from './RowsValue'
@Component
struct MainBorderBelow {
  @Link mainStatus: number

  textUpColor: string = "#3eb575"
  textOffColor: string = "#fff"
  //true--clear   false--dark
  @Prop themeClearOrDark: boolean
  themeColor: string = this.themeClearOrDark? "clear":"dark"
  colorBorder: string= this.themeClearOrDark? "#404040":"#111"
  colorMainBackground: string = this.themeClearOrDark? "#fff":"#111"

  build(){

    //下导航栏
    Stack({alignContent: Alignment.BottomStart}) {
      Flex({ direction: FlexDirection.Row, justifyContent: FlexAlign.SpaceAround, alignItems: ItemAlign.Center }) {
        //微信
        Column(){
          Image(this.mainStatus===0? "/common/media/"+this.themeColor+"Theme/img/wechat_B.png":"/common/media/"+this.themeColor+"Theme/img/wechat_A.png")
            .height("30%")
            .width("25%")
            .objectFit(ImageFit.Fill)

          //              .sourceSize({width: 28,height: 28})
          Text("微信")
            .align(Alignment.Center)
            .fontSize(15)
            .width("100%")
            .height("25%")
            .fontColor(this.mainStatus===0? this.textUpColor:this.textOffColor)
        }
        .justifyContent(FlexAlign.Center)
        .alignItems(HorizontalAlign.Center)
        .height("100%")
        .width("25%")
        .onClick(()=>{
          this.mainStatus=0;
        })
        //通讯录
        Column(){
          Image(this.mainStatus===1? "/common/media/"+this.themeColor+"Theme/img/mail_B.png":"/common/media/"+this.themeColor+"Theme/img/mail_A.png")
            .height("30%")
            .width("25%")
            .objectFit(ImageFit.Fill)
          //              .sourceSize({width: 28,height: 28})
          Text("通讯录")
            .align(Alignment.Center)
            .fontSize(15)
            .width("100%")
            .height("25%")
            .fontColor(this.mainStatus===1? this.textUpColor:this.textOffColor)
        }
        .justifyContent(FlexAlign.Center)
        .alignItems(HorizontalAlign.Center)
        .height("100%")
        .width("25%")
        .onClick(()=>{
          this.mainStatus=1;
        })
        //发现
        Column(){
          Image(this.mainStatus===2? "/common/media/"+this.themeColor+"Theme/img/find_B.png":"/common/media/"+this.themeColor+"Theme/img/find_A.png")
            .height("30%")
            .width("25%")
            .objectFit(ImageFit.Fill)
          //              .sourceSize({width: 28,height: 28})
          Text("发现")
            .align(Alignment.Center)
            .fontSize(15)
            .width("100%")
            .height("25%")
            .fontColor(this.mainStatus===2? this.textUpColor:this.textOffColor)
        }
        .justifyContent(FlexAlign.Center)
        .alignItems(HorizontalAlign.Center)
        .height("100%")
        .width("25%")
        .onClick(()=>{
          this.mainStatus=2;
        })
        //我
        Column(){
          Image(this.mainStatus===3? "/common/media/"+this.themeColor+"Theme/img/me_B.png":"/common/media/"+this.themeColor+"Theme/img/me_A.png")
            .height("30%")
            .width("25%")
            .objectFit(ImageFit.Fill)
          //              .sourceSize({width: 28,height: 28})
          Text("我")
            .align(Alignment.Center)
            .fontSize(15)
            .width("100%")
            .height("25%")
            .fontColor(this.mainStatus===3? this.textUpColor:this.textOffColor)
        }
        .justifyContent(FlexAlign.Center)
        .alignItems(HorizontalAlign.Center)
        .height("100%")
        .width("25%")
        .onClick(()=>{
          this.mainStatus=3;
        })
      }

    }
    .height("10%")
    .width("100%")
    .backgroundColor(this.colorBorder)
    .opacity(0.4)
    //      .border({width: 10,color: Color.White})
  }

}
export default MainBorderBelow
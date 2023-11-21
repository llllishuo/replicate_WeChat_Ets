@Component
struct MainBorderTop {
  @Link mainStatus: number

  //true--clear   false--dark
  @Prop themeClearOrDark: boolean
  themeColor: string = this.themeClearOrDark ? "clear" : "dark"
  colorBorder: string = this.themeClearOrDark ? "#404040" : "#111"
  colorMainBackground: string = this.themeClearOrDark ? "#fff" : "#111"
  //字体颜色
  colorType: string = this.themeClearOrDark ? "#000000" : "#FFFFFF"
  build() {
    //上导航栏
    Stack({ alignContent: Alignment.TopStart }) {
      Flex({ direction: FlexDirection.Row, justifyContent: FlexAlign.SpaceAround, alignItems: ItemAlign.Center }) {
        if (this.mainStatus === 0) {
          Text("  * *")
            .align((Alignment.Start))
            .fontSize(27)
            .width("25%")
            .height("50%")
            .fontColor(this.colorType)
          Text("微信")
            .align((Alignment.Center))
            .maxFontSize(25)
            .minFontSize(23)

            .width("50%")
            .height("50%")
            .fontColor(this.colorType)
          Row(){
            Image("/common/media/" + this.themeColor + "Theme/wechatExtend.png")

              .align(Alignment.End)
              .objectFit(ImageFit.Contain)
              .width("50%")
              .height("47%")
          }
          .width("25%")
          .justifyContent(FlexAlign.End)


        }
        if (this.mainStatus === 1) {
          Text(" ")
            .fontSize(20)
            .width("25%")
            .height("50%")
            .fontColor(Color.White)
          Text("通讯录")
            .align(Alignment.Center)
            .maxFontSize(25)
            .minFontSize(23)

            .width("50%")
            .height("47%")
            .fontColor(this.colorType)
          Row(){

            Image("/common/media/" + this.themeColor + "Theme/mailExtend.png")
              .objectFit(ImageFit.Contain)
              .width("45%")
              .height("40%")
          }
          .width("25%")
          .justifyContent(FlexAlign.End)


        }
        if (this.mainStatus === 2) {
          Text("发现")
            .align((Alignment.Center))
            .maxFontSize(25)
            .minFontSize(23)

            .width("100%")
            .height("50%")
            .fontColor(this.colorType)

        }

      }.height("100%")
    }
    .height("7%")
    .width("100%")
    .backgroundColor(this.colorBorder)
    .opacity(0.4)
  }
}

export default MainBorderTop
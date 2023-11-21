@Component
struct FindList {

  colorType: string

  build() {
    Row() {

      List({space: 10}) {
        ListItem() {
          Row(){
            Flex({ justifyContent: FlexAlign.Center, direction: FlexDirection.Column, alignItems: ItemAlign.Center }) {
              Image("/common/media/userImage/headImg.png")
                .width("50%")
                .height("40%")
            }

            .width("13%")
            .height("100%")
            Row(){
              Text("朋友圈")
                .fontColor(this.colorType)
                .maxFontSize(22)
                .minFontSize(15)
                .align(Alignment.Start)
                .fontColor(this.colorType)
            }
            .width("80%")
            .height("100%")
            Flex({ justifyContent: FlexAlign.Center, direction: FlexDirection.Column, alignItems: ItemAlign.Center }) {
              Text(">")
                .fontColor(this.colorType)
                .fontSize(30)
            }
            .width("7%")
            .height("100%")
          }
        }
        .width("100%")
        .height("10%")
        ListItem() {
          Row(){
            Flex({ justifyContent: FlexAlign.Center, direction: FlexDirection.Column, alignItems: ItemAlign.Center }) {
              Image("/common/media/userImage/headImg.png")
                .width("50%")
                .height("40%")
            }

            .width("13%")
            .height("100%")
            Row(){
              Text("视频号")
                .fontColor(this.colorType)
                .maxFontSize(22)
                .minFontSize(15)
                .align(Alignment.Start)
                .fontColor(this.colorType)
            }
            .width("80%")
            .height("100%")
            Flex({ justifyContent: FlexAlign.Center, direction: FlexDirection.Column, alignItems: ItemAlign.Center }) {
              Text(">")
                .fontColor(this.colorType)
                .fontSize(30)
            }
            .width("7%")
            .height("100%")
          }
        }
        .width("100%")
        .height("10%")

      }
      .edgeEffect(EdgeEffect.Spring)
      .divider({strokeWidth: 0.5,startMargin: "15%",color: "#2c2c2c"})
      .scrollBar(BarState.Off)
      .height("100%")
      .width("100%")

    }
  }
}

export default FindList
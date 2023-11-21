import { MeData } from '../../common/data/MeData'
import { initializeForMe } from '../../common/data/model/MeDataModel'

@Component
struct MeList {
  colorType: string
  private meFrom: MeData = initializeForMe()

  build() {
    List() {
      ListItem() {
        Row() {

          Flex({ justifyContent: FlexAlign.Center, direction: FlexDirection.Column, alignItems: ItemAlign.Center }) {
            Image(this.meFrom.headImage)
              .width("50%")
              .height("46%")
          }
          .width("30%")
          .height("100%")

          Column({space: 10}) {
            Text(this.meFrom.name)
              .maxLines(1)
              .textOverflow({overflow:TextOverflow.Ellipsis})
              .fontColor(this.colorType)
              .fontSize(30)
//              .border({ width: 5, color: Color.Green })
              .width("100%")
              .height("30%")
            Row(){
              Text("微信号: "+this.meFrom.userId)
                .maxLines(1)
                .textOverflow({overflow:TextOverflow.Ellipsis})
                .fontColor("#404040")
                .maxFontSize(25)
                .minFontSize(15)
            }
            .width("100%")
            .height("13%")


          }
//          .border({ width: 5, color: Color.Green })
          .width("56%")
          .height("100%")

          Row() {
            Flex({ justifyContent: FlexAlign.Center, direction: FlexDirection.Column, alignItems: ItemAlign.Center }) {
              Image('/common/media/userImage/headImg.png')
                .width("75%")
                .height("20%")
            }
            .width("50%")

            Flex({ justifyContent: FlexAlign.Center, direction: FlexDirection.Column, alignItems: ItemAlign.Center }) {
              Text(">")
                //                .border({ width: 5, color: Color.Green })
                .fontColor(this.colorType)
                .fontSize(30)
            }
            .width("50%")
          }
          .width("14%")
          .height("100%")

        }
      }
      .height("25%")
//      .border({ width: 5, color: Color.Green })

      ListItem() {
        Row(){
          Flex({ justifyContent: FlexAlign.Center, direction: FlexDirection.Column, alignItems: ItemAlign.Center }) {
            Image(this.meFrom.headImage)
              .width("50%")
              .height("40%")
          }

          .width("13%")
          .height("100%")
          Row(){
            Text("服务")
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
            Image(this.meFrom.headImage)
              .width("50%")
              .height("40%")
          }

          .width("13%")
          .height("100%")
          Row(){
            Text("设置")
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
    .width("100%")
    .height("100%")
  }
}

export default MeList
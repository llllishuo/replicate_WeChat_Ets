import { MsgData } from '../../common/data/MsgData'
import { initializeOnStartup, getUser } from '../../common/data/model/MsgDataModel'

@Component
struct MailList {
  //  private msgList: MsgData[] = initializeOnStartup()
  private userList: MsgData[] = getUser()
  colorType: string
  letterNum: number[]
  @State value: number = -1
  @State letterA: string = "A"
  @State letterB: string = ""
  colorBorder: string

  build() {
    List() {
      ForEach(this.userList, (item) => {
        ListItem() {
          listByLetter({
            item: item
          ,
            colorType: this.colorType
          ,
            letterNum: this.letterNum,
            value: $value
          ,
            letterA: $letterA
          ,
            letterB: $letterB
          ,
            colorBorder: this.colorBorder
          })
        }
        .onClick(()=>{

        })
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
struct listByLetter {
  item: MsgData
  colorType: string
  letterList: string[] = [
    "A", "B", "C", "D", "E", "F", "G"
    , "H", "I", "J", "K", "L", "M", "N"
    , "P", "Q", "R", "S", "T", "U", "V"
    , "W", "X", "Y", "Z"
  ]
  letterNum: number[]
  @Link value: number
  colorBorder: string
  @Link letterA: string
  @Link letterB: string
  str: string
  //  strWidth: string
  strHeight: number
  strHeight2: string
  strHeight3: string

  aboutToAppear() {
    let nameLetter = this.item.name.toUpperCase()


    for (let i = 0;i < 26; i++) {
      if (nameLetter.indexOf(this.letterList[i]) === 0) {
        this.value += 1
        this.letterB = this.letterList[i]
        if (this.letterB !== this.letterA) {
          this.letterA = this.letterB
          this.value = 0
        }
      }
    }


    this.str = this.value === 0 ? this.letterA : ""
    this.strHeight = this.value === 0 ? 25 : 0
    this.strHeight2 = this.value === 0 ? "15%" : "10%"
    this.strHeight3 = this.value === 0 ? "60%" : "75%"
    //    console.info("value:"+ this.value+",A:"+this.letterA+",B:"+this.letterB+",str:"+this.str)

  }

  aboutToDisappear() {
  }

  build() {
    Column() {
      Text("   " + this.str)
        .width("100%")
        .height(this.strHeight + "%")
        .fontColor(this.colorType)
        .fontSize(20)
        .colorBlend(this.colorBorder)
      Row({ space: 15 }) {
        Image(this.item.headImage)
          .sourceSize({
            width: 30
          , height: 30
          })
          .width("12%")
          .height(this.strHeight3)
          .objectFit(ImageFit.Fill)
        Text(this.item.name)
          .constraintSize({ maxWidth: "80%" })
          .maxLines(1)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .fontColor(this.colorType)
          .fontSize(30)
          .height("100%")
          .width("100%")
      }
      .height((100 - this.strHeight) + "%")
      //          .border({width: 5,color: Color.White})

    }
    .align(Alignment.Start)
    //        .border({width: 5,color: Color.White})
    .width("100%")
    .height(this.strHeight2)

  }
}


export default MailList


export class MsgData {
  id: string
  name: string
  headImage: string
  newTips: string
  newTime: string
  tips: any[]
  noReadValue: number
  //是否置顶
  isTop: number
  //是否已读
  isRead: number
  //是否设置免打扰
  isNoDisturb: number

  constructor(
    id: string,
    name: string,
    headImage: string,
    newTips: string,
    newTime: string,
    noReadValue: number=0,
    isTop: number=0,
    isRead: number=0,
    isNoDisturb: number=0,
    tips: any[] ) {
    this.id = id
    this.name = name
    this.headImage = headImage
    this.newTips = newTips
    this.newTime = newTime
    this.isTop = isTop
    this.isRead = isRead
    this.isNoDisturb = isNoDisturb
    this.noReadValue = noReadValue
    this.tips=tips
  }
}



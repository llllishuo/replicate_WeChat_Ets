export class UserFrom{
  userId: string
  userName: string
  userHeadImage: string
  weChatId: string
  //0 男 1 女
  sex: number
  //个性签名
  PersonalSignature: string

  constructor(
  userId: string,
  userName: string,
  userHeadImage: string,
  weChatId: string,
  sex: number,
  PersonalSignature: string
  ){
    this.userId = userId
    this.userName = userName
    this.userHeadImage = userHeadImage
    this.weChatId = weChatId
    this.sex = sex
    this.PersonalSignature = PersonalSignature
  }



}
import { UserFrom } from '../UserFrom'

const me: any =
  {
    "userId": "103",
    "userName": "test",
    "userHeadImage": "/common/media/userImage/headImg.png",
    "weChatId": "test123",
    "sex": 0,
    "PersonalSignature": "test"

  }

export function initializeForMeFrom(): UserFrom {
  return new UserFrom(
    me.userId,
    me.userName,
    me.userHeadImage,
    me.weChatId,
    me.sex,
    me.PersonalSignature
  )
}





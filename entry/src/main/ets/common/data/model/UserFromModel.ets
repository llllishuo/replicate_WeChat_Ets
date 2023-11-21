import { UserFrom } from '../UserFrom'
//好友列表
const userFrom: any = [
  {
    "userId": "101",
    "userName": "test",
    "userHeadImage": "/common/media/userImage/headImg.png",
    "weChatId": "test123",
    "sex": 0,
    "PersonalSignature": "test"

  },
  {
    "userId": "102",
    "userName": "test",
    "userHeadImage": "/common/media/userImage/headImg.png",
    "weChatId": "test123",
    "sex": 0,
    "PersonalSignature": "test"

  }
  ,
  {
    "userId": "104",
    "userName": "test",
    "userHeadImage": "/common/media/userImage/headImg.png",
    "weChatId": "test123",
    "sex": 0,
    "PersonalSignature": "test"

  }
  ,
  {
    "userId": "105",
    "userName": "test",
    "userHeadImage": "/common/media/userImage/headImg.png",
    "weChatId": "test123",
    "sex": 0,
    "PersonalSignature": "test"

  }

]


export function initializeOnStartupForUserFrom(): Array<UserFrom> {
  let array: Array<UserFrom> = []
  userFrom.forEach(item => {
    array.push(new UserFrom(
    item.userId,
    item.userName,
    item.userHeadImage,
    item.weChatId,
    item.sex,
    item.PersonalSignature
    ));
  })
  return array;
}


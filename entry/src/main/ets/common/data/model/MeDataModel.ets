import { MeData } from "../MeData"
const meFrom: any = {
  "id": "103",
  "name": "测试用例",
  "userId": "menghan123",
  "headImage": "/common/media/userImage/headImg.png"
}
export function initializeForMe(): MeData {
  return new MeData(meFrom.id, meFrom.name, meFrom.headImage,meFrom.userId)
}
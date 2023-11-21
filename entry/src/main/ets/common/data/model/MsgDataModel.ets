import { MsgData } from '../MsgData'
import { TipList } from '../TipList'

//1xx代表用户  2xx代表群聊
const msgList: any[] = [
  {
    "id": "101",
    "name": "a",
    "headImage": "/common/media/userImage/headImg.png",
    "newTips": "在吗 gg",
    "newTime": "2023年1月19日 20:20",
    "noReadValue": 0,
    "isTop": 1,
    "isRead": 1,
    "isNoDisturb": 0,
    "tips": [
      {
        "id": "101",
        "tips": "你好",
        "tipTime": "2023年1月19日 20:10"
      },
      {
        "id": "103",
        "tips": "你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好",
        "tipTime": "2023年1月19日 20:11"
      }
      ,
      {
        "id": "101",
        "tips": "在吗 gg",
        "tipTime": "2023年1月19日 20:20"
      }
      ,
      {
        "id": "101",
        "tips": "在吗 gg",
        "tipTime": "2023年1月19日 20:20"
      },
      {
        "id": "101",
        "tips": "在吗 gg",
        "tipTime": "2023年1月19日 20:20"
      },
      {
        "id": "101",
        "tips": "在吗 gg",
        "tipTime": "2023年1月19日 20:20"
      },
      {
        "id": "101",
        "tips": "在吗 gg",
        "tipTime": "2023年1月19日 20:20"
      },
      {
        "id": "101",
        "tips": "在吗 gg",
        "tipTime": "2023年1月19日 20:20"
      },
      {
        "id": "101",
        "tips": "在吗 gg",
        "tipTime": "2023年1月19日 20:20"
      }
    ]

  },
  {
    "id": "102",
    "name": "bbbbbbbbbbbbbbbbbbbbbbbbbbb",
    "headImage": "/common/media/userImage/headImg.png",
    "newTips": "在吗 mm",
    "newTime": "2023年1月18日 20:20",
    "noReadValue": 5,
    "isTop": 1,
    "isRead": 0,
    "isNoDisturb": 0,
    "tips": []
  },
  {
    "id": "103",
    "name": "b",
    "headImage": "/common/media/userImage/headImg.png",
    "newTips": "在吗 mm",
    "newTime": "2023年1月17日 20:20",
    "noReadValue": 20,
    "isTop": 0,
    "isRead": 0,
    "isNoDisturb": 1,
    "tips": []
  }
  ,
  {
    "id": "203",
    "name": "bbbbbbbbb",
    "headImage": "/common/media/userImage/headImg.png",
    "newTips": "在吗 mm",
    "newTime": "2023年1月17日 20:20",
    "noReadValue": 5,
    "isTop": 0,
    "isRead": 0,
    "isNoDisturb": 1,
    "tips": []
  }
  ,
  {
    "id": "104",
    "name": "c",
    "headImage": "/common/media/userImage/headImg.png",
    "newTips": "在吗 mm",
    "newTime": "2023年1月17日 20:20",
    "noReadValue": 5,
    "isTop": 0,
    "isRead": 0,
    "isNoDisturb": 1,
    "tips": []
  }
  ,
  {
    "id": "105",
    "name": "cc",
    "headImage": "/common/media/userImage/headImg.png",
    "newTips": "在吗 mm",
    "newTime": "2023年1月17日 20:20",
    "noReadValue": 5,
    "isTop": 0,
    "isRead": 0,
    "isNoDisturb": 1,
    "tips": []
  }
  ,
  {
    "id": "106",
    "name": "dd",
    "headImage": "/common/media/userImage/headImg.png",
    "newTips": "在吗 mm",
    "newTime": "2023年1月17日 20:20",
    "noReadValue": 5,
    "isTop": 0,
    "isRead": 0,
    "isNoDisturb": 1,
    "tips": []
  }
  ,
  {
    "id": "207",
    "name": "e",
    "headImage": "/common/media/userImage/headImg.png",
    "newTips": "在吗 mm",
    "newTime": "2023年3月17日 20:20",
    "noReadValue": 5,
    "isTop": 0,
    "isRead": 0,
    "isNoDisturb": 1,
    "tips": []
  }
  ,
  {
    "id": "108",
    "name": "eee",
    "headImage": "/common/media/userImage/headImg.png",
    "newTips": "在吗 mm",
    "newTime": "2023年4月17日 20:20",
    "noReadValue": 5,
    "isTop": 0,
    "isRead": 0,
    "isNoDisturb": 1,
    "tips": []
  }
  ,
  {
    "id": "209",
    "name": "eeeeeee",
    "headImage": "/common/media/userImage/headImg.png",
    "newTips": "在吗 mm",
    "newTime": "2022年1月17日 20:20",
    "noReadValue": 5,
    "isTop": 0,
    "isRead": 0,
    "isNoDisturb": 1,
    "tips": []
  },
  {
    "id": "210",
    "name": "eeeeeeeee",
    "headImage": "/common/media/userImage/headImg.png",
    "newTips": "在吗 mm",
    "newTime": "2022年1月17日 20:20",
    "noReadValue": 5,
    "isTop": 0,
    "isRead": 0,
    "isNoDisturb": 1,
    "tips": []
  }
  ,
  {
    "id": "108",
    "name": "eee",
    "headImage": "/common/media/userImage/headImg.png",
    "newTips": "在吗 mm",
    "newTime": "2023年4月17日 20:20",
    "noReadValue": 5,
    "isTop": 0,
    "isRead": 0,
    "isNoDisturb": 1,
    "tips": []
  }
  ,
  {
    "id": "209",
    "name": "eeeeeee",
    "headImage": "/common/media/userImage/headImg.png",
    "newTips": "在吗 mm",
    "newTime": "2022年1月17日 20:20",
    "noReadValue": 5,
    "isTop": 0,
    "isRead": 0,
    "isNoDisturb": 1,
    "tips": []
  },
  {
    "id": "210",
    "name": "eeeeeeeee",
    "headImage": "/common/media/userImage/headImg.png",
    "newTips": "在吗 mm",
    "newTime": "2022年1月17日 20:20",
    "noReadValue": 5,
    "isTop": 0,
    "isRead": 0,
    "isNoDisturb": 1,
    "tips": []
  }
  ,
  {
    "id": "108",
    "name": "eee",
    "headImage": "/common/media/userImage/headImg.png",
    "newTips": "在吗 mm",
    "newTime": "2023年4月17日 20:20",
    "noReadValue": 5,
    "isTop": 0,
    "isRead": 0,
    "isNoDisturb": 1,
    "tips": []
  }
  ,
  {
    "id": "209",
    "name": "eeeeeee",
    "headImage": "/common/media/userImage/headImg.png",
    "newTips": "在吗 mm",
    "newTime": "2022年1月17日 20:20",
    "noReadValue": 5,
    "isTop": 0,
    "isRead": 0,
    "isNoDisturb": 1,
    "tips": []
  },
  {
    "id": "210",
    "name": "eeeeeeeee",
    "headImage": "/common/media/userImage/headImg.png",
    "newTips": "在吗 mm",
    "newTime": "2022年1月17日 20:20",
    "noReadValue": 5,
    "isTop": 0,
    "isRead": 0,
    "isNoDisturb": 1,
    "tips": []
  }
  ,
  {
    "id": "108",
    "name": "eee",
    "headImage": "/common/media/userImage/headImg.png",
    "newTips": "在吗 mm",
    "newTime": "2023年4月17日 20:20",
    "noReadValue": 5,
    "isTop": 0,
    "isRead": 0,
    "isNoDisturb": 1,
    "tips": []
  }
  ,
  {
    "id": "209",
    "name": "eeeeeee",
    "headImage": "/common/media/userImage/headImg.png",
    "newTips": "在吗 mm",
    "newTime": "2022年1月17日 20:20",
    "noReadValue": 5,
    "isTop": 0,
    "isRead": 0,
    "isNoDisturb": 1,
    "tips": []
  },
  {
    "id": "210",
    "name": "eeeeeeeee",
    "headImage": "/common/media/userImage/headImg.png",
    "newTips": "在吗 mm",
    "newTime": "2022年1月17日 20:20",
    "noReadValue": 5,
    "isTop": 0,
    "isRead": 0,
    "isNoDisturb": 1,
    "tips": []
  }
  ,
  {
    "id": "108",
    "name": "eee",
    "headImage": "/common/media/userImage/headImg.png",
    "newTips": "在吗 mm",
    "newTime": "2023年4月17日 20:20",
    "noReadValue": 5,
    "isTop": 0,
    "isRead": 0,
    "isNoDisturb": 1,
    "tips": []
  }
  ,
  {
    "id": "209",
    "name": "eeeeeee",
    "headImage": "/common/media/userImage/headImg.png",
    "newTips": "在吗 mm",
    "newTime": "2022年1月17日 20:20",
    "noReadValue": 5,
    "isTop": 0,
    "isRead": 0,
    "isNoDisturb": 1,
    "tips": []
  },
  {
    "id": "210",
    "name": "eeeeeeeee",
    "headImage": "/common/media/userImage/headImg.png",
    "newTips": "在吗 mm",
    "newTime": "2022年1月17日 20:20",
    "noReadValue": 5,
    "isTop": 0,
    "isRead": 0,
    "isNoDisturb": 1,
    "tips": []
  }
  ,
  {
    "id": "108",
    "name": "eee",
    "headImage": "/common/media/userImage/headImg.png",
    "newTips": "在吗 mm",
    "newTime": "2023年4月17日 20:20",
    "noReadValue": 5,
    "isTop": 0,
    "isRead": 0,
    "isNoDisturb": 1,
    "tips": []
  }
  ,
  {
    "id": "209",
    "name": "eeeeeee",
    "headImage": "/common/media/userImage/headImg.png",
    "newTips": "在吗 mm",
    "newTime": "2022年1月17日 20:20",
    "noReadValue": 5,
    "isTop": 0,
    "isRead": 0,
    "isNoDisturb": 1,
    "tips": []
  },
  {
    "id": "210",
    "name": "eeeeeeeee",
    "headImage": "/common/media/userImage/headImg.png",
    "newTips": "在吗 mm",
    "newTime": "2022年1月17日 20:20",
    "noReadValue": 5,
    "isTop": 0,
    "isRead": 0,
    "isNoDisturb": 1,
    "tips": []
  }


]

// 初始化
export function initializeOnStartup(): Array<MsgData> {
  let MsgDataArray: Array<MsgData> = []
  msgList.forEach(item => {
    MsgDataArray.push(new MsgData(item.id, item.name, item.headImage, item.newTips, item.newTime, item.noReadValue, item.isTop, item.isRead, item.isNoDisturb, item.tips));
  })
  return MsgDataArray;
}

/*
 判断是否是最近时间，这会更换日期的显示方式， 如果时间间隔低于15分钟则显示分钟信息否则显示完整信息
 * front: string : 上一次信息
 * after: string : 当前时间
 * */
export function getIsLately(front: string, after: string): boolean {
//  console.info(front+","+after)


//  console.info(1+"")

  //2023年1月19日 20:20
  let n = front.split("年", 2)[0]
  let y = front.split("月", 2)[0].split("年", 2)[1]
  let r = front.split("日", 2)[0].split("月", 2)[1]

  let n1, y1, r1
  n1 = Number(n)
  y1 = Number(y)
  r1 = Number(r)


  n = after.split("年", 2)[0]
  y = after.split("月", 2)[0].split("年", 2)[1]
  r = after.split("日", 2)[0].split("月", 2)[1]

  let n2, y2, r2
  n2 = Number(n)
  y2 = Number(y)
  r2 = Number(r)

  if(n1!==n2){
//    console.info(2+"")
    return true
  }
  if(y1!==y2){
//    console.info(3+"")
    return true
  }
  if(r1!==r2){
//    console.info(4+"")
    return true
  }

  let h = front.split(" ", 2)[1].split(":", 2)[0]
  let m = front.split(":", 2)[1]

  let h1 = Number(h)
  let m1 = Number(m)

  h = after.split(" ", 2)[1].split(":", 2)[0]
  m = after.split(":", 2)[1]

  let h2 = Number(h)
  let m2 = Number(m)

  if (h1 !== h2) {
//    console.info(5+"")
    return true
  }
  if ((m2 - m1) >= 15) {
//    console.info(6+"")
    return true
  }

//  console.info(7+"")
  return false

}

// 时间长转换为星期，短转换为昨天或者更短
export function getTime(str: string) {
  let date = new Date()
  let time = str.split(" ", 2)


  let value = getDay(time[0], date)

  //  console.info(value+'')
  if (value === -2) {
    return time[0]
  }
  if (value === -1) {
    return time[0].split("年", 2)[1]
  }
  let nowYear = date.getFullYear()
  let nowMonth = (date.getMonth() + 1)
  let nowDay = date.getDate()
  let nowWeek = getWeek(nowYear, nowMonth, nowDay)

  if (value === 0) {
    return time[1]
  }

  if (nowWeek - value === 1) {
    return "昨天 " + time[1]
  }
  if (value - 2 < 1 && value - 1 > 0) {
    return "星期二"
  }
  if (value - 3 < 1 && value - 1 > 0) {
    return "星期三"
  }
  if (value - 4 < 1 && value - 1 > 0) {
    return "星期四"
  }
  if (value - 5 < 1 && value - 1 > 0) {
    return "星期五"
  }
  if (value - 6 < 1 && value - 1 > 0) {
    return "星期六"
  }
  if (value - 7 < 1 && value - 1 > 0) {
    return "星期日"
  }
  if (value - 1 < 1 && value - 1 > 0) {
    return "星期一"
  }

}

export function getDay(str: string, date: Date) {
  let y = str.split("年", 2)
  let m = y[1].split("月", 2)
  let d = m[1].split("日", 2)
  let yy = y[0]
  let mm = m[0]
  let dd = d[0]
  let day = Number(dd)
  let month = Number(mm)
  let year = Number(yy)


  let nowYear = date.getFullYear()
  let nowMonth = (date.getMonth() + 1)
  let nowDay = date.getDate()

  if (year === nowYear) {
    //    console.info('1')
    if (month === nowMonth) {
      //      console.info('2')
      if (nowDay - day === 0) {
        return 0
      }
      if (nowDay - day !== 0 && nowDay - day < 7) {
        return getWeek(year, month, day)
      }
    }
    return -1
  }
  return -2

}


function getWeek(y: number, m: number, d: number) {
  m = (m === 1 || m === 2) ? (m + 12) : m
  y = m > 12 ? y - 1 : y
  let W = (d + 2 * m + 3 * (m + 1) / 5 + y + y / 4 - y / 100 + y / 400) % 7
  W += 1;
  return W
}


export function getUser(): Array<MsgData> {

  let userList: Array<MsgData> = []
  msgList.forEach(item => {
    if (item.id.indexOf("1") === 0) {
      //      console.info(JSON.stringify(item))
      userList.push(new MsgData(item.id, item.name, item.headImage, item.newTips, item.newTime, item.noReadValue, item.isTop, item.isRead, item.isNoDisturb, item.tips));
    }

  })
  return userList
}


export function getTipList(): Array<TipList> {
  let tip: Array<TipList> = []
  msgList.forEach(item => {
    if (item.id.indexOf("1") === 0) {
      //      console.info(JSON.stringify(item))
      tip.push(new TipList(item.id, item.tips, item.time))
    }

  })
  return tip
}

export function addTipToList(tip: TipList, list: Array<TipList>): Array<TipList> {
  list.push(tip)
  return list
}

export function getNewTip(item: MsgData): TipList {
  console.info("获取最新消息:")
  let newTip: TipList
  item.tips.forEach((i, value) => {
    if (value === item.tips.length) {
      newTip.id = i.id
      newTip.tips = i.tips
      newTip.tipTime = i.tipTime
    }
  })
  console.info(JSON.stringify(newTip))
  return newTip
}

export function updateNewTime(list: MsgData): MsgData {
  //  console.info("开始更新时间")
  let time: string
  //  console.info("当前"+list.id+"的消息为:"+JSON.stringify(list.tips))
  if (list.tips === null || list.tips === undefined || list.tips.length === 0) {
    //    console.info(list.id+"无消息")
    return list
  }
  list.tips.forEach((item, value) => {
    //    console.info(value+"/"+(list.tips.length-1))
    if (value === (list.tips.length - 1)) {
      //      console.info("定位到:"+item.id+"时间为:"+item.tipTime)
      time = item.tipTime
    }
  })
  list.newTime = time;
  return list

}

export function updateTips(tip: TipList, date: MsgData): MsgData {

  let newTips: Array<TipList> = []
  date.tips.forEach((item, value) => {
    if (value === date.tips.length) {
      newTips.push(new TipList(item.id, item.tips, item.tipTime))
    }
  })
  newTips.push(new TipList(tip.id, tip.tips, tip.tipTime))
  date.tips = newTips
  return date
}

export function updateMsgDataList(newMsg: MsgData, list: MsgData[]): MsgData[] {
  //  console.info("开始更新最新消息:")
  newMsg.tips.forEach((item, value) => {
    if (value === (newMsg.tips.length - 1)) {
      newMsg.newTips = item.tips
      newMsg.newTime = item.tipTime
    }
  })
  //  console.info(JSON.stringify(newMsg))
  //  console.info("至")
  //  console.info(JSON.stringify(list))
  list.forEach((item, value) => {
    if (item.id === newMsg.id) {
      list[value] = newMsg
    }
  })
  //  console.info("更新完成:")
  //  console.info(JSON.stringify(list))
  return list

}


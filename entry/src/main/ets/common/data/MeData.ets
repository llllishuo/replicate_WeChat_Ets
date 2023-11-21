export class MeData {
  id: string
  name: string
  headImage: string
  userId: string
  constructor(
    id: string,
    name: string,
    headImage: string,
    userId: string) {
    this.id = id
    this.name = name
    this.headImage = headImage
    this.userId = userId
  }
}
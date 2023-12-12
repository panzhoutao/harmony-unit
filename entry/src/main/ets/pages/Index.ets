import router from '@ohos.router'

@Entry
@Component
struct Index {

  async waitAsync(ms: number): Promise<void> {
    return new Promise<void>((resolve) => {
      setTimeout(resolve, ms)
    })
  }

  async aboutToAppear() {
    await this.waitAsync(3000)
    router.pushUrl({ url: 'pages/MainPage' });
  }

  build() {
    Row() {
      Column() {
        Image($r('app.media.app_icon'))
          .height(100)
        Text('Harmony unit')
          .fontSize(40)
          .fontWeight(FontWeight.Bold)
          .margin({ top: '20' })
      }
      .width('100%')
    }
    .height('100%')
  }
}
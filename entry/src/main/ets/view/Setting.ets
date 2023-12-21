import CommonConstants from '../common/constants/CommonConstants';
import ItemData from '../viewmodel/ItemData';
import mainViewModel from '../viewmodel/MainViewModel';

/**
 * Setting tab content
 */
@Component
export default struct Setting {
  @Builder settingCell(item: ItemData) {
    Row() {
      Row({ space: CommonConstants.COMMON_SPACE }) {
        Image(item.img)
          .width($r('app.float.setting_size'))
          .height($r('app.float.setting_size'))
        Text(item.title)
          .fontSize($r('app.float.normal_text_size'))
      }

      Image($r('app.media.right_grey'))
        .width($r('app.float.setting_jump_width'))
        .height($r('app.float.setting_jump_height'))
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .width(CommonConstants.FULL_PARENT)
    .padding({
      left: $r('app.float.setting_settingCell_left'),
      right: $r('app.float.setting_settingCell_right')
    })
  }

  @Builder title() {
    Column(){
      Text($r('app.string.mainPage_tabTitles_mine'))
        .fontWeight(FontWeight.Medium)
        .fontSize($r('app.float.page_title_text_size'))
        .margin({ top: $r('app.float.mainPage_tabTitles_margin') })
        .padding({ left: $r('app.float.mainPage_tabTitles_padding') })
    }
    .width(CommonConstants.FULL_PARENT)
    .alignItems(HorizontalAlign.Start)
  }

  @Builder mineInfo() {
    Row() {
      Image($r('app.media.account'))
        .width($r('app.float.setting_account_size'))
        .height($r('app.float.setting_account_size'))
      Column() {
        Text($r('app.string.setting_account_name'))
          .fontSize($r('app.float.setting_account_fontSize'))
        Text($r('app.string.setting_account_email'))
          .fontSize($r('app.float.little_text_size'))
          .margin({ top: $r('app.float.setting_name_margin') })
      }
      .alignItems(HorizontalAlign.Start)
      .margin({ left: $r('app.float.setting_account_margin') })
    }
    .margin({ top: $r('app.float.setting_account_margin') })
    .alignItems(VerticalAlign.Center)
    .width(CommonConstants.FULL_PARENT)
    .height($r('app.float.setting_account_height'))
    .backgroundColor(Color.White)
    .padding({ left: $r('app.float.setting_account_padding') })
    .borderRadius($r('app.float.setting_account_borderRadius'))
  }

  build() {
    Scroll() {
      Column({ space: CommonConstants.COMMON_SPACE }) {
        this.title()

        this.mineInfo()

        List() {
          ForEach(mainViewModel.getSettingListData(), (item: ItemData) => {
            ListItem() {
              this.settingCell(item)
            }
            .height($r('app.float.setting_list_height'))
          }, (item:ItemData) => JSON.stringify(item))
        }
        .backgroundColor(Color.White)
        .width(CommonConstants.FULL_PARENT)
        .height(CommonConstants.SET_LIST_WIDTH)
        .divider({
          strokeWidth: $r('app.float.setting_list_strokeWidth'),
          color: Color.Grey,
          startMargin: $r('app.float.setting_list_startMargin'),
          endMargin: $r('app.float.setting_list_endMargin')
        })
        .borderRadius($r('app.float.setting_list_borderRadius'))
        .padding({ top: $r('app.float.setting_list_padding'), bottom: $r('app.float.setting_list_padding') })
      }
      .height(CommonConstants.FULL_PARENT)
    }
  }
}




/**
 * 组件实体
 */
export default class ComponentEntity {

  /**
   * 标题
   */
  title: String

  /**
   * 难度（最高5）
   */
  difficulty: number

  /**
   * 描述
   */
  describe: String

  /**
   * 名称
   */
  name: String

  constructor(title: String, describe: String) {
    this.title = title;
    this.describe = describe;
  }

}
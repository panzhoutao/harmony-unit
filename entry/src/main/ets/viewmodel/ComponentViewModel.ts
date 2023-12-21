
import { ComponentType } from '../common/ComponentType';
import ComponentEntity from './ComponentData';

/**
 * 组件数据
 */
export class ComponentViewModel {

  /**
   * 基础组件
   */
  getBasicComponentData(): Array<ComponentEntity> {
    let basicData: ComponentEntity[] = [
      new ComponentEntity(ComponentType.AlphabetIndexer.toString() , '可以与容器组件联动用于按逻辑结构快速定位容器显示区域的组件。'),
      new ComponentEntity(ComponentType.Blank.toString() , '空白填充组件，在容器主轴方向上，空白填充组件具有自动填充容器空余部分的能力。仅当父组件为Row/Column/Flex时生效。'),
      new ComponentEntity(ComponentType.Button.toString() , '按钮组件，可快速创建不同样式的按钮。'),
    ];
    return basicData;
  }

}

export default new ComponentViewModel();

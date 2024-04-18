import ComponentViewModel from '../viewmodel/ComponentViewModel';
import ComponentTab from './ComponentTab';

@Component
export default struct ModuleTab {
  private tabController: TabsController = new TabsController();

  build() {
    Tabs({
      controller: this.tabController,
    }) {
      TabContent() {
        ComponentTab({ data: ComponentViewModel.getBasicComponentData() })
      }
      .tabBar({ text: 'haha' })
    }
  }
}
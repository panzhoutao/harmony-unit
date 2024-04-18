import ComponentEntity from '../viewmodel/ComponentData';

@Component
export default struct ComponentTab {
  private data: Array<ComponentEntity>;

  build() {
    List() {
      ForEach(this.data, (item: ComponentEntity) => {
        ListItem() {
          Text('aaa')
        }
      }, (item: ComponentEntity) => JSON.stringify(item))
    }
  }
}


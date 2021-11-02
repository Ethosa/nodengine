# author: Ethosa
import
  nodesnim,
  project_template


build:
  - Scene (projects_scene):
    - Scroll scroll:
      call setBackgroundColor(Color("#211E2D"))
      call setSizeAnchor(1, 1)
      - VBox list:
        separator: 12
        call resize(1024, 640)
        call addChild(project)

        @onReady():
          self.addChild(addProject("hello, world!"))
          self.addChild(addProject("third project"))
          self.addChild(addProject("my own project"))
          self.addChild(addProject("shit app"))
          self.addChild(addProject("shit game"))
          self.addChild(addProject("what is it?"))

      @onReady():
        scroll.viewport_w = list.rect_size.x
        scroll.viewport_h = list.rect_size.y

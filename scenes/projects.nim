# author: Ethosa
import nodesnim
import project_template


build:
  - Scene (projects_scene):
    - Scroll scroll:
      call setBackgroundColor(Color("#3c345c"))
      call setSizeAnchor(1, 1)
      - VBox list:
        call resize(720, 480)
        call addChild(project)

      @onReady():
        scroll.viewport_w = list.rect_size.x
        scroll.viewport_h = list.rect_size.y

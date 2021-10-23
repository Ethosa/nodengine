import
  nodesnim


build:
  - ColorRect (project):
    color: Color("#5c2c6d")
    call resize(0, 72)
    call setSizeAnchor(1, 0)
    - TextureRect icon:
      texture_mode: TEXTURE_KEEP_ASPECT_RATIO
      call setMargin(8, 4, 0, 4)
      call resize(72, 72)
      - Label title:
        call setAnchor(1, 0, 0, 0)
        call setMargin(2, 0, 0, 0)
        call setText("title")
      - Label description:
        call setAnchor(1, 1, 0, 1)
        call setMargin(4, 0, 0, 0)
        call setText("very very long description")
      @onReady():
        icon.setTexture(load("assets/icon.png", GL_RGBA))

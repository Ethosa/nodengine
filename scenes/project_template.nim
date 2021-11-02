import
  nodesnim


build:
  - Control (project):
    call setBackgroundColor(Color("#443E59"))
    call resize(0, 72)
    call setSizeAnchor(1, 0)
    call setStyle(style({
        shadow: true,
        shadow-offset: 8,
        shadow-color: "#211E2D88"
      }))
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


proc addProject*(name: string): ControlRef =
  result = project.duplicate
  result[0][0].LabelRef.setText(name)
  result[0].TextureRectRef.setTexture(load("assets/icon.png", GL_RGBA))

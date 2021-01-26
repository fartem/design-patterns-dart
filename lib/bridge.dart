abstract class Line {
  void draw(int x, int y);
}

class XLine extends Line {
  @override
  void draw(int x, int y) => 'Drawing a line in X Window System';
}

class AquaLine extends Line {
  @override
  void draw(int x, int y) => 'Drawing a line in Aqua';
}

abstract class Drawer {
  void draw();
}

class ColorDrawer extends Drawer {
  final Line _line;
  final int _x;
  final int _y;
  final String _color;

  ColorDrawer(this._line, this._x, this._y, this._color);

  @override
  void draw() {
    print('Painting background with $_color');
    _line.draw(_x, _y);
  }
}

from jnius import autoclass

api_version = autoclass("android.os.Build$VERSION").SDK_INT
version_codes = autoclass("android.os.Build$VERSION_CODES")

python_act = autoclass("org.panda3d.android.PythonActivity")
Rect = autoclass("android.graphics.Rect")
mActivity = python_act.mActivity

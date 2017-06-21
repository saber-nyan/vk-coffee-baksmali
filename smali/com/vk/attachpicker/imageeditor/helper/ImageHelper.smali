.class public Lcom/vk/attachpicker/imageeditor/helper/ImageHelper;
.super Ljava/lang/Object;
.source "ImageHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitmapToTexture(Landroid/graphics/Bitmap;)I
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x1

    const v5, 0x47012f00    # 33071.0f

    const v4, 0x46180400    # 9729.0f

    const/4 v3, 0x0

    const/16 v2, 0xde1

    .line 17
    new-array v0, v1, [I

    .line 18
    .local v0, "tex":[I
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 19
    aget v1, v0, v3

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 20
    const/16 v1, 0x2800

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 21
    const/16 v1, 0x2801

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 22
    const/16 v1, 0x2802

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 23
    const/16 v1, 0x2803

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 24
    invoke-static {v2, v3, p0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 25
    aget v1, v0, v3

    return v1
.end method

.class public Lcom/vk/attachpicker/imageeditor/PixelBuffer;
.super Ljava/lang/Object;
.source "PixelBuffer.java"


# static fields
.field static final LIST_CONFIGS:Z = false

.field static final TAG:Ljava/lang/String; = "PixelBuffer"


# instance fields
.field mEGL:Ljavax/microedition/khronos/egl/EGL10;

.field mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEGLConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;

.field mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field mGL:Ljavax/microedition/khronos/opengles/GL10;

.field mHeight:I

.field mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field mThreadOwner:Ljava/lang/String;

.field mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 11
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/16 v10, 0x3038

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mWidth:I

    .line 35
    iput p2, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mHeight:I

    .line 37
    new-array v3, v6, [I

    .line 38
    .local v3, "version":[I
    const/4 v4, 0x5

    new-array v1, v4, [I

    const/16 v4, 0x3057

    aput v4, v1, v7

    iget v4, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mWidth:I

    aput v4, v1, v8

    const/16 v4, 0x3056

    aput v4, v1, v6

    iget v4, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mHeight:I

    aput v4, v1, v9

    const/4 v4, 0x4

    aput v10, v1, v4

    .line 45
    .local v1, "attribList":[I
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v4

    check-cast v4, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v4, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 46
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    iput-object v4, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 47
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v4, v5, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 48
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->chooseConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v4

    iput-object v4, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 53
    const/16 v0, 0x3098

    .line 54
    .local v0, "EGL_CONTEXT_CLIENT_VERSION":I
    new-array v2, v9, [I

    aput v0, v2, v7

    aput v6, v2, v8

    aput v10, v2, v6

    .line 58
    .local v2, "attrib_list":[I
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v4, v5, v6, v7, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v4

    iput-object v4, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 60
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v4, v5, v6, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    iput-object v4, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 61
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v7, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v8, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v4, v5, v6, v7, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 63
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v4}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v4

    check-cast v4, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v4, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 66
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mThreadOwner:Ljava/lang/String;

    .line 67
    return-void
.end method

.method private chooseConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 112
    const/16 v0, 0xf

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 125
    .local v2, "attribList":[I
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 126
    .local v5, "numConfig":[I
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 127
    aget v10, v5, v4

    .line 128
    .local v10, "configSize":I
    new-array v0, v10, [Ljavax/microedition/khronos/egl/EGLConfig;

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGLConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;

    .line 129
    iget-object v6, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v9, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGLConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;

    move-object v8, v2

    move-object v11, v5

    invoke-interface/range {v6 .. v11}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 135
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGLConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v0, v0, v4

    return-object v0

    .line 112
    nop

    :array_0
    .array-data 4
        0x3025
        0x0
        0x3026
        0x0
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3038
    .end array-data
.end method

.method private convertToBitmap()Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 185
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mWidth:I

    iget v2, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mHeight:I

    mul-int/2addr v0, v2

    new-array v11, v0, [I

    .line 186
    .local v11, "iat":[I
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mWidth:I

    iget v2, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mHeight:I

    mul-int/2addr v0, v2

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v7

    .line 187
    .local v7, "ib":Ljava/nio/IntBuffer;
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    iget v3, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mWidth:I

    iget v4, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mHeight:I

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move v2, v1

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 188
    invoke-virtual {v7}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v10

    .line 192
    .local v10, "ia":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mHeight:I

    if-ge v9, v0, :cond_1

    .line 193
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mWidth:I

    if-ge v12, v0, :cond_0

    .line 194
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mHeight:I

    sub-int/2addr v0, v9

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mWidth:I

    mul-int/2addr v0, v1

    add-int/2addr v0, v12

    iget v1, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mWidth:I

    mul-int/2addr v1, v9

    add-int/2addr v1, v12

    aget v1, v10, v1

    aput v1, v11, v0

    .line 193
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 192
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 198
    .end local v12    # "j":I
    :cond_1
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mWidth:I

    iget v1, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 199
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v11}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 200
    return-object v8
.end method

.method private getConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;I)I
    .locals 4
    .param p1, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p2, "attribute"    # I

    .prologue
    const/4 v1, 0x0

    .line 159
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 160
    .local v0, "value":[I
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, p1, p2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    aget v1, v0, v1

    :cond_0
    return v1
.end method

.method private listConfig()V
    .locals 13

    .prologue
    .line 139
    const-string/jumbo v7, "PixelBuffer"

    const-string/jumbo v8, "Config List {"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v8, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGLConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v2, v8, v7

    .line 145
    .local v2, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v10, 0x3025

    invoke-direct {p0, v2, v10}, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v3

    .line 146
    .local v3, "d":I
    const/16 v10, 0x3026

    invoke-direct {p0, v2, v10}, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v6

    .line 147
    .local v6, "s":I
    const/16 v10, 0x3024

    invoke-direct {p0, v2, v10}, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v5

    .line 148
    .local v5, "r":I
    const/16 v10, 0x3023

    invoke-direct {p0, v2, v10}, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v4

    .line 149
    .local v4, "g":I
    const/16 v10, 0x3022

    invoke-direct {p0, v2, v10}, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v1

    .line 150
    .local v1, "b":I
    const/16 v10, 0x3021

    invoke-direct {p0, v2, v10}, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->getConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v0

    .line 151
    .local v0, "a":I
    const-string/jumbo v10, "PixelBuffer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "    <d,s,r,g,b,a> = <"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 155
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v2    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v3    # "d":I
    .end local v4    # "g":I
    .end local v5    # "r":I
    .end local v6    # "s":I
    :cond_0
    const-string/jumbo v7, "PixelBuffer"

    const-string/jumbo v8, "}"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 5

    .prologue
    .line 101
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 102
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 103
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 106
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 107
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 108
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 109
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 166
    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    if-nez v1, :cond_0

    .line 167
    const-string/jumbo v1, "PixelBuffer"

    const-string/jumbo v2, "getBitmap: Renderer was not set."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_0
    return-object v0

    .line 172
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mThreadOwner:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    const-string/jumbo v1, "PixelBuffer"

    const-string/jumbo v2, "getBitmap: This thread does not own the OpenGL context."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 180
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 181
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->convertToBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    if-nez v0, :cond_0

    .line 86
    const-string/jumbo v0, "PixelBuffer"

    const-string/jumbo v1, "getBitmap: Renderer was not set."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mThreadOwner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    const-string/jumbo v0, "PixelBuffer"

    const-string/jumbo v1, "getBitmap: This thread does not own the OpenGL context."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 97
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 98
    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 4
    .param p1, "renderer"    # Landroid/opengl/GLSurfaceView$Renderer;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 73
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mThreadOwner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    const-string/jumbo v0, "PixelBuffer"

    const-string/jumbo v1, "setRenderer: This thread does not own the OpenGL context."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 80
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    iget v2, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mWidth:I

    iget v3, p0, Lcom/vk/attachpicker/imageeditor/PixelBuffer;->mHeight:I

    invoke-interface {v0, v1, v2, v3}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    goto :goto_0
.end method

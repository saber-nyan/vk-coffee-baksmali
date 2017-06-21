.class Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;
.super Ljava/lang/Thread;
.source "FFMpegVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/media/FFMpegVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderThread"
.end annotation


# static fields
.field static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "GLTextureView"

.field private static final TRIANGLE_VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I = 0x14

.field private static final TRIANGLE_VERTICES_DATA_UV_OFFSET:I = 0x3

.field private static final sSimpleFS:Ljava/lang/String; = "precision highp float;\n\nvarying vec2 outTexCoords;\nuniform sampler2D texture;\n\nvoid main(void) {\n    vec4 yuv = texture2D(texture, outTexCoords);\ngl_FragColor=vec4(yuv.x+1.13983*(yuv.z-0.5), yuv.x-0.39465*(yuv.y-0.5)-0.58060*(yuv.z-0.5), yuv.x+2.03211*(yuv.y-0.5), 1.0);\n}\n\n"

.field private static final sSimpleVS:Ljava/lang/String; = "attribute vec4 position;\nattribute vec2 texCoords;\nvarying vec2 outTexCoords;\n\nvoid main(void) {\n    outTexCoords = texCoords;\n    gl_Position = position;\n}\n\n"


# instance fields
.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private volatile mFinished:Z

.field private mGL:Ljavax/microedition/khronos/opengles/GL;

.field private final mSurface:Landroid/graphics/SurfaceTexture;

.field private texH:I

.field private texW:I

.field final synthetic this$0:Lcom/vkcoffee/android/media/FFMpegVideoPlayer;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p2, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->this$0:Lcom/vkcoffee/android/media/FFMpegVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 242
    iput-object p2, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 243
    return-void
.end method

.method private buildProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "vertex"    # Ljava/lang/String;
    .param p2, "fragment"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 401
    const v6, 0x8b31

    invoke-direct {p0, p1, v6}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->buildShader(Ljava/lang/String;I)I

    move-result v4

    .line 402
    .local v4, "vertexShader":I
    if-nez v4, :cond_1

    move v2, v5

    .line 432
    :cond_0
    :goto_0
    return v2

    .line 406
    :cond_1
    const v6, 0x8b30

    invoke-direct {p0, p2, v6}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->buildShader(Ljava/lang/String;I)I

    move-result v1

    .line 407
    .local v1, "fragmentShader":I
    if-nez v1, :cond_2

    move v2, v5

    .line 408
    goto :goto_0

    .line 411
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 412
    .local v2, "program":I
    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 413
    invoke-direct {p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 415
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 416
    invoke-direct {p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 418
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 419
    invoke-direct {p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 421
    new-array v3, v7, [I

    .line 422
    .local v3, "status":[I
    const v6, 0x8b82

    invoke-static {v2, v6, v3, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 423
    aget v6, v3, v5

    if-eq v6, v7, :cond_0

    .line 424
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "error":Ljava/lang/String;
    const-string/jumbo v6, "GLTextureView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error while linking program:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 427
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 428
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    move v2, v5

    .line 429
    goto :goto_0
.end method

.method private buildShader(Ljava/lang/String;I)I
    .locals 7
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 436
    invoke-static {p2}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 438
    .local v1, "shader":I
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 439
    invoke-direct {p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 441
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 442
    invoke-direct {p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 444
    new-array v2, v5, [I

    .line 445
    .local v2, "status":[I
    const v4, 0x8b81

    invoke-static {v1, v4, v2, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 446
    aget v4, v2, v3

    if-eq v4, v5, :cond_0

    .line 447
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "error":Ljava/lang/String;
    const-string/jumbo v4, "GLTextureView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error while compiling shader:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v1, v3

    .line 453
    .end local v0    # "error":Ljava/lang/String;
    .end local v1    # "shader":I
    :cond_0
    return v1
.end method

.method private checkCurrent()V
    .locals 5

    .prologue
    .line 476
    iget-object v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v2, 0x3059

    .line 477
    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 479
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "eglMakeCurrent failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 480
    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 483
    :cond_1
    return-void
.end method

.method private checkEglError()V
    .locals 4

    .prologue
    .line 457
    iget-object v1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 458
    .local v0, "error":I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 459
    const-string/jumbo v1, "GLTextureView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "EGL error = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_0
    return-void
.end method

.method private checkGlError()V
    .locals 4

    .prologue
    .line 464
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 465
    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 466
    const-string/jumbo v1, "GLTextureView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GL error = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_0
    return-void
.end method

.method private chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 537
    new-array v5, v4, [I

    .line 538
    .local v5, "configsCount":[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 539
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-direct {p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->getConfig()[I

    move-result-object v2

    .line 540
    .local v2, "configSpec":[I
    iget-object v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "eglChooseConfig failed "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 542
    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_0
    aget v0, v5, v6

    if-lez v0, :cond_1

    .line 544
    aget-object v0, v3, v6

    .line 546
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private finishGL()V
    .locals 3

    .prologue
    .line 471
    iget-object v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 472
    iget-object v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 473
    return-void
.end method

.method private getConfig()[I
    .locals 1

    .prologue
    .line 550
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data
.end method

.method private getTextureSize(I)I
    .locals 3
    .param p1, "size"    # I

    .prologue
    const/4 v2, 0x1

    .line 362
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 363
    shl-int v1, v2, v0

    if-le v1, p1, :cond_0

    .line 364
    shl-int v1, v2, v0

    .line 367
    :goto_1
    return v1

    .line 362
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    :cond_1
    const/16 v1, 0x200

    goto :goto_1
.end method

.method private initGL()V
    .locals 7

    .prologue
    .line 486
    iget-object v2, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v2, :cond_0

    .line 528
    :goto_0
    return-void

    .line 489
    :cond_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v2, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 491
    iget-object v2, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 492
    iget-object v2, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v2, v3, :cond_1

    .line 493
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "eglGetDisplay failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 494
    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 497
    :cond_1
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 498
    .local v1, "version":[I
    iget-object v2, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 499
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "eglInitialize failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 500
    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 503
    :cond_2
    invoke-direct {p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 504
    iget-object v2, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v2, :cond_3

    .line 505
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "eglConfig not initialized"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 508
    :cond_3
    iget-object v2, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p0, v2, v3, v4}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 510
    iget-object v2, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v5, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 512
    iget-object v2, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v2, v3, :cond_6

    .line 513
    :cond_4
    iget-object v2, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 514
    .local v0, "error":I
    const/16 v2, 0x300b

    if-ne v0, v2, :cond_5

    .line 515
    const-string/jumbo v2, "GLTextureView"

    const-string/jumbo v3, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 518
    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createWindowSurface failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 519
    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 522
    .end local v0    # "error":I
    :cond_6
    iget-object v2, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 523
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "eglMakeCurrent failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 524
    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 527
    :cond_7
    iget-object v2, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v2}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL;

    goto/16 :goto_0
.end method

.method private loadTexture()I
    .locals 11

    .prologue
    const/16 v5, 0x2601

    const/16 v2, 0x1908

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 371
    new-array v10, v4, [I

    .line 373
    .local v10, "textures":[I
    const v3, 0x84c0

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 374
    invoke-static {v4, v10, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 375
    invoke-direct {p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 377
    aget v9, v10, v1

    .line 378
    .local v9, "texture":I
    invoke-static {v0, v9}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 379
    invoke-direct {p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 381
    const/16 v3, 0x2801

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 382
    const/16 v3, 0x2800

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 384
    const/16 v3, 0x2802

    const v4, 0x812f

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 385
    const/16 v3, 0x2803

    const v4, 0x812f

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 390
    iget-object v3, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->this$0:Lcom/vkcoffee/android/media/FFMpegVideoPlayer;

    invoke-static {v3}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->access$700(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->getTextureSize(I)I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->texW:I

    iget-object v4, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->this$0:Lcom/vkcoffee/android/media/FFMpegVideoPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->access$800(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->getTextureSize(I)I

    move-result v4

    iput v4, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->texH:I

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 391
    const-string/jumbo v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Created texture of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->texW:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->texH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", frame size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->this$0:Lcom/vkcoffee/android/media/FFMpegVideoPlayer;

    invoke-static {v2}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->access$700(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->this$0:Lcom/vkcoffee/android/media/FFMpegVideoPlayer;

    invoke-static {v2}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->access$800(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-direct {p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 397
    return v9
.end method


# virtual methods
.method createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "eglDisplay"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "eglConfig"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 532
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 533
    .local v0, "attrib_list":[I
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    return-object v1

    .line 532
    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method finish()V
    .locals 1

    .prologue
    .line 563
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mFinished:Z

    .line 564
    return-void
.end method

.method public run()V
    .locals 20

    .prologue
    .line 271
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->initGL()V

    .line 273
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->this$0:Lcom/vkcoffee/android/media/FFMpegVideoPlayer;

    invoke-static {v3}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->access$700(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->this$0:Lcom/vkcoffee/android/media/FFMpegVideoPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->access$700(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->getTextureSize(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const v4, 0x3a03126f    # 5.0E-4f

    sub-float v16, v3, v4

    .line 274
    .local v16, "texX":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->this$0:Lcom/vkcoffee/android/media/FFMpegVideoPlayer;

    invoke-static {v3}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->access$800(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->this$0:Lcom/vkcoffee/android/media/FFMpegVideoPlayer;

    invoke-static {v4}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->access$800(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->getTextureSize(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const v4, 0x3a03126f    # 5.0E-4f

    sub-float v17, v3, v4

    .line 276
    .local v17, "texY":F
    const/16 v3, 0x14

    new-array v14, v3, [F

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    aput v4, v14, v3

    const/4 v3, 0x1

    const/high16 v4, -0x40800000    # -1.0f

    aput v4, v14, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v4, v14, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput v4, v14, v3

    const/4 v3, 0x4

    aput v17, v14, v3

    const/4 v3, 0x5

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v14, v3

    const/4 v3, 0x6

    const/high16 v4, -0x40800000    # -1.0f

    aput v4, v14, v3

    const/4 v3, 0x7

    const/4 v4, 0x0

    aput v4, v14, v3

    const/16 v3, 0x8

    aput v16, v14, v3

    const/16 v3, 0x9

    aput v17, v14, v3

    const/16 v3, 0xa

    const/high16 v4, -0x40800000    # -1.0f

    aput v4, v14, v3

    const/16 v3, 0xb

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v14, v3

    const/16 v3, 0xc

    const/4 v4, 0x0

    aput v4, v14, v3

    const/16 v3, 0xd

    const/4 v4, 0x0

    aput v4, v14, v3

    const/16 v3, 0xe

    const/4 v4, 0x0

    aput v4, v14, v3

    const/16 v3, 0xf

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v14, v3

    const/16 v3, 0x10

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v14, v3

    const/16 v3, 0x11

    const/4 v4, 0x0

    aput v4, v14, v3

    const/16 v3, 0x12

    aput v16, v14, v3

    const/16 v3, 0x13

    const/4 v4, 0x0

    aput v4, v14, v3

    .line 284
    .local v14, "mTriangleVerticesData":[F
    array-length v3, v14

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 285
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    .line 286
    .local v7, "triangleVertices":Ljava/nio/FloatBuffer;
    invoke-virtual {v7, v14}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 288
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->loadTexture()I

    move-result v18

    .line 289
    .local v18, "texture":I
    const-string/jumbo v3, "attribute vec4 position;\nattribute vec2 texCoords;\nvarying vec2 outTexCoords;\n\nvoid main(void) {\n    outTexCoords = texCoords;\n    gl_Position = position;\n}\n\n"

    const-string/jumbo v4, "precision highp float;\n\nvarying vec2 outTexCoords;\nuniform sampler2D texture;\n\nvoid main(void) {\n    vec4 yuv = texture2D(texture, outTexCoords);\ngl_FragColor=vec4(yuv.x+1.13983*(yuv.z-0.5), yuv.x-0.39465*(yuv.y-0.5)-0.58060*(yuv.z-0.5), yuv.x+2.03211*(yuv.y-0.5), 1.0);\n}\n\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->buildProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 291
    .local v15, "program":I
    const-string/jumbo v3, "position"

    invoke-static {v15, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    .line 292
    .local v2, "attribPosition":I
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 294
    const-string/jumbo v3, "texCoords"

    invoke-static {v15, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v8

    .line 295
    .local v8, "attribTexCoords":I
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 297
    const-string/jumbo v3, "texture"

    invoke-static {v15, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v19

    .line 298
    .local v19, "uniformTexture":I
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 300
    const v3, 0x84c0

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 301
    const/16 v3, 0xde1

    move/from16 v0, v18

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 302
    const/4 v3, 0x0

    move/from16 v0, v19

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 303
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 305
    invoke-static {v15}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 306
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 308
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 309
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 311
    invoke-static {v8}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 312
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 314
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 315
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 317
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mFinished:Z

    if-nez v3, :cond_1

    .line 318
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->checkCurrent()V

    .line 320
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->this$0:Lcom/vkcoffee/android/media/FFMpegVideoPlayer;

    invoke-static {v5}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->access$000(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->this$0:Lcom/vkcoffee/android/media/FFMpegVideoPlayer;

    invoke-static {v6}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->access$100(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 322
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 323
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 325
    const/16 v3, 0x4000

    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    .line 326
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 328
    const v3, 0x84c0

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 329
    const/16 v3, 0xde1

    move/from16 v0, v18

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 330
    const/4 v3, 0x0

    move/from16 v0, v19

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 331
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->this$0:Lcom/vkcoffee/android/media/FFMpegVideoPlayer;

    invoke-static {v3}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->access$900(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;)V

    .line 334
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 335
    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x14

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 338
    const/4 v3, 0x3

    invoke-virtual {v7, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 339
    const/4 v9, 0x3

    const/16 v10, 0x1406

    const/4 v11, 0x0

    const/16 v12, 0x14

    move-object v13, v7

    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 342
    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 346
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->finishGL()V

    .line 359
    :goto_1
    return-void

    .line 349
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->checkEglError()V

    goto/16 :goto_0

    .line 358
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$RenderThread;->finishGL()V

    goto :goto_1
.end method

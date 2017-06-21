.class Lnet/ypresto/androidtranscoder/engine/OutputSurface;
.super Ljava/lang/Object;
.source "OutputSurface.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "OutputSurface"

.field private static final VERBOSE:Z


# instance fields
.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field private mFrameAvailable:Z

.field private mFrameSyncObject:Ljava/lang/Object;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureRender:Lnet/ypresto/androidtranscoder/engine/TextureRender;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 47
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 48
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    .line 72
    invoke-direct {p0}, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->setup()V

    .line 73
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 47
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 48
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    .line 60
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 63
    :cond_1
    invoke-direct {p0, p1, p2}, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->eglSetup(II)V

    .line 64
    invoke-virtual {p0}, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->makeCurrent()V

    .line 65
    invoke-direct {p0}, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->setup()V

    .line 66
    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 272
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    .local v0, "error":I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 273
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": EGL error: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 275
    :cond_0
    return-void
.end method

.method private eglSetup(II)V
    .locals 11
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 106
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v2, :cond_0

    .line 107
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unable to get EGL14 display"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    const/4 v0, 0x2

    new-array v10, v0, [I

    .line 110
    .local v10, "version":[I
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v10, v2, v10, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 112
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unable to initialize EGL14"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 124
    .local v1, "attribList":[I
    const/4 v0, 0x1

    new-array v3, v0, [Landroid/opengl/EGLConfig;

    .line 125
    .local v3, "configs":[Landroid/opengl/EGLConfig;
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 126
    .local v6, "numConfigs":[I
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v2, 0x0

    const/4 v4, 0x0

    array-length v5, v3

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unable to find RGB888+recordable ES2 EGL config"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_2
    const/4 v0, 0x3

    new-array v8, v0, [I

    fill-array-data v8, :array_1

    .line 135
    .local v8, "attrib_list":[I
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v2, 0x0

    aget-object v2, v3, v2

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v5, 0x0

    invoke-static {v0, v2, v4, v8, v5}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 137
    const-string/jumbo v0, "eglCreateContext"

    invoke-direct {p0, v0}, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->checkEglError(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_3

    .line 139
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "null context"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_3
    const/4 v0, 0x5

    new-array v9, v0, [I

    const/4 v0, 0x0

    const/16 v2, 0x3057

    aput v2, v9, v0

    const/4 v0, 0x1

    aput p1, v9, v0

    const/4 v0, 0x2

    const/16 v2, 0x3056

    aput v2, v9, v0

    const/4 v0, 0x3

    aput p2, v9, v0

    const/4 v0, 0x4

    const/16 v2, 0x3038

    aput v2, v9, v0

    .line 148
    .local v9, "surfaceAttribs":[I
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v2, 0x0

    aget-object v2, v3, v2

    const/4 v4, 0x0

    invoke-static {v0, v2, v9, v4}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 149
    const-string/jumbo v0, "eglCreatePbufferSurface"

    invoke-direct {p0, v0}, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->checkEglError(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_4

    .line 151
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "surface was null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_4
    return-void

    .line 116
    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3033
        0x1
        0x3038
    .end array-data

    .line 131
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private setup()V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lnet/ypresto/androidtranscoder/engine/TextureRender;

    invoke-direct {v0}, Lnet/ypresto/androidtranscoder/engine/TextureRender;-><init>()V

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mTextureRender:Lnet/ypresto/androidtranscoder/engine/TextureRender;

    .line 80
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mTextureRender:Lnet/ypresto/androidtranscoder/engine/TextureRender;

    invoke-virtual {v0}, Lnet/ypresto/androidtranscoder/engine/TextureRender;->surfaceCreated()V

    .line 86
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mTextureRender:Lnet/ypresto/androidtranscoder/engine/TextureRender;

    invoke-virtual {v1}, Lnet/ypresto/androidtranscoder/engine/TextureRender;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 98
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 99
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mSurface:Landroid/view/Surface;

    .line 100
    return-void
.end method


# virtual methods
.method public awaitNewImage()V
    .locals 6

    .prologue
    .line 201
    const/16 v0, 0x2710

    .line 202
    .local v0, "TIMEOUT_MS":I
    iget-object v3, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v3

    .line 203
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mFrameAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 207
    :try_start_1
    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 208
    iget-boolean v2, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mFrameAvailable:Z

    if-nez v2, :cond_0

    .line 210
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Surface frame wait timed out"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    :catch_0
    move-exception v1

    .line 214
    .local v1, "ie":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 218
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 217
    :cond_1
    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mFrameAvailable:Z

    .line 218
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 220
    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mTextureRender:Lnet/ypresto/androidtranscoder/engine/TextureRender;

    const-string/jumbo v3, "before updateTexImage"

    invoke-virtual {v2, v3}, Lnet/ypresto/androidtranscoder/engine/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 221
    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 222
    return-void
.end method

.method public changeFragmentShader(Ljava/lang/String;)V
    .locals 1
    .param p1, "fragmentShader"    # Ljava/lang/String;

    .prologue
    .line 193
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mTextureRender:Lnet/ypresto/androidtranscoder/engine/TextureRender;

    invoke-virtual {v0, p1}, Lnet/ypresto/androidtranscoder/engine/TextureRender;->changeFragmentShader(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public checkForNewImage(I)Z
    .locals 6
    .param p1, "timeoutMs"    # I

    .prologue
    const/4 v1, 0x0

    .line 229
    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 230
    :cond_0
    :try_start_0
    iget-boolean v3, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mFrameAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 234
    :try_start_1
    iget-object v3, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 235
    iget-boolean v3, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mFrameAvailable:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    .line 236
    :try_start_2
    monitor-exit v2

    .line 248
    :goto_0
    return v1

    .line 238
    :catch_0
    move-exception v0

    .line 240
    .local v0, "ie":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 244
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 243
    :cond_1
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mFrameAvailable:Z

    .line 244
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 246
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mTextureRender:Lnet/ypresto/androidtranscoder/engine/TextureRender;

    const-string/jumbo v2, "before updateTexImage"

    invoke-virtual {v1, v2}, Lnet/ypresto/androidtranscoder/engine/TextureRender;->checkGlError(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 248
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public drawImage()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mTextureRender:Lnet/ypresto/androidtranscoder/engine/TextureRender;

    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lnet/ypresto/androidtranscoder/engine/TextureRender;->drawFrame(Landroid/graphics/SurfaceTexture;)V

    .line 255
    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public makeCurrent()V
    .locals 4

    .prologue
    .line 179
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "st"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 259
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_0
    iget-boolean v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mFrameAvailable:Z

    if-eqz v0, :cond_0

    .line 261
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "mFrameAvailable already set, frame could be dropped"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 263
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mFrameAvailable:Z

    .line 264
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 265
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 158
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 160
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 161
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 162
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 164
    :cond_0
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 168
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 169
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 170
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 171
    iput-object v2, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mTextureRender:Lnet/ypresto/androidtranscoder/engine/TextureRender;

    .line 172
    iput-object v2, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mSurface:Landroid/view/Surface;

    .line 173
    iput-object v2, p0, Lnet/ypresto/androidtranscoder/engine/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 174
    return-void
.end method

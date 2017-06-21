.class Lnet/ypresto/androidtranscoder/engine/InputSurface;
.super Ljava/lang/Object;
.source "InputSurface.java"


# static fields
.field private static final EGL_RECORDABLE_ANDROID:I = 0x3142

.field private static final TAG:Ljava/lang/String; = "InputSurface"


# instance fields
.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 37
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 38
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 47
    :cond_0
    iput-object p1, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mSurface:Landroid/view/Surface;

    .line 48
    invoke-direct {p0}, Lnet/ypresto/androidtranscoder/engine/InputSurface;->eglSetup()V

    .line 49
    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    .local v0, "error":I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 172
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

    .line 174
    :cond_0
    return-void
.end method

.method private eglSetup()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 54
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 55
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v4, :cond_0

    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unable to get EGL14 display"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    const/4 v0, 0x2

    new-array v10, v0, [I

    .line 59
    .local v10, "version":[I
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v10, v2, v10, v11}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 61
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unable to initialize EGL14"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 73
    .local v1, "attribList":[I
    new-array v3, v11, [Landroid/opengl/EGLConfig;

    .line 74
    .local v3, "configs":[Landroid/opengl/EGLConfig;
    new-array v6, v11, [I

    .line 75
    .local v6, "numConfigs":[I
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    array-length v5, v3

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unable to find RGB888+recordable ES2 EGL config"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_2
    const/4 v0, 0x3

    new-array v8, v0, [I

    fill-array-data v8, :array_1

    .line 84
    .local v8, "attrib_list":[I
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v4, v3, v2

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v4, v5, v8, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 86
    const-string/jumbo v0, "eglCreateContext"

    invoke-direct {p0, v0}, Lnet/ypresto/androidtranscoder/engine/InputSurface;->checkEglError(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_3

    .line 88
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "null context"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_3
    new-array v9, v11, [I

    const/16 v0, 0x3038

    aput v0, v9, v2

    .line 94
    .local v9, "surfaceAttribs":[I
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v4, v3, v2

    iget-object v5, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mSurface:Landroid/view/Surface;

    invoke-static {v0, v4, v5, v9, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 96
    const-string/jumbo v0, "eglCreateWindowSurface"

    invoke-direct {p0, v0}, Lnet/ypresto/androidtranscoder/engine/InputSurface;->checkEglError(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_4

    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "surface was null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_4
    return-void

    .line 65
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
        0x3142
        0x1
        0x3038
    .end array-data

    .line 80
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method


# virtual methods
.method public getHeight()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 156
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 157
    .local v0, "value":[I
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/16 v3, 0x3056

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    .line 158
    aget v1, v0, v4

    return v1
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getWidth()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 148
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 149
    .local v0, "value":[I
    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/16 v3, 0x3057

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    .line 150
    aget v1, v0, v4

    return v1
.end method

.method public makeCurrent()V
    .locals 4

    .prologue
    .line 122
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    return-void
.end method

.method public makeUnCurrent()V
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 108
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 109
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 110
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 112
    :cond_0
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 113
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 114
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 115
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mSurface:Landroid/view/Surface;

    .line 117
    return-void
.end method

.method public setPresentationTime(J)V
    .locals 3
    .param p1, "nsecs"    # J

    .prologue
    .line 164
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 165
    return-void
.end method

.method public swapBuffers()Z
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lnet/ypresto/androidtranscoder/engine/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    return v0
.end method

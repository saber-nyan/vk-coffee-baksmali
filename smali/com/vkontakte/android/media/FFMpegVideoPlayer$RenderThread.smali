.class Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;
.super Ljava/lang/Thread;
.source "FFMpegVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/media/FFMpegVideoPlayer;
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

.field final synthetic this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/media/FFMpegVideoPlayer;Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p2, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 67
    iput-object p2, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 68
    return-void
.end method

.method private buildProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "vertex"    # Ljava/lang/String;
    .param p2, "fragment"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 155
    const v5, 0x8b31

    invoke-direct {p0, p1, v5}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->buildShader(Ljava/lang/String;I)I

    move-result v3

    .line 156
    .local v3, "vertexShader":I
    if-nez v3, :cond_1

    move v1, v4

    .line 179
    :cond_0
    :goto_0
    return v1

    .line 159
    :cond_1
    const v5, 0x8b30

    invoke-direct {p0, p2, v5}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->buildShader(Ljava/lang/String;I)I

    move-result v0

    .line 160
    .local v0, "fragmentShader":I
    if-nez v0, :cond_2

    move v1, v4

    .line 161
    goto :goto_0

    .line 163
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 164
    .local v1, "program":I
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 165
    invoke-direct {p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 166
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 167
    invoke-direct {p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 168
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 169
    invoke-direct {p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 170
    new-array v2, v6, [I

    .line 171
    .local v2, "status":[I
    const v5, 0x8b82

    invoke-static {v1, v5, v2, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 172
    aget v5, v2, v4

    if-eq v5, v6, :cond_0

    .line 175
    const-string v5, "GLTextureView"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error while linking program:\n"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 177
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 178
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    move v1, v4

    .line 179
    goto :goto_0
.end method

.method private buildShader(Ljava/lang/String;I)I
    .locals 6
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 183
    invoke-static {p2}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 184
    .local v0, "shader":I
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 186
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 187
    invoke-direct {p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 188
    new-array v1, v4, [I

    .line 189
    .local v1, "status":[I
    const v3, 0x8b81

    invoke-static {v0, v3, v1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 190
    aget v3, v1, v2

    if-ne v3, v4, :cond_0

    .line 195
    .end local v0    # "shader":I
    :goto_0
    return v0

    .line 193
    .restart local v0    # "shader":I
    :cond_0
    const-string v3, "GLTextureView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error while compiling shader:\n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v2

    .line 195
    goto :goto_0
.end method

.method private checkCurrent()V
    .locals 5

    .prologue
    .line 218
    iget-object v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v2, 0x3059

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eglMakeCurrent failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

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

    .line 221
    :cond_1
    return-void
.end method

.method private checkEglError()V
    .locals 4

    .prologue
    .line 199
    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 200
    .local v0, "error":I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 201
    const-string v1, "GLTextureView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "EGL error = 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    return-void
.end method

.method private checkGlError()V
    .locals 4

    .prologue
    .line 206
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 207
    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 208
    const-string v1, "GLTextureView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GL error = 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    return-void
.end method

.method private chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 260
    new-array v5, v4, [I

    .line 261
    .local v5, "configsCount":[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 262
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-direct {p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->getConfig()[I

    move-result-object v2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eglChooseConfig failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_0
    aget v0, v5, v6

    if-lez v0, :cond_1

    .line 265
    aget-object v0, v3, v6

    .line 267
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private finishGL()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 214
    iget-object v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 215
    return-void
.end method

.method private getConfig()[I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/16 v3, 0x8

    .line 272
    const/16 v0, 0xf

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3040

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v4, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3024

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    const/16 v1, 0x3023

    aput v1, v0, v4

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3022

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    const/16 v1, 0x3021

    aput v1, v0, v3

    const/16 v1, 0x9

    aput v3, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x3025

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3026

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x3038

    aput v2, v0, v1

    return-object v0
.end method

.method private getTextureSize(I)I
    .locals 3
    .param p1, "size"    # I

    .prologue
    const/4 v2, 0x1

    .line 124
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 129
    const/16 v1, 0x200

    :goto_1
    return v1

    .line 125
    :cond_0
    shl-int v1, v2, v0

    if-le v1, p1, :cond_1

    .line 126
    shl-int v1, v2, v0

    goto :goto_1

    .line 124
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initGL()V
    .locals 6

    .prologue
    .line 224
    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v1, :cond_3

    .line 225
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 226
    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 227
    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v1, v2, :cond_0

    .line 228
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "eglGetDisplay failed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v3, 0x2

    new-array v3, v3, [I

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 231
    invoke-direct {p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 232
    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v1, :cond_1

    .line 233
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglConfig not initialized"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p0, v1, v2, v3}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 236
    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v4, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 237
    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v2, :cond_5

    .line 238
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 239
    .local v0, "error":I
    const/16 v1, 0x300b

    if-ne v0, v1, :cond_4

    .line 240
    const-string v1, "GLTextureView"

    const-string v2, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v0    # "error":I
    :cond_3
    :goto_0
    return-void

    .line 243
    .restart local v0    # "error":I
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createWindowSurface failed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    .end local v0    # "error":I
    :cond_5
    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 245
    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v1}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL;

    goto :goto_0

    .line 248
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "eglMakeCurrent failed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "eglInitialize failed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private loadTexture()I
    .locals 11

    .prologue
    const/16 v7, 0x2601

    const/16 v2, 0x1908

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 133
    new-array v10, v6, [I

    .line 134
    .local v10, "textures":[I
    const v5, 0x84c0

    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 135
    invoke-static {v6, v10, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 136
    invoke-direct {p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 137
    aget v9, v10, v1

    .line 138
    .local v9, "texture":I
    invoke-static {v0, v9}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 139
    invoke-direct {p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 140
    const/16 v5, 0x2801

    invoke-static {v0, v5, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 141
    const/16 v5, 0x2800

    invoke-static {v0, v5, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 142
    const/16 v5, 0x2802

    const v6, 0x812f

    invoke-static {v0, v5, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 143
    const/16 v5, 0x2803

    const v6, 0x812f

    invoke-static {v0, v5, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 144
    iget-object v5, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;

    invoke-static {v5}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->access$0(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->getTextureSize(I)I

    move-result v3

    .line 145
    .local v3, "textureSize":I
    iput v3, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->texW:I

    .line 146
    iget-object v5, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;

    invoke-static {v5}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->access$1(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->getTextureSize(I)I

    move-result v4

    .line 147
    .local v4, "textureSize2":I
    iput v4, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->texH:I

    .line 148
    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 149
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Created texture of size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->texW:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->texH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", frame size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;

    invoke-static {v2}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->access$0(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;

    invoke-static {v2}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->access$1(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 151
    return v9
.end method


# virtual methods
.method createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "eglDisplay"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "eglConfig"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 256
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-interface {p1, p2, p3, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0

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
    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mFinished:Z

    .line 277
    return-void
.end method

.method public run()V
    .locals 20

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->initGL()V

    .line 72
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;

    invoke-static {v3}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->access$0(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;

    invoke-static {v4}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->access$0(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->getTextureSize(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const v4, 0x3a03126f    # 5.0E-4f

    sub-float v16, v3, v4

    .line 73
    .local v16, "texX":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;

    invoke-static {v3}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->access$1(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;

    invoke-static {v4}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->access$1(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->getTextureSize(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const v4, 0x3a03126f    # 5.0E-4f

    sub-float v17, v3, v4

    .line 74
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

    .line 75
    .local v14, "mTriangleVerticesData":[F
    array-length v3, v14

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    .line 76
    .local v7, "triangleVertices":Ljava/nio/FloatBuffer;
    invoke-virtual {v7, v14}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 77
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->loadTexture()I

    move-result v18

    .line 78
    .local v18, "texture":I
    const-string v3, "attribute vec4 position;\nattribute vec2 texCoords;\nvarying vec2 outTexCoords;\n\nvoid main(void) {\n    outTexCoords = texCoords;\n    gl_Position = position;\n}\n\n"

    const-string v4, "precision highp float;\n\nvarying vec2 outTexCoords;\nuniform sampler2D texture;\n\nvoid main(void) {\n    vec4 yuv = texture2D(texture, outTexCoords);\ngl_FragColor=vec4(yuv.x+1.13983*(yuv.z-0.5), yuv.x-0.39465*(yuv.y-0.5)-0.58060*(yuv.z-0.5), yuv.x+2.03211*(yuv.y-0.5), 1.0);\n}\n\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->buildProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 79
    .local v15, "program":I
    const-string v3, "position"

    invoke-static {v15, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    .line 80
    .local v2, "attribPosition":I
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 81
    const-string v3, "texCoords"

    invoke-static {v15, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v8

    .line 82
    .local v8, "attribTexCoords":I
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 83
    const-string v3, "texture"

    invoke-static {v15, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v19

    .line 84
    .local v19, "uniformTexture":I
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 85
    const v3, 0x84c0

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 86
    const/16 v3, 0xde1

    move/from16 v0, v18

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 87
    const/4 v3, 0x0

    move/from16 v0, v19

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 88
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 89
    invoke-static {v15}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 90
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 91
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 92
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 93
    invoke-static {v8}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 94
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 95
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 96
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 97
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mFinished:Z

    if-eqz v3, :cond_0

    .line 120
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->finishGL()V

    .line 121
    :goto_1
    return-void

    .line 98
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->checkCurrent()V

    .line 99
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;

    invoke-static {v5}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->access$2(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;

    invoke-static {v6}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->access$3(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 100
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 101
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 102
    const/16 v3, 0x4000

    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    .line 103
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->checkGlError()V

    .line 104
    const v3, 0x84c0

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 105
    const/16 v3, 0xde1

    move/from16 v0, v18

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 106
    const/4 v3, 0x0

    move/from16 v0, v19

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 107
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;

    invoke-static {v3}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->access$4(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)V

    .line 108
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 109
    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x14

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 110
    const/4 v3, 0x3

    invoke-virtual {v7, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 111
    const/4 v9, 0x3

    const/16 v10, 0x1406

    const/4 v11, 0x0

    const/16 v12, 0x14

    move-object v13, v7

    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 112
    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 113
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->checkEglError()V

    goto/16 :goto_0

    .line 116
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/media/FFMpegVideoPlayer$RenderThread;->finishGL()V

    goto :goto_1
.end method

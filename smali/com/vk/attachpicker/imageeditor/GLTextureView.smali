.class public Lcom/vk/attachpicker/imageeditor/GLTextureView;
.super Landroid/view/TextureView;
.source "GLTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThreadManager;,
        Lcom/vk/attachpicker/imageeditor/GLTextureView$LogWriter;,
        Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;,
        Lcom/vk/attachpicker/imageeditor/GLTextureView$EglHelper;,
        Lcom/vk/attachpicker/imageeditor/GLTextureView$SimpleEGLConfigChooser;,
        Lcom/vk/attachpicker/imageeditor/GLTextureView$ComponentSizeChooser;,
        Lcom/vk/attachpicker/imageeditor/GLTextureView$BaseConfigChooser;,
        Lcom/vk/attachpicker/imageeditor/GLTextureView$EGLConfigChooser;,
        Lcom/vk/attachpicker/imageeditor/GLTextureView$DefaultWindowSurfaceFactory;,
        Lcom/vk/attachpicker/imageeditor/GLTextureView$EGLWindowSurfaceFactory;,
        Lcom/vk/attachpicker/imageeditor/GLTextureView$DefaultContextFactory;,
        Lcom/vk/attachpicker/imageeditor/GLTextureView$EGLContextFactory;,
        Lcom/vk/attachpicker/imageeditor/GLTextureView$GLWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final LOG_ATTACH_DETACH:Z = false

.field private static final LOG_EGL:Z = false

.field private static final LOG_PAUSE_RESUME:Z = false

.field private static final LOG_RENDERER:Z = false

.field private static final LOG_RENDERER_DRAW_FRAME:Z = false

.field private static final LOG_SURFACE:Z = false

.field private static final LOG_THREADS:Z = false

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GLTextureView"

.field private static final sGLThreadManager:Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mDetached:Z

.field private mEGLConfigChooser:Lcom/vk/attachpicker/imageeditor/GLTextureView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lcom/vk/attachpicker/imageeditor/GLTextureView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/vk/attachpicker/imageeditor/GLTextureView$EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;

.field private mGLWrapper:Lcom/vk/attachpicker/imageeditor/GLTextureView$GLWrapper;

.field private mPreserveEGLContextOnPause:Z

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private final mThisWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vk/attachpicker/imageeditor/GLTextureView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1695
    new-instance v0, Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThreadManager;-><init>(Lcom/vk/attachpicker/imageeditor/GLTextureView$1;)V

    sput-object v0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->sGLThreadManager:Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 1697
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 73
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/GLTextureView;->init()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1697
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 82
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/GLTextureView;->init()V

    .line 83
    return-void
.end method

.method static synthetic access$1000(Lcom/vk/attachpicker/imageeditor/GLTextureView;)Landroid/opengl/GLSurfaceView$Renderer;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/imageeditor/GLTextureView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vk/attachpicker/imageeditor/GLTextureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/imageeditor/GLTextureView;

    .prologue
    .line 22
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic access$300(Lcom/vk/attachpicker/imageeditor/GLTextureView;)Lcom/vk/attachpicker/imageeditor/GLTextureView$EGLConfigChooser;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/imageeditor/GLTextureView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mEGLConfigChooser:Lcom/vk/attachpicker/imageeditor/GLTextureView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vk/attachpicker/imageeditor/GLTextureView;)Lcom/vk/attachpicker/imageeditor/GLTextureView$EGLContextFactory;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/imageeditor/GLTextureView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mEGLContextFactory:Lcom/vk/attachpicker/imageeditor/GLTextureView$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vk/attachpicker/imageeditor/GLTextureView;)Lcom/vk/attachpicker/imageeditor/GLTextureView$EGLWindowSurfaceFactory;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/imageeditor/GLTextureView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/vk/attachpicker/imageeditor/GLTextureView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vk/attachpicker/imageeditor/GLTextureView;)Lcom/vk/attachpicker/imageeditor/GLTextureView$GLWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/imageeditor/GLTextureView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mGLWrapper:Lcom/vk/attachpicker/imageeditor/GLTextureView$GLWrapper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vk/attachpicker/imageeditor/GLTextureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/imageeditor/GLTextureView;

    .prologue
    .line 22
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mDebugFlags:I

    return v0
.end method

.method static synthetic access$800()Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThreadManager;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->sGLThreadManager:Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vk/attachpicker/imageeditor/GLTextureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/imageeditor/GLTextureView;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method private checkRenderThreadState()V
    .locals 2

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mGLThread:Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;

    if-eqz v0, :cond_0

    .line 1575
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1578
    :cond_0
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 99
    invoke-virtual {p0, p0}, Lcom/vk/attachpicker/imageeditor/GLTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 100
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mGLThread:Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mGLThread:Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;->requestExitAndWait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 96
    return-void

    .line 94
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDebugFlags()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mDebugFlags:I

    return v0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mGLThread:Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method public on(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mGLThread:Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;->surfaceCreated()V

    .line 405
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 445
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 449
    iget-boolean v1, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mDetached:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    if-eqz v1, :cond_2

    .line 450
    const/4 v0, 0x1

    .line 451
    .local v0, "renderMode":I
    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mGLThread:Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;

    if-eqz v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mGLThread:Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;

    invoke-virtual {v1}, Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;->getRenderMode()I

    move-result v0

    .line 454
    :cond_0
    new-instance v1, Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;

    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mGLThread:Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;

    .line 455
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 456
    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mGLThread:Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;

    invoke-virtual {v1, v0}, Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;->setRenderMode(I)V

    .line 458
    :cond_1
    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mGLThread:Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;

    invoke-virtual {v1}, Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;->start()V

    .line 460
    .end local v0    # "renderMode":I
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mDetached:Z

    .line 461
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mGLThread:Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mGLThread:Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;->requestExitAndWait()V

    .line 476
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mDetached:Z

    .line 477
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 478
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mGLThread:Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;->onPause()V

    .line 415
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mGLThread:Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;->onResume()V

    .line 426
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 384
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/TextureView;->onSizeChanged(IIII)V

    .line 385
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mGLThread:Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;

    invoke-virtual {v0, p1, p2}, Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;->onWindowResize(II)V

    .line 386
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 374
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mGLThread:Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;->surfaceCreated()V

    .line 375
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mGLThread:Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;->surfaceDestroyed()V

    .line 391
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 379
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mGLThread:Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;

    invoke-virtual {v0, p2, p3}, Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;->onWindowResize(II)V

    .line 380
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/GLTextureView;->requestRender()V

    .line 397
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mGLThread:Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 437
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mGLThread:Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;->requestRender()V

    .line 370
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0
    .param p1, "debugFlags"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mDebugFlags:I

    .line 132
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 8
    .param p1, "redSize"    # I
    .param p2, "greenSize"    # I
    .param p3, "blueSize"    # I
    .param p4, "alphaSize"    # I
    .param p5, "depthSize"    # I
    .param p6, "stencilSize"    # I

    .prologue
    .line 293
    new-instance v0, Lcom/vk/attachpicker/imageeditor/GLTextureView$ComponentSizeChooser;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/vk/attachpicker/imageeditor/GLTextureView$ComponentSizeChooser;-><init>(Lcom/vk/attachpicker/imageeditor/GLTextureView;IIIIII)V

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/imageeditor/GLTextureView;->setEGLConfigChooser(Lcom/vk/attachpicker/imageeditor/GLTextureView$EGLConfigChooser;)V

    .line 295
    return-void
.end method

.method public setEGLConfigChooser(Lcom/vk/attachpicker/imageeditor/GLTextureView$EGLConfigChooser;)V
    .locals 0
    .param p1, "configChooser"    # Lcom/vk/attachpicker/imageeditor/GLTextureView$EGLConfigChooser;

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/GLTextureView;->checkRenderThreadState()V

    .line 258
    iput-object p1, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mEGLConfigChooser:Lcom/vk/attachpicker/imageeditor/GLTextureView$EGLConfigChooser;

    .line 259
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1
    .param p1, "needDepth"    # Z

    .prologue
    .line 276
    new-instance v0, Lcom/vk/attachpicker/imageeditor/GLTextureView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lcom/vk/attachpicker/imageeditor/GLTextureView$SimpleEGLConfigChooser;-><init>(Lcom/vk/attachpicker/imageeditor/GLTextureView;Z)V

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/imageeditor/GLTextureView;->setEGLConfigChooser(Lcom/vk/attachpicker/imageeditor/GLTextureView$EGLConfigChooser;)V

    .line 277
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/GLTextureView;->checkRenderThreadState()V

    .line 326
    iput p1, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mEGLContextClientVersion:I

    .line 327
    return-void
.end method

.method public setEGLContextFactory(Lcom/vk/attachpicker/imageeditor/GLTextureView$EGLContextFactory;)V
    .locals 0
    .param p1, "factory"    # Lcom/vk/attachpicker/imageeditor/GLTextureView$EGLContextFactory;

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/GLTextureView;->checkRenderThreadState()V

    .line 226
    iput-object p1, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mEGLContextFactory:Lcom/vk/attachpicker/imageeditor/GLTextureView$EGLContextFactory;

    .line 227
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/vk/attachpicker/imageeditor/GLTextureView$EGLWindowSurfaceFactory;)V
    .locals 0
    .param p1, "factory"    # Lcom/vk/attachpicker/imageeditor/GLTextureView$EGLWindowSurfaceFactory;

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/GLTextureView;->checkRenderThreadState()V

    .line 240
    iput-object p1, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/vk/attachpicker/imageeditor/GLTextureView$EGLWindowSurfaceFactory;

    .line 241
    return-void
.end method

.method public setGLWrapper(Lcom/vk/attachpicker/imageeditor/GLTextureView$GLWrapper;)V
    .locals 0
    .param p1, "glWrapper"    # Lcom/vk/attachpicker/imageeditor/GLTextureView$GLWrapper;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mGLWrapper:Lcom/vk/attachpicker/imageeditor/GLTextureView$GLWrapper;

    .line 118
    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0
    .param p1, "preserveOnPause"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mPreserveEGLContextOnPause:Z

    .line 163
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .param p1, "renderMode"    # I

    .prologue
    .line 346
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mGLThread:Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;->setRenderMode(I)V

    .line 347
    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 3
    .param p1, "renderer"    # Landroid/opengl/GLSurfaceView$Renderer;

    .prologue
    const/4 v2, 0x0

    .line 199
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/GLTextureView;->checkRenderThreadState()V

    .line 200
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mEGLConfigChooser:Lcom/vk/attachpicker/imageeditor/GLTextureView$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/vk/attachpicker/imageeditor/GLTextureView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/vk/attachpicker/imageeditor/GLTextureView$SimpleEGLConfigChooser;-><init>(Lcom/vk/attachpicker/imageeditor/GLTextureView;Z)V

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mEGLConfigChooser:Lcom/vk/attachpicker/imageeditor/GLTextureView$EGLConfigChooser;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mEGLContextFactory:Lcom/vk/attachpicker/imageeditor/GLTextureView$EGLContextFactory;

    if-nez v0, :cond_1

    .line 204
    new-instance v0, Lcom/vk/attachpicker/imageeditor/GLTextureView$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Lcom/vk/attachpicker/imageeditor/GLTextureView$DefaultContextFactory;-><init>(Lcom/vk/attachpicker/imageeditor/GLTextureView;Lcom/vk/attachpicker/imageeditor/GLTextureView$1;)V

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mEGLContextFactory:Lcom/vk/attachpicker/imageeditor/GLTextureView$EGLContextFactory;

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/vk/attachpicker/imageeditor/GLTextureView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 207
    new-instance v0, Lcom/vk/attachpicker/imageeditor/GLTextureView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Lcom/vk/attachpicker/imageeditor/GLTextureView$DefaultWindowSurfaceFactory;-><init>(Lcom/vk/attachpicker/imageeditor/GLTextureView$1;)V

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/vk/attachpicker/imageeditor/GLTextureView$EGLWindowSurfaceFactory;

    .line 209
    :cond_2
    iput-object p1, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 210
    new-instance v0, Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mGLThread:Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;

    .line 211
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLTextureView;->mGLThread:Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/GLTextureView$GLThread;->start()V

    .line 212
    return-void
.end method

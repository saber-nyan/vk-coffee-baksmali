.class public Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;
.super Lcom/vk/attachpicker/imageeditor/GLTextureView;
.source "SnapsterImageEditorView.java"


# instance fields
.field private filter:Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;

.field private input:Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;

.field private pipeline:Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;

.field private screen:Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/imageeditor/GLTextureView;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->init()V

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;)Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->screen:Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint;

    return-object v0
.end method

.method private declared-synchronized init()V
    .locals 7

    .prologue
    .line 22
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;

    invoke-direct {v0}, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->pipeline:Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->setPreserveEGLContextOnPause(Z)V

    .line 25
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->setEGLContextClientVersion(I)V

    .line 26
    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->setEGLConfigChooser(IIIIII)V

    .line 27
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->pipeline:Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->setRenderMode(I)V

    .line 29
    new-instance v0, Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint;

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->pipeline:Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;

    invoke-direct {v0, v1}, Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint;-><init>(Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;)V

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->screen:Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setFilterInternal(Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;)V
    .locals 2
    .param p1, "newFilter"    # Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->input:Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You should set bitmap first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 87
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->pipeline:Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;

    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;->pauseRendering()V

    .line 89
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->input:Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;

    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->clearTargets()V

    .line 90
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->filter:Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->pipeline:Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->filter:Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;->addFilterToDestroy(Lcom/vk/attachpicker/imageeditor/GLRenderer;)V

    .line 94
    :cond_1
    iput-object p1, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->filter:Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;

    .line 96
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->filter:Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;

    if-nez v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->input:Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->screen:Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->addTarget(Lcom/vk/attachpicker/imageeditor/output/GLTextureInputRenderer;)V

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->pipeline:Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;

    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;->startRendering()V

    .line 105
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->requestRender()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 99
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->input:Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->filter:Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->addTarget(Lcom/vk/attachpicker/imageeditor/output/GLTextureInputRenderer;)V

    .line 100
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->filter:Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->screen:Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->addTarget(Lcom/vk/attachpicker/imageeditor/output/GLTextureInputRenderer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getFilter()Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;
    .locals 1

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->filter:Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 34
    invoke-super/range {p0 .. p5}, Lcom/vk/attachpicker/imageeditor/GLTextureView;->onLayout(ZIIII)V

    .line 35
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->screen:Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint;

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint;->setRenderSize(II)V

    .line 37
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->requestRender()V

    .line 39
    :cond_0
    return-void
.end method

.method public declared-synchronized requestRender(Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint$RenderCallback;)V
    .locals 2
    .param p1, "renderCallback"    # Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint$RenderCallback;

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->screen:Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint;

    new-instance v1, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView$1;

    invoke-direct {v1, p0, p1}, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView$1;-><init>(Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint$RenderCallback;)V

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint;->setRenderCallback(Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint$RenderCallback;)V

    .line 49
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->requestRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFilter(Lcom/vk/attachpicker/imageeditor/FilterProducer;)V
    .locals 2
    .param p1, "newFilter"    # Lcom/vk/attachpicker/imageeditor/FilterProducer;

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/vk/attachpicker/imageeditor/FilterProducer;->getFilter()Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;

    move-result-object v0

    .line 76
    .local v0, "simpleGroupFilter":Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;
    invoke-direct {p0, v0}, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->setFilterInternal(Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 75
    .end local v0    # "simpleGroupFilter":Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->pipeline:Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;

    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;->pauseRendering()V

    .line 55
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->input:Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->input:Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;

    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->clearTargets()V

    .line 57
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->pipeline:Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->input:Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;->removeRootRenderer(Lcom/vk/attachpicker/imageeditor/GLRenderer;)V

    .line 58
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->pipeline:Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->input:Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;->addFilterToDestroy(Lcom/vk/attachpicker/imageeditor/GLRenderer;)V

    .line 60
    :cond_0
    new-instance v0, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;

    invoke-direct {v0, p1}, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->input:Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;

    .line 61
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->filter:Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->input:Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->screen:Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->addTarget(Lcom/vk/attachpicker/imageeditor/output/GLTextureInputRenderer;)V

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->pipeline:Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->input:Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;->addRootRenderer(Lcom/vk/attachpicker/imageeditor/GLRenderer;)V

    .line 70
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->pipeline:Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;

    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;->startRendering()V

    .line 71
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->requestRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 64
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->input:Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->filter:Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->addTarget(Lcom/vk/attachpicker/imageeditor/output/GLTextureInputRenderer;)V

    .line 65
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->filter:Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;

    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->clearTargets()V

    .line 66
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->filter:Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/SnapsterImageEditorView;->screen:Lcom/vk/attachpicker/imageeditor/output/ScreenEndpoint;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->addTarget(Lcom/vk/attachpicker/imageeditor/output/GLTextureInputRenderer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

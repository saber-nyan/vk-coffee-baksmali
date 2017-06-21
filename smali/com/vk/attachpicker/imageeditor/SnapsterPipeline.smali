.class public Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;
.super Ljava/lang/Object;
.source "SnapsterPipeline.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private filtersToDestroy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vk/attachpicker/imageeditor/GLRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private height:I

.field private rendering:Z

.field private rootRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vk/attachpicker/imageeditor/GLRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;->rendering:Z

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;->filtersToDestroy:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;->rootRenderers:Ljava/util/List;

    .line 38
    return-void
.end method

.method private declared-synchronized isRendering()Z
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;->rendering:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addFilterToDestroy(Lcom/vk/attachpicker/imageeditor/GLRenderer;)V
    .locals 2
    .param p1, "renderer"    # Lcom/vk/attachpicker/imageeditor/GLRenderer;

    .prologue
    .line 48
    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;->filtersToDestroy:Ljava/util/List;

    monitor-enter v1

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;->filtersToDestroy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    monitor-exit v1

    .line 51
    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized addRootRenderer(Lcom/vk/attachpicker/imageeditor/GLRenderer;)V
    .locals 1
    .param p1, "rootRenderer"    # Lcom/vk/attachpicker/imageeditor/GLRenderer;

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;->rootRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;->width:I

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .param p1, "unused"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;->isRendering()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;->rootRenderers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v3, p0, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;->rootRenderers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vk/attachpicker/imageeditor/GLRenderer;

    .line 94
    .local v2, "rootRenderer":Lcom/vk/attachpicker/imageeditor/GLRenderer;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {v2}, Lcom/vk/attachpicker/imageeditor/GLRenderer;->onDrawFrame()V

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    .end local v2    # "rootRenderer":Lcom/vk/attachpicker/imageeditor/GLRenderer;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 99
    .end local v0    # "i":I
    :cond_0
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;->filtersToDestroy:Ljava/util/List;

    monitor-enter v4

    .line 100
    :try_start_2
    iget-object v3, p0, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;->filtersToDestroy:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/imageeditor/GLRenderer;

    .line 101
    .local v1, "renderer":Lcom/vk/attachpicker/imageeditor/GLRenderer;
    invoke-virtual {v1}, Lcom/vk/attachpicker/imageeditor/GLRenderer;->destroy()V

    goto :goto_1

    .line 104
    .end local v1    # "renderer":Lcom/vk/attachpicker/imageeditor/GLRenderer;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 103
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;->filtersToDestroy:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 104
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0
    .param p1, "unused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 112
    iput p2, p0, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;->width:I

    .line 113
    iput p3, p0, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;->height:I

    .line 114
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "unused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v1, 0x0

    .line 121
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 122
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 123
    return-void
.end method

.method public declared-synchronized pauseRendering()V
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;->rendering:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeRootRenderer(Lcom/vk/attachpicker/imageeditor/GLRenderer;)V
    .locals 1
    .param p1, "rootRenderer"    # Lcom/vk/attachpicker/imageeditor/GLRenderer;

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;->rootRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startRendering()V
    .locals 1

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;->rootRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/imageeditor/SnapsterPipeline;->rendering:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_0
    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

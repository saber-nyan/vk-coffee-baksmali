.class public abstract Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;
.super Lcom/vk/attachpicker/imageeditor/GLRenderer;
.source "GLTextureOutputRenderer.java"


# instance fields
.field protected depthRenderBuffer:[I

.field private dirty:Z

.field protected frameBuffer:[I

.field private listLock:Ljava/lang/Object;

.field private targets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vk/attachpicker/imageeditor/output/GLTextureInputRenderer;",
            ">;"
        }
    .end annotation
.end field

.field protected texture_out:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/GLRenderer;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->listLock:Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->targets:Ljava/util/List;

    .line 33
    return-void
.end method

.method private initFBO()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const v10, 0x8d40

    const/16 v0, 0xde1

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 121
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->frameBuffer:[I

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->frameBuffer:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 123
    iput-object v8, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->frameBuffer:[I

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->texture_out:[I

    if-eqz v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->texture_out:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 127
    iput-object v8, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->texture_out:[I

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->depthRenderBuffer:[I

    if-eqz v2, :cond_2

    .line 130
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->depthRenderBuffer:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    .line 131
    iput-object v8, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->depthRenderBuffer:[I

    .line 133
    :cond_2
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->frameBuffer:[I

    .line 134
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->texture_out:[I

    .line 135
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->depthRenderBuffer:[I

    .line 136
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->frameBuffer:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 137
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->depthRenderBuffer:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    .line 138
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->texture_out:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 140
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->frameBuffer:[I

    aget v2, v2, v1

    invoke-static {v10, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 142
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 143
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->texture_out:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 144
    const/16 v2, 0x1908

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->getHeight()I

    move-result v4

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 145
    const/16 v2, 0x2802

    const v3, 0x812f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 146
    const/16 v2, 0x2803

    const v3, 0x812f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 147
    const/16 v2, 0x2800

    const/16 v3, 0x2601

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 148
    const/16 v2, 0x2801

    const/16 v3, 0x2601

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 149
    const v2, 0x8ce0

    iget-object v3, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->texture_out:[I

    aget v3, v3, v1

    invoke-static {v10, v2, v0, v3, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 151
    const v0, 0x8d41

    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->depthRenderBuffer:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    .line 152
    const v0, 0x8d41

    const v2, 0x81a5

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->getHeight()I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    .line 153
    const v0, 0x8d00

    const v2, 0x8d41

    iget-object v3, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->depthRenderBuffer:[I

    aget v1, v3, v1

    invoke-static {v10, v0, v2, v1}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    .line 155
    invoke-static {v10}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v9

    .line 156
    .local v9, "status":I
    const v0, 0x8cd5

    if-eq v9, v0, :cond_3

    .line 157
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Failed to set up render buffer with status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_3
    return-void
.end method


# virtual methods
.method public declared-synchronized addTarget(Lcom/vk/attachpicker/imageeditor/output/GLTextureInputRenderer;)V
    .locals 2
    .param p1, "target"    # Lcom/vk/attachpicker/imageeditor/output/GLTextureInputRenderer;

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->listLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    :try_start_1
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->targets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 41
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearTargets()V
    .locals 2

    .prologue
    .line 173
    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->listLock:Ljava/lang/Object;

    monitor-enter v1

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->targets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 175
    monitor-exit v1

    .line 176
    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 51
    invoke-super {p0}, Lcom/vk/attachpicker/imageeditor/GLRenderer;->destroy()V

    .line 52
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->frameBuffer:[I

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->frameBuffer:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 54
    iput-object v3, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->frameBuffer:[I

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->texture_out:[I

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->texture_out:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 58
    iput-object v3, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->texture_out:[I

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->depthRenderBuffer:[I

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->depthRenderBuffer:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    .line 62
    iput-object v3, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->depthRenderBuffer:[I

    .line 64
    :cond_2
    return-void
.end method

.method protected drawFrame()V
    .locals 6

    .prologue
    const v4, 0x8d40

    const/4 v3, 0x0

    .line 68
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->frameBuffer:[I

    if-nez v2, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->getWidth()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->getHeight()I

    move-result v2

    if-eqz v2, :cond_3

    .line 70
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->initFBO()V

    .line 76
    :cond_0
    const/4 v0, 0x0

    .line 77
    .local v0, "newData":Z
    iget-boolean v2, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->dirty:Z

    if-eqz v2, :cond_1

    .line 78
    const/4 v0, 0x1

    .line 80
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->frameBuffer:[I

    aget v2, v2, v3

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 82
    invoke-super {p0}, Lcom/vk/attachpicker/imageeditor/GLRenderer;->drawFrame()V

    .line 84
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 87
    :cond_1
    iget-object v3, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->listLock:Ljava/lang/Object;

    monitor-enter v3

    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->targets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/imageeditor/output/GLTextureInputRenderer;

    .line 89
    .local v1, "target":Lcom/vk/attachpicker/imageeditor/output/GLTextureInputRenderer;
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->texture_out:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-interface {v1, v4, p0, v0}, Lcom/vk/attachpicker/imageeditor/output/GLTextureInputRenderer;->newTextureReady(ILcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;Z)V

    goto :goto_0

    .line 91
    .end local v1    # "target":Lcom/vk/attachpicker/imageeditor/output/GLTextureInputRenderer;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .end local v0    # "newData":Z
    :cond_3
    return-void
.end method

.method public getLockObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->listLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vk/attachpicker/imageeditor/output/GLTextureInputRenderer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->targets:Ljava/util/List;

    return-object v0
.end method

.method protected handleSizeChange()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->initFBO()V

    .line 118
    return-void
.end method

.method public markAsDirty()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->dirty:Z

    .line 180
    return-void
.end method

.method public removeTarget(Lcom/vk/attachpicker/imageeditor/output/GLTextureInputRenderer;)V
    .locals 2
    .param p1, "target"    # Lcom/vk/attachpicker/imageeditor/output/GLTextureInputRenderer;

    .prologue
    .line 167
    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->listLock:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->targets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 169
    monitor-exit v1

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

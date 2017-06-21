.class public Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;
.super Lcom/vk/attachpicker/imageeditor/GLRenderer;
.source "ByteBufferOutput.java"

# interfaces
.implements Lcom/vk/attachpicker/imageeditor/output/GLTextureInputRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput$ByteBufferOutputCallback;
    }
.end annotation


# instance fields
.field private callback:Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput$ByteBufferOutputCallback;

.field protected depthRenderBuffer:[I

.field protected frameBuffer:[I

.field protected outputHeight:I

.field protected outputWidth:I

.field protected texture_out:[I


# direct methods
.method public constructor <init>(IILcom/vk/attachpicker/imageeditor/output/ByteBufferOutput$ByteBufferOutputCallback;)V
    .locals 12
    .param p1, "outputWidth"    # I
    .param p2, "outputHeight"    # I
    .param p3, "callback"    # Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput$ByteBufferOutputCallback;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 21
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/GLRenderer;-><init>()V

    .line 22
    iput-object p3, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->callback:Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput$ByteBufferOutputCallback;

    .line 23
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/nio/FloatBuffer;

    iput-object v4, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->textureVertices:[Ljava/nio/FloatBuffer;

    .line 25
    iput p1, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->outputWidth:I

    .line 26
    iput p2, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->outputHeight:I

    .line 28
    new-array v0, v8, [F

    fill-array-data v0, :array_0

    .line 34
    .local v0, "texData0":[F
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->textureVertices:[Ljava/nio/FloatBuffer;

    array-length v5, v0

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 35
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->textureVertices:[Ljava/nio/FloatBuffer;

    aget-object v4, v4, v7

    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 37
    new-array v1, v8, [F

    fill-array-data v1, :array_1

    .line 43
    .local v1, "texData1":[F
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->textureVertices:[Ljava/nio/FloatBuffer;

    array-length v5, v1

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    aput-object v5, v4, v9

    .line 44
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->textureVertices:[Ljava/nio/FloatBuffer;

    aget-object v4, v4, v9

    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 46
    new-array v2, v8, [F

    fill-array-data v2, :array_2

    .line 52
    .local v2, "texData2":[F
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->textureVertices:[Ljava/nio/FloatBuffer;

    array-length v5, v2

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    aput-object v5, v4, v10

    .line 53
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->textureVertices:[Ljava/nio/FloatBuffer;

    aget-object v4, v4, v10

    invoke-virtual {v4, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 55
    new-array v3, v8, [F

    fill-array-data v3, :array_3

    .line 61
    .local v3, "texData3":[F
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->textureVertices:[Ljava/nio/FloatBuffer;

    array-length v5, v3

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    aput-object v5, v4, v11

    .line 62
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->textureVertices:[Ljava/nio/FloatBuffer;

    aget-object v4, v4, v11

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 63
    return-void

    .line 28
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 37
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    .line 46
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 55
    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initFBO()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const v10, 0x8d40

    const/16 v0, 0xde1

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 112
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->frameBuffer:[I

    if-eqz v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->frameBuffer:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 114
    iput-object v8, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->frameBuffer:[I

    .line 116
    :cond_0
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->texture_out:[I

    if-eqz v2, :cond_1

    .line 117
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->texture_out:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 118
    iput-object v8, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->texture_out:[I

    .line 120
    :cond_1
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->depthRenderBuffer:[I

    if-eqz v2, :cond_2

    .line 121
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->depthRenderBuffer:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    .line 122
    iput-object v8, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->depthRenderBuffer:[I

    .line 124
    :cond_2
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->frameBuffer:[I

    .line 125
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->texture_out:[I

    .line 126
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->depthRenderBuffer:[I

    .line 127
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->frameBuffer:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 128
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->depthRenderBuffer:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    .line 129
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->texture_out:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 131
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->frameBuffer:[I

    aget v2, v2, v1

    invoke-static {v10, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 133
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 134
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->texture_out:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 135
    const/16 v2, 0x1908

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->getHeight()I

    move-result v4

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 136
    const/16 v2, 0x2802

    const v3, 0x812f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 137
    const/16 v2, 0x2803

    const v3, 0x812f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 138
    const/16 v2, 0x2800

    const/16 v3, 0x2601

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 139
    const/16 v2, 0x2801

    const/16 v3, 0x2601

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 140
    const v2, 0x8ce0

    iget-object v3, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->texture_out:[I

    aget v3, v3, v1

    invoke-static {v10, v2, v0, v3, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 142
    const v0, 0x8d41

    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->depthRenderBuffer:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    .line 143
    const v0, 0x8d41

    const v2, 0x81a5

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->getHeight()I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    .line 144
    const v0, 0x8d00

    const v2, 0x8d41

    iget-object v3, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->depthRenderBuffer:[I

    aget v1, v3, v1

    invoke-static {v10, v0, v2, v1}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    .line 146
    invoke-static {v10}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v9

    .line 147
    .local v9, "status":I
    const v0, 0x8cd5

    if-eq v9, v0, :cond_3

    .line 148
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

    .line 150
    :cond_3
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    invoke-super {p0}, Lcom/vk/attachpicker/imageeditor/GLRenderer;->destroy()V

    .line 71
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->frameBuffer:[I

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->frameBuffer:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 73
    iput-object v3, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->frameBuffer:[I

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->texture_out:[I

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->texture_out:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 77
    iput-object v3, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->texture_out:[I

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->depthRenderBuffer:[I

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->depthRenderBuffer:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    .line 81
    iput-object v3, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->depthRenderBuffer:[I

    .line 83
    :cond_2
    return-void
.end method

.method public drawFrame()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 87
    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->frameBuffer:[I

    if-nez v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->getWidth()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->getHeight()I

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->initFBO()V

    .line 95
    :cond_0
    const v1, 0x8d40

    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->frameBuffer:[I

    aget v2, v2, v0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 97
    invoke-super {p0}, Lcom/vk/attachpicker/imageeditor/GLRenderer;->drawFrame()V

    .line 100
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 101
    .local v6, "hsvBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->getHeight()I

    move-result v3

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 103
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->callback:Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput$ByteBufferOutputCallback;

    invoke-interface {v0, v6}, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput$ByteBufferOutputCallback;->bufferCreated(Ljava/nio/ByteBuffer;)V

    .line 104
    .end local v6    # "hsvBuffer":Ljava/nio/ByteBuffer;
    :cond_1
    return-void
.end method

.method protected handleSizeChange()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->initFBO()V

    .line 109
    return-void
.end method

.method public newTextureReady(ILcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;Z)V
    .locals 1
    .param p1, "texture"    # I
    .param p2, "source"    # Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;
    .param p3, "newData"    # Z

    .prologue
    .line 157
    iput p1, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->texture_in:I

    .line 158
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->outputWidth:I

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->setWidth(I)V

    .line 159
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->outputWidth:I

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->setHeight(I)V

    .line 160
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/ByteBufferOutput;->onDrawFrame()V

    .line 161
    return-void
.end method

.class public Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;
.super Lcom/vk/attachpicker/imageeditor/GLRenderer;
.source "JPGFileEndpoint.java"

# interfaces
.implements Lcom/vk/attachpicker/imageeditor/output/GLTextureInputRenderer;


# instance fields
.field private context:Landroid/content/Context;

.field private curNumber:I

.field protected depthRenderBuffer:[I

.field private filePath:Ljava/lang/String;

.field protected frameBuffer:[I

.field private increment:Z

.field private storeToMedia:Z

.field protected texture_out:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storeToMedia"    # Z
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "increment"    # Z

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/GLRenderer;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->context:Landroid/content/Context;

    .line 52
    iput-boolean p2, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->storeToMedia:Z

    .line 53
    iput-object p3, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->filePath:Ljava/lang/String;

    .line 54
    iput-boolean p4, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->increment:Z

    .line 55
    const/4 v4, 0x1

    iput v4, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->curNumber:I

    .line 56
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/nio/FloatBuffer;

    iput-object v4, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->textureVertices:[Ljava/nio/FloatBuffer;

    .line 58
    const/16 v4, 0x8

    new-array v0, v4, [F

    fill-array-data v0, :array_0

    .line 64
    .local v0, "texData0":[F
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->textureVertices:[Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    array-length v6, v0

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 65
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->textureVertices:[Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 67
    const/16 v4, 0x8

    new-array v1, v4, [F

    fill-array-data v1, :array_1

    .line 73
    .local v1, "texData1":[F
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->textureVertices:[Ljava/nio/FloatBuffer;

    const/4 v5, 0x1

    array-length v6, v1

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 74
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->textureVertices:[Ljava/nio/FloatBuffer;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 76
    const/16 v4, 0x8

    new-array v2, v4, [F

    fill-array-data v2, :array_2

    .line 82
    .local v2, "texData2":[F
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->textureVertices:[Ljava/nio/FloatBuffer;

    const/4 v5, 0x2

    array-length v6, v2

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 83
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->textureVertices:[Ljava/nio/FloatBuffer;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 85
    const/16 v4, 0x8

    new-array v3, v4, [F

    fill-array-data v3, :array_3

    .line 91
    .local v3, "texData3":[F
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->textureVertices:[Ljava/nio/FloatBuffer;

    const/4 v5, 0x3

    array-length v6, v3

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 92
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->textureVertices:[Ljava/nio/FloatBuffer;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 93
    return-void

    .line 58
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

    .line 67
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

    .line 76
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

    .line 85
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

    .line 169
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->frameBuffer:[I

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->frameBuffer:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 171
    iput-object v8, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->frameBuffer:[I

    .line 173
    :cond_0
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->texture_out:[I

    if-eqz v2, :cond_1

    .line 174
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->texture_out:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 175
    iput-object v8, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->texture_out:[I

    .line 177
    :cond_1
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->depthRenderBuffer:[I

    if-eqz v2, :cond_2

    .line 178
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->depthRenderBuffer:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    .line 179
    iput-object v8, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->depthRenderBuffer:[I

    .line 181
    :cond_2
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->frameBuffer:[I

    .line 182
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->texture_out:[I

    .line 183
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->depthRenderBuffer:[I

    .line 184
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->frameBuffer:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 185
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->depthRenderBuffer:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    .line 186
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->texture_out:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 188
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->frameBuffer:[I

    aget v2, v2, v1

    invoke-static {v10, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 190
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 191
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->texture_out:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 192
    const/16 v2, 0x1908

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->getHeight()I

    move-result v4

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 193
    const/16 v2, 0x2802

    const v3, 0x812f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 194
    const/16 v2, 0x2803

    const v3, 0x812f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 195
    const/16 v2, 0x2800

    const/16 v3, 0x2601

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 196
    const/16 v2, 0x2801

    const/16 v3, 0x2601

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 197
    const v2, 0x8ce0

    iget-object v3, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->texture_out:[I

    aget v3, v3, v1

    invoke-static {v10, v2, v0, v3, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 199
    const v0, 0x8d41

    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->depthRenderBuffer:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    .line 200
    const v0, 0x8d41

    const v2, 0x81a5

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->getHeight()I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    .line 201
    const v0, 0x8d00

    const v2, 0x8d41

    iget-object v3, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->depthRenderBuffer:[I

    aget v1, v3, v1

    invoke-static {v10, v0, v2, v1}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    .line 203
    invoke-static {v10}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v9

    .line 204
    .local v9, "status":I
    const v0, 0x8cd5

    if-eq v9, v0, :cond_3

    .line 205
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

    .line 207
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

    .line 100
    invoke-super {p0}, Lcom/vk/attachpicker/imageeditor/GLRenderer;->destroy()V

    .line 101
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->frameBuffer:[I

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->frameBuffer:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 103
    iput-object v3, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->frameBuffer:[I

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->texture_out:[I

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->texture_out:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 107
    iput-object v3, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->texture_out:[I

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->depthRenderBuffer:[I

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->depthRenderBuffer:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    .line 111
    iput-object v3, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->depthRenderBuffer:[I

    .line 113
    :cond_2
    return-void
.end method

.method public drawFrame()V
    .locals 15

    .prologue
    const v14, 0x8d40

    const/4 v0, 0x0

    .line 117
    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->frameBuffer:[I

    if-nez v1, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->getWidth()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->getHeight()I

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->initFBO()V

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->frameBuffer:[I

    aget v1, v1, v0

    invoke-static {v14, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 127
    invoke-super {p0}, Lcom/vk/attachpicker/imageeditor/GLRenderer;->drawFrame()V

    .line 129
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    new-array v13, v1, [I

    .line 130
    .local v13, "pixels":[I
    invoke-static {v13}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v6

    .line 131
    .local v6, "intBuffer":Ljava/nio/IntBuffer;
    invoke-virtual {v6, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 132
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->getHeight()I

    move-result v3

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 134
    invoke-static {v14, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 136
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v13

    if-ge v9, v0, :cond_1

    .line 137
    aget v0, v13, v9

    const v1, -0xff0100

    and-int/2addr v0, v1

    aget v1, v13, v9

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    aget v1, v13, v9

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    aput v0, v13, v9

    .line 136
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 141
    .local v10, "image":Landroid/graphics/Bitmap;
    iget-boolean v0, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->increment:Z

    if-eqz v0, :cond_3

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->curNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 143
    .local v8, "filePathName":Ljava/lang/String;
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->curNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->curNumber:I

    .line 148
    :goto_1
    :try_start_0
    new-instance v12, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 149
    .local v12, "out":Ljava/io/OutputStream;
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x57

    invoke-virtual {v10, v0, v1, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 150
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 151
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 152
    iget-boolean v0, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->storeToMedia:Z

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->filePath:Ljava/lang/String;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 154
    .local v11, "name":[Ljava/lang/String;
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    array-length v1, v11

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v11, v1

    const-string/jumbo v2, ""

    invoke-static {v0, v8, v1, v2}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 161
    .end local v6    # "intBuffer":Ljava/nio/IntBuffer;
    .end local v8    # "filePathName":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "image":Landroid/graphics/Bitmap;
    .end local v11    # "name":[Ljava/lang/String;
    .end local v12    # "out":Ljava/io/OutputStream;
    .end local v13    # "pixels":[I
    :cond_2
    :goto_2
    return-void

    .line 145
    .restart local v6    # "intBuffer":Ljava/nio/IntBuffer;
    .restart local v9    # "i":I
    .restart local v10    # "image":Landroid/graphics/Bitmap;
    .restart local v13    # "pixels":[I
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "filePathName":Ljava/lang/String;
    goto :goto_1

    .line 156
    :catch_0
    move-exception v7

    .line 157
    .local v7, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 158
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v7

    .line 159
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method protected handleSizeChange()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->initFBO()V

    .line 166
    return-void
.end method

.method public newTextureReady(ILcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;Z)V
    .locals 1
    .param p1, "texture"    # I
    .param p2, "source"    # Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;
    .param p3, "newData"    # Z

    .prologue
    .line 214
    iput p1, p0, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->texture_in:I

    .line 215
    invoke-virtual {p2}, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->setWidth(I)V

    .line 216
    invoke-virtual {p2}, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->setHeight(I)V

    .line 217
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/JPGFileEndpoint;->onDrawFrame()V

    .line 218
    return-void
.end method

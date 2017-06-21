.class public Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;
.super Lcom/vk/attachpicker/imageeditor/GLRenderer;
.source "BitmapOutput.java"

# interfaces
.implements Lcom/vk/attachpicker/imageeditor/output/GLTextureInputRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/imageeditor/output/BitmapOutput$BitmapOutputCallback;
    }
.end annotation


# instance fields
.field private callback:Lcom/vk/attachpicker/imageeditor/output/BitmapOutput$BitmapOutputCallback;

.field protected depthRenderBuffer:[I

.field protected frameBuffer:[I

.field protected outputHeight:I

.field protected outputWidth:I

.field protected texture_out:[I


# direct methods
.method public constructor <init>(IILcom/vk/attachpicker/imageeditor/output/BitmapOutput$BitmapOutputCallback;)V
    .locals 12
    .param p1, "outputWidth"    # I
    .param p2, "outputHeight"    # I
    .param p3, "callback"    # Lcom/vk/attachpicker/imageeditor/output/BitmapOutput$BitmapOutputCallback;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 23
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/GLRenderer;-><init>()V

    .line 24
    iput-object p3, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->callback:Lcom/vk/attachpicker/imageeditor/output/BitmapOutput$BitmapOutputCallback;

    .line 25
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/nio/FloatBuffer;

    iput-object v4, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->textureVertices:[Ljava/nio/FloatBuffer;

    .line 27
    iput p1, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->outputWidth:I

    .line 28
    iput p2, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->outputHeight:I

    .line 30
    new-array v0, v8, [F

    fill-array-data v0, :array_0

    .line 36
    .local v0, "texData0":[F
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->textureVertices:[Ljava/nio/FloatBuffer;

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

    .line 37
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->textureVertices:[Ljava/nio/FloatBuffer;

    aget-object v4, v4, v7

    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 39
    new-array v1, v8, [F

    fill-array-data v1, :array_1

    .line 45
    .local v1, "texData1":[F
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->textureVertices:[Ljava/nio/FloatBuffer;

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

    .line 46
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->textureVertices:[Ljava/nio/FloatBuffer;

    aget-object v4, v4, v9

    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 48
    new-array v2, v8, [F

    fill-array-data v2, :array_2

    .line 54
    .local v2, "texData2":[F
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->textureVertices:[Ljava/nio/FloatBuffer;

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

    .line 55
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->textureVertices:[Ljava/nio/FloatBuffer;

    aget-object v4, v4, v10

    invoke-virtual {v4, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 57
    new-array v3, v8, [F

    fill-array-data v3, :array_3

    .line 63
    .local v3, "texData3":[F
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->textureVertices:[Ljava/nio/FloatBuffer;

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

    .line 64
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->textureVertices:[Ljava/nio/FloatBuffer;

    aget-object v4, v4, v11

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 65
    return-void

    .line 30
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

    .line 39
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

    .line 48
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

    .line 57
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

    .line 122
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->frameBuffer:[I

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->frameBuffer:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 124
    iput-object v8, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->frameBuffer:[I

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->texture_out:[I

    if-eqz v2, :cond_1

    .line 127
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->texture_out:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 128
    iput-object v8, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->texture_out:[I

    .line 130
    :cond_1
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->depthRenderBuffer:[I

    if-eqz v2, :cond_2

    .line 131
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->depthRenderBuffer:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    .line 132
    iput-object v8, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->depthRenderBuffer:[I

    .line 134
    :cond_2
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->frameBuffer:[I

    .line 135
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->texture_out:[I

    .line 136
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->depthRenderBuffer:[I

    .line 137
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->frameBuffer:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 138
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->depthRenderBuffer:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    .line 139
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->texture_out:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 141
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->frameBuffer:[I

    aget v2, v2, v1

    invoke-static {v10, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 143
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 144
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->texture_out:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 145
    const/16 v2, 0x1908

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->getHeight()I

    move-result v4

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 146
    const/16 v2, 0x2802

    const v3, 0x812f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 147
    const/16 v2, 0x2803

    const v3, 0x812f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 148
    const/16 v2, 0x2800

    const/16 v3, 0x2601

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 149
    const/16 v2, 0x2801

    const/16 v3, 0x2601

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 150
    const v2, 0x8ce0

    iget-object v3, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->texture_out:[I

    aget v3, v3, v1

    invoke-static {v10, v2, v0, v3, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 152
    const v0, 0x8d41

    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->depthRenderBuffer:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    .line 153
    const v0, 0x8d41

    const v2, 0x81a5

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->getHeight()I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    .line 154
    const v0, 0x8d00

    const v2, 0x8d41

    iget-object v3, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->depthRenderBuffer:[I

    aget v1, v3, v1

    invoke-static {v10, v0, v2, v1}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    .line 156
    invoke-static {v10}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v9

    .line 157
    .local v9, "status":I
    const v0, 0x8cd5

    if-eq v9, v0, :cond_3

    .line 158
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

    .line 160
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

    .line 72
    invoke-super {p0}, Lcom/vk/attachpicker/imageeditor/GLRenderer;->destroy()V

    .line 73
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->frameBuffer:[I

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->frameBuffer:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 75
    iput-object v3, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->frameBuffer:[I

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->texture_out:[I

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->texture_out:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 79
    iput-object v3, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->texture_out:[I

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->depthRenderBuffer:[I

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->depthRenderBuffer:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    .line 83
    iput-object v3, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->depthRenderBuffer:[I

    .line 85
    :cond_2
    return-void
.end method

.method public drawFrame()V
    .locals 11

    .prologue
    const v10, 0x8d40

    const/4 v0, 0x0

    .line 89
    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->frameBuffer:[I

    if-nez v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->getWidth()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->getHeight()I

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->initFBO()V

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->frameBuffer:[I

    aget v1, v1, v0

    invoke-static {v10, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 99
    invoke-super {p0}, Lcom/vk/attachpicker/imageeditor/GLRenderer;->drawFrame()V

    .line 101
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    new-array v9, v1, [I

    .line 102
    .local v9, "pixels":[I
    invoke-static {v9}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v6

    .line 103
    .local v6, "intBuffer":Ljava/nio/IntBuffer;
    invoke-virtual {v6, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 104
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->getHeight()I

    move-result v3

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 106
    invoke-static {v10, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 108
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v9

    if-ge v7, v0, :cond_1

    .line 109
    aget v0, v9, v7

    const v1, -0xff0100

    and-int/2addr v0, v1

    aget v1, v9, v7

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    aget v1, v9, v7

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    aput v0, v9, v7

    .line 108
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 113
    .local v8, "image":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->callback:Lcom/vk/attachpicker/imageeditor/output/BitmapOutput$BitmapOutputCallback;

    invoke-interface {v0, p0, v8}, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput$BitmapOutputCallback;->bitmapCreated(Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;Landroid/graphics/Bitmap;)V

    .line 114
    .end local v6    # "intBuffer":Ljava/nio/IntBuffer;
    .end local v7    # "i":I
    .end local v8    # "image":Landroid/graphics/Bitmap;
    .end local v9    # "pixels":[I
    :cond_2
    return-void
.end method

.method protected handleSizeChange()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->initFBO()V

    .line 119
    return-void
.end method

.method public newTextureReady(ILcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;Z)V
    .locals 1
    .param p1, "texture"    # I
    .param p2, "source"    # Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;
    .param p3, "newData"    # Z

    .prologue
    .line 167
    iput p1, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->texture_in:I

    .line 168
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->outputWidth:I

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->setWidth(I)V

    .line 169
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->outputHeight:I

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->setHeight(I)V

    .line 170
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/output/BitmapOutput;->onDrawFrame()V

    .line 171
    return-void
.end method

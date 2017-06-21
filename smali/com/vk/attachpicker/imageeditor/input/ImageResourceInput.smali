.class public Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;
.super Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;
.source "ImageResourceInput.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private context:Landroid/content/Context;

.field private imageHeight:I

.field private imageWidth:I

.field private newBitmap:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->context:Landroid/content/Context;

    .line 45
    invoke-virtual {p0, p2}, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->setImage(I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->setImage(Landroid/graphics/Bitmap;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pathName"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->setImage(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private loadImage(Landroid/graphics/Bitmap;)V
    .locals 12
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 84
    iput-object p1, p0, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->bitmap:Landroid/graphics/Bitmap;

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->imageWidth:I

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->imageHeight:I

    .line 87
    iget v4, p0, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->imageWidth:I

    iget v5, p0, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->imageHeight:I

    invoke-virtual {p0, v4, v5}, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->setRenderSize(II)V

    .line 88
    iput-boolean v9, p0, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->newBitmap:Z

    .line 89
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/nio/FloatBuffer;

    iput-object v4, p0, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->textureVertices:[Ljava/nio/FloatBuffer;

    .line 91
    new-array v0, v8, [F

    fill-array-data v0, :array_0

    .line 97
    .local v0, "texData0":[F
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->textureVertices:[Ljava/nio/FloatBuffer;

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

    .line 98
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->textureVertices:[Ljava/nio/FloatBuffer;

    aget-object v4, v4, v7

    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 100
    new-array v1, v8, [F

    fill-array-data v1, :array_1

    .line 106
    .local v1, "texData1":[F
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->textureVertices:[Ljava/nio/FloatBuffer;

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

    .line 107
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->textureVertices:[Ljava/nio/FloatBuffer;

    aget-object v4, v4, v9

    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 109
    new-array v2, v8, [F

    fill-array-data v2, :array_2

    .line 115
    .local v2, "texData2":[F
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->textureVertices:[Ljava/nio/FloatBuffer;

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

    .line 116
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->textureVertices:[Ljava/nio/FloatBuffer;

    aget-object v4, v4, v10

    invoke-virtual {v4, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 118
    new-array v3, v8, [F

    fill-array-data v3, :array_3

    .line 124
    .local v3, "texData3":[F
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->textureVertices:[Ljava/nio/FloatBuffer;

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

    .line 125
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->textureVertices:[Ljava/nio/FloatBuffer;

    aget-object v4, v4, v11

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 126
    return-void

    .line 91
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

    .line 100
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

    .line 109
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

    .line 118
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

.method private loadTexture()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 143
    iget v1, p0, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->texture_in:I

    if-eqz v1, :cond_0

    .line 144
    new-array v0, v3, [I

    .line 145
    .local v0, "tex":[I
    iget v1, p0, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->texture_in:I

    aput v1, v0, v2

    .line 146
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 148
    .end local v0    # "tex":[I
    :cond_0
    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/vk/attachpicker/imageeditor/helper/ImageHelper;->bitmapToTexture(Landroid/graphics/Bitmap;)I

    move-result v1

    iput v1, p0, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->texture_in:I

    .line 149
    iput-boolean v2, p0, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->newBitmap:Z

    .line 150
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->markAsDirty()V

    .line 151
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 133
    invoke-super {p0}, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->destroy()V

    .line 134
    iget v1, p0, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->texture_in:I

    if-eqz v1, :cond_0

    .line 135
    new-array v0, v2, [I

    .line 136
    .local v0, "tex":[I
    iget v1, p0, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->texture_in:I

    aput v1, v0, v3

    .line 137
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 139
    .end local v0    # "tex":[I
    :cond_0
    iput-boolean v2, p0, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->newBitmap:Z

    .line 140
    return-void
.end method

.method protected drawFrame()V
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->newBitmap:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->loadTexture()V

    .line 62
    :cond_0
    invoke-super {p0}, Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;->drawFrame()V

    .line 63
    return-void
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->imageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->imageWidth:I

    return v0
.end method

.method public setImage(I)V
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    .line 168
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 169
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 170
    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->loadImage(Landroid/graphics/Bitmap;)V

    .line 171
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->loadImage(Landroid/graphics/Bitmap;)V

    .line 160
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 179
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 180
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 181
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vk/attachpicker/imageeditor/input/ImageResourceInput;->loadImage(Landroid/graphics/Bitmap;)V

    .line 182
    return-void
.end method

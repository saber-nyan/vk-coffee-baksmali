.class public abstract Lcom/vk/attachpicker/imageeditor/GLRenderer;
.super Ljava/lang/Object;
.source "GLRenderer.java"


# static fields
.field public static final ATTRIBUTE_POSITION:Ljava/lang/String; = "position"

.field public static final ATTRIBUTE_TEXCOORD:Ljava/lang/String; = "inputTextureCoordinate"

.field public static FRAGMENT_SHADER:Ljava/lang/String; = null

.field public static final UNIFORM_TEXTURE0:Ljava/lang/String; = "inputImageTexture"

.field protected static final UNIFORM_TEXTUREBASE:Ljava/lang/String; = "inputImageTexture"

.field public static final VARYING_TEXCOORD:Ljava/lang/String; = "textureCoordinate"

.field public static VERTEX_SHADER:Ljava/lang/String;


# instance fields
.field private alpha:F

.field private blue:F

.field protected curRotation:I

.field private customSizeSet:Z

.field private fragmentShaderHandle:I

.field private green:F

.field private height:I

.field private initialized:Z

.field protected positionHandle:I

.field protected programHandle:I

.field private red:F

.field protected renderVertices:Ljava/nio/FloatBuffer;

.field private sizeChanged:Z

.field protected texCoordHandle:I

.field protected textureHandle:I

.field protected textureVertices:[Ljava/nio/FloatBuffer;

.field protected texture_in:I

.field private vertexShaderHandle:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 342
    const-string/jumbo v0, "attribute vec4 position;\nattribute vec2 inputTextureCoordinate;\nvarying vec2 textureCoordinate;\nvoid main() {\n  textureCoordinate = inputTextureCoordinate;\n   gl_Position = position;\n}\n"

    sput-object v0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->VERTEX_SHADER:Ljava/lang/String;

    .line 352
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D inputImageTexture;\nvarying vec2 textureCoordinate;\nvoid main(){\n   gl_FragColor = texture2D(inputImageTexture,textureCoordinate);\n}\n"

    sput-object v0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->FRAGMENT_SHADER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v7, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->initialized:Z

    .line 49
    new-array v4, v8, [F

    fill-array-data v4, :array_0

    invoke-virtual {p0, v4}, Lcom/vk/attachpicker/imageeditor/GLRenderer;->setRenderVertices([F)V

    .line 56
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/nio/FloatBuffer;

    iput-object v4, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->textureVertices:[Ljava/nio/FloatBuffer;

    .line 58
    new-array v0, v8, [F

    fill-array-data v0, :array_1

    .line 64
    .local v0, "texData0":[F
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->textureVertices:[Ljava/nio/FloatBuffer;

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

    .line 65
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->textureVertices:[Ljava/nio/FloatBuffer;

    aget-object v4, v4, v7

    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 67
    new-array v1, v8, [F

    fill-array-data v1, :array_2

    .line 73
    .local v1, "texData1":[F
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->textureVertices:[Ljava/nio/FloatBuffer;

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

    .line 74
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->textureVertices:[Ljava/nio/FloatBuffer;

    aget-object v4, v4, v9

    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 76
    new-array v2, v8, [F

    fill-array-data v2, :array_3

    .line 82
    .local v2, "texData2":[F
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->textureVertices:[Ljava/nio/FloatBuffer;

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

    .line 83
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->textureVertices:[Ljava/nio/FloatBuffer;

    aget-object v4, v4, v10

    invoke-virtual {v4, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 85
    new-array v3, v8, [F

    fill-array-data v3, :array_4

    .line 91
    .local v3, "texData3":[F
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->textureVertices:[Ljava/nio/FloatBuffer;

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

    .line 92
    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->textureVertices:[Ljava/nio/FloatBuffer;

    aget-object v4, v4, v11

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 94
    iput v7, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->curRotation:I

    .line 95
    iput v7, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->texture_in:I

    .line 96
    iput-boolean v7, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->customSizeSet:Z

    .line 97
    iput-boolean v7, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->initialized:Z

    .line 98
    iput-boolean v7, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->sizeChanged:Z

    .line 99
    return-void

    .line 49
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 58
    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 67
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 76
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    .line 85
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected bindShaderAttributes()V
    .locals 3

    .prologue
    .line 203
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->programHandle:I

    const/4 v1, 0x0

    const-string/jumbo v2, "position"

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 204
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->programHandle:I

    const/4 v1, 0x1

    const-string/jumbo v2, "inputTextureCoordinate"

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 205
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 246
    iput-boolean v1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->initialized:Z

    .line 247
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->programHandle:I

    if-eqz v0, :cond_0

    .line 248
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->programHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 249
    iput v1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->programHandle:I

    .line 251
    :cond_0
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->vertexShaderHandle:I

    if-eqz v0, :cond_1

    .line 252
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->vertexShaderHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 253
    iput v1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->vertexShaderHandle:I

    .line 255
    :cond_1
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->fragmentShaderHandle:I

    if-eqz v0, :cond_2

    .line 256
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->fragmentShaderHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 257
    iput v1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->fragmentShaderHandle:I

    .line 260
    :cond_2
    return-void
.end method

.method protected drawFrame()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 328
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->texture_in:I

    if-nez v0, :cond_0

    .line 340
    :goto_0
    return-void

    .line 331
    :cond_0
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->width:I

    iget v1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->height:I

    invoke-static {v4, v4, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 332
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->programHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 334
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 335
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/GLRenderer;->getBackgroundRed()F

    move-result v0

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/GLRenderer;->getBackgroundGreen()F

    move-result v1

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/GLRenderer;->getBackgroundBlue()F

    move-result v2

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/GLRenderer;->getBackgroundAlpha()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 337
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/GLRenderer;->passShaderValues()V

    .line 339
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v4, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto :goto_0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->alpha:F

    return v0
.end method

.method public getBackgroundBlue()F
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->blue:F

    return v0
.end method

.method public getBackgroundGreen()F
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->green:F

    return v0
.end method

.method public getBackgroundRed()F
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->red:F

    return v0
.end method

.method protected getFragmentShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    sget-object v0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->FRAGMENT_SHADER:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->height:I

    return v0
.end method

.method protected getVertexShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    sget-object v0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->VERTEX_SHADER:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->width:I

    return v0
.end method

.method protected handleSizeChange()V
    .locals 0

    .prologue
    .line 325
    return-void
.end method

.method protected initShaderHandles()V
    .locals 2

    .prologue
    .line 208
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->programHandle:I

    const-string/jumbo v1, "inputImageTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->textureHandle:I

    .line 209
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->programHandle:I

    const-string/jumbo v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->positionHandle:I

    .line 210
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->programHandle:I

    const-string/jumbo v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->texCoordHandle:I

    .line 211
    return-void
.end method

.method protected initWithGLContext()V
    .locals 9

    .prologue
    const v6, 0x8b81

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 263
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/GLRenderer;->getVertexShader()Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, "vertexShader":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/GLRenderer;->getFragmentShader()Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "fragmentShader":Ljava/lang/String;
    const v5, 0x8b31

    invoke-static {v5}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v5

    iput v5, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->vertexShaderHandle:I

    .line 268
    const-string/jumbo v1, "none"

    .line 269
    .local v1, "errorInfo":Ljava/lang/String;
    iget v5, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->vertexShaderHandle:I

    if-eqz v5, :cond_0

    .line 270
    iget v5, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->vertexShaderHandle:I

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 271
    iget v5, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->vertexShaderHandle:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 272
    new-array v0, v8, [I

    .line 273
    .local v0, "compileStatus":[I
    iget v5, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->vertexShaderHandle:I

    invoke-static {v5, v6, v0, v7}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 274
    aget v5, v0, v7

    if-nez v5, :cond_0

    .line 275
    iget v5, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->vertexShaderHandle:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    .line 276
    iget v5, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->vertexShaderHandle:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 277
    iput v7, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->vertexShaderHandle:I

    .line 281
    .end local v0    # "compileStatus":[I
    :cond_0
    iget v5, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->vertexShaderHandle:I

    if-nez v5, :cond_1

    .line 282
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": Could not create vertex shader. Reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 285
    :cond_1
    const v5, 0x8b30

    invoke-static {v5}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v5

    iput v5, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->fragmentShaderHandle:I

    .line 286
    iget v5, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->fragmentShaderHandle:I

    if-eqz v5, :cond_2

    .line 287
    iget v5, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->fragmentShaderHandle:I

    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 288
    iget v5, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->fragmentShaderHandle:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 289
    new-array v0, v8, [I

    .line 290
    .restart local v0    # "compileStatus":[I
    iget v5, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->fragmentShaderHandle:I

    invoke-static {v5, v6, v0, v7}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 291
    aget v5, v0, v7

    if-nez v5, :cond_2

    .line 292
    iget v5, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->fragmentShaderHandle:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    .line 293
    iget v5, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->fragmentShaderHandle:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 294
    iput v7, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->fragmentShaderHandle:I

    .line 297
    .end local v0    # "compileStatus":[I
    :cond_2
    iget v5, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->fragmentShaderHandle:I

    if-nez v5, :cond_3

    .line 298
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": Could not create fragment shader. Reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 301
    :cond_3
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v5

    iput v5, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->programHandle:I

    .line 302
    iget v5, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->programHandle:I

    if-eqz v5, :cond_4

    .line 303
    iget v5, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->programHandle:I

    iget v6, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->vertexShaderHandle:I

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 304
    iget v5, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->programHandle:I

    iget v6, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->fragmentShaderHandle:I

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 306
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/GLRenderer;->bindShaderAttributes()V

    .line 308
    iget v5, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->programHandle:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 309
    new-array v3, v8, [I

    .line 310
    .local v3, "linkStatus":[I
    iget v5, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->programHandle:I

    const v6, 0x8b82

    invoke-static {v5, v6, v3, v7}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 311
    aget v5, v3, v7

    if-nez v5, :cond_4

    .line 312
    iget v5, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->programHandle:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 313
    iput v7, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->programHandle:I

    .line 316
    .end local v3    # "linkStatus":[I
    :cond_4
    iget v5, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->programHandle:I

    if-nez v5, :cond_5

    .line 317
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Could not create program."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 320
    :cond_5
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/GLRenderer;->initShaderHandles()V

    .line 321
    return-void
.end method

.method public onDrawFrame()V
    .locals 2

    .prologue
    .line 226
    iget-boolean v1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->initialized:Z

    if-nez v1, :cond_0

    .line 228
    :try_start_0
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/GLRenderer;->initWithGLContext()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->initialized:Z

    .line 234
    :cond_0
    iget-boolean v1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->sizeChanged:Z

    if-eqz v1, :cond_1

    .line 235
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/GLRenderer;->handleSizeChange()V

    .line 236
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->sizeChanged:Z

    .line 238
    :cond_1
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/GLRenderer;->drawFrame()V

    .line 239
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method protected passShaderValues()V
    .locals 7

    .prologue
    const/16 v2, 0x1406

    const/16 v4, 0x8

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 190
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->renderVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 191
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->positionHandle:I

    iget-object v5, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->renderVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 192
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 193
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->textureVertices:[Ljava/nio/FloatBuffer;

    iget v5, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->curRotation:I

    aget-object v0, v0, v5

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 194
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->texCoordHandle:I

    iget-object v5, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->textureVertices:[Ljava/nio/FloatBuffer;

    iget v6, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->curRotation:I

    aget-object v5, v5, v6

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 195
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->texCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 197
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 198
    const/16 v0, 0xde1

    iget v1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->texture_in:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 199
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->textureHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 200
    return-void
.end method

.method public reInitialize()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->initialized:Z

    .line 218
    return-void
.end method

.method public rotateClockwise90Degrees(I)V
    .locals 3
    .param p1, "numOfTimes"    # I

    .prologue
    .line 144
    iget v1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->curRotation:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->curRotation:I

    .line 145
    iget v1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->curRotation:I

    rem-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->curRotation:I

    .line 146
    rem-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 147
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->width:I

    .line 148
    .local v0, "temp":I
    iget v1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->height:I

    iput v1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->width:I

    .line 149
    iput v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->height:I

    .line 151
    .end local v0    # "temp":I
    :cond_0
    return-void
.end method

.method public rotateCounterClockwise90Degrees(I)V
    .locals 3
    .param p1, "numOfTimes"    # I

    .prologue
    .line 159
    iget v1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->curRotation:I

    rem-int/lit8 v2, p1, 0x4

    rsub-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    iput v1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->curRotation:I

    .line 160
    iget v1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->curRotation:I

    rem-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->curRotation:I

    .line 161
    rem-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 162
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->width:I

    .line 163
    .local v0, "temp":I
    iget v1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->height:I

    iput v1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->width:I

    .line 164
    iput v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->height:I

    .line 166
    .end local v0    # "temp":I
    :cond_0
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 457
    iput p1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->alpha:F

    .line 458
    return-void
.end method

.method public setBackgroundBlue(F)V
    .locals 0
    .param p1, "blue"    # F

    .prologue
    .line 438
    iput p1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->blue:F

    .line 439
    return-void
.end method

.method public setBackgroundColour(FFFF)V
    .locals 0
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .prologue
    .line 378
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/imageeditor/GLRenderer;->setBackgroundRed(F)V

    .line 379
    invoke-virtual {p0, p2}, Lcom/vk/attachpicker/imageeditor/GLRenderer;->setBackgroundGreen(F)V

    .line 380
    invoke-virtual {p0, p3}, Lcom/vk/attachpicker/imageeditor/GLRenderer;->setBackgroundBlue(F)V

    .line 381
    invoke-virtual {p0, p4}, Lcom/vk/attachpicker/imageeditor/GLRenderer;->setBackgroundAlpha(F)V

    .line 382
    return-void
.end method

.method public setBackgroundGreen(F)V
    .locals 0
    .param p1, "green"    # F

    .prologue
    .line 419
    iput p1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->green:F

    .line 420
    return-void
.end method

.method public setBackgroundRed(F)V
    .locals 0
    .param p1, "red"    # F

    .prologue
    .line 400
    iput p1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->red:F

    .line 401
    return-void
.end method

.method protected setHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->customSizeSet:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->height:I

    if-eq v0, p1, :cond_0

    .line 133
    iput p1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->height:I

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->sizeChanged:Z

    .line 136
    :cond_0
    return-void
.end method

.method public setRenderSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x1

    .line 178
    iput-boolean v1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->customSizeSet:Z

    .line 179
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->curRotation:I

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v1, :cond_0

    .line 180
    iput p2, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->width:I

    .line 181
    iput p1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->height:I

    .line 186
    :goto_0
    iput-boolean v1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->sizeChanged:Z

    .line 187
    return-void

    .line 183
    :cond_0
    iput p1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->width:I

    .line 184
    iput p2, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->height:I

    goto :goto_0
.end method

.method protected setRenderVertices([F)V
    .locals 2
    .param p1, "vertices"    # [F

    .prologue
    .line 102
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->renderVertices:Ljava/nio/FloatBuffer;

    .line 103
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->renderVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 104
    return-void
.end method

.method protected setWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->customSizeSet:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->width:I

    if-eq v0, p1, :cond_0

    .line 126
    iput p1, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->width:I

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/imageeditor/GLRenderer;->sizeChanged:Z

    .line 129
    :cond_0
    return-void
.end method

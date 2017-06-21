.class public Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;
.super Lcom/vk/attachpicker/imageeditor/filter/BasicFilter;
.source "AllInOneFilter.java"


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String;


# instance fields
.field private final centerLutTexture:[I

.field private centerLutTextureHandle:I

.field private final centerOriginal:F

.field private centerOriginalHandle:I

.field private final enhanceBitmap:Landroid/graphics/Bitmap;

.field private enhanceIntensityHandle:I

.field private enhanceIntensityValue:F

.field private final enhanceTexture:[I

.field private enhanceTextureHandle:I

.field private filterIntensity:F

.field private filterIntensityHandle:I

.field private filterPosition:F

.field private filterPositionHandle:I

.field private final leftLutTexture:[I

.field private leftLutTextureHandle:I

.field private final leftOriginal:F

.field private leftOriginalHandle:I

.field private final lutCenter:Landroid/graphics/Bitmap;

.field private final lutLeft:Landroid/graphics/Bitmap;

.field private final lutRight:Landroid/graphics/Bitmap;

.field private final rightLutTexture:[I

.field private rightLutTextureHandle:I

.field private final rightOriginal:F

.field private rightOriginalHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lcom/vk/attachpicker/jni/Native;->createAllInOneShader()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->FRAGMENT_SHADER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;)V
    .locals 4
    .param p1, "enhanceBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "leftFilter"    # Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;
    .param p3, "centerFilter"    # Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;
    .param p4, "rightFilter"    # Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;

    .prologue
    const/4 v3, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/filter/BasicFilter;-><init>()V

    .line 16
    iput v2, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->filterPosition:F

    .line 17
    iput v1, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->filterIntensity:F

    .line 19
    iput v2, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->enhanceIntensityValue:F

    .line 44
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->leftLutTexture:[I

    .line 45
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->centerLutTexture:[I

    .line 46
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->rightLutTexture:[I

    .line 47
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->enhanceTexture:[I

    .line 51
    iput-object p1, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->enhanceBitmap:Landroid/graphics/Bitmap;

    .line 53
    invoke-static {p2}, Lcom/vk/attachpicker/imageeditor/LutManager;->getLookupBitmap(Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->lutLeft:Landroid/graphics/Bitmap;

    .line 54
    invoke-static {p3}, Lcom/vk/attachpicker/imageeditor/LutManager;->getLookupBitmap(Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->lutCenter:Landroid/graphics/Bitmap;

    .line 55
    invoke-static {p4}, Lcom/vk/attachpicker/imageeditor/LutManager;->getLookupBitmap(Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->lutRight:Landroid/graphics/Bitmap;

    .line 56
    const-string/jumbo v0, "FILTER_ID_ORIGINAL"

    iget-object v3, p2, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->leftOriginal:F

    .line 57
    const-string/jumbo v0, "FILTER_ID_ORIGINAL"

    iget-object v3, p3, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->centerOriginal:F

    .line 58
    const-string/jumbo v0, "FILTER_ID_ORIGINAL"

    iget-object v3, p4, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput v1, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->rightOriginal:F

    .line 59
    return-void

    :cond_0
    move v0, v2

    .line 56
    goto :goto_0

    :cond_1
    move v0, v2

    .line 57
    goto :goto_1

    :cond_2
    move v1, v2

    .line 58
    goto :goto_2
.end method

.method private static passTexture(I[III)V
    .locals 2
    .param p0, "activeTexture"    # I
    .param p1, "texture"    # [I
    .param p2, "textureHandle"    # I
    .param p3, "index"    # I

    .prologue
    .line 158
    invoke-static {p0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 159
    const/16 v0, 0xde1

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 160
    invoke-static {p2, p3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 161
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 87
    invoke-super {p0}, Lcom/vk/attachpicker/imageeditor/filter/BasicFilter;->destroy()V

    .line 89
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->leftLutTexture:[I

    aget v0, v0, v1

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->leftLutTexture:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 91
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->leftLutTexture:[I

    aput v1, v0, v1

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->centerLutTexture:[I

    aget v0, v0, v1

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->centerLutTexture:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 95
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->centerLutTexture:[I

    aput v1, v0, v1

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->rightLutTexture:[I

    aget v0, v0, v1

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->rightLutTexture:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 99
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->rightLutTexture:[I

    aput v1, v0, v1

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->enhanceTexture:[I

    aget v0, v0, v1

    if-eqz v0, :cond_3

    .line 103
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->enhanceTexture:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 104
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->enhanceTexture:[I

    aput v1, v0, v1

    .line 106
    :cond_3
    return-void
.end method

.method protected getFragmentShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->FRAGMENT_SHADER:Ljava/lang/String;

    return-object v0
.end method

.method protected initShaderHandles()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/vk/attachpicker/imageeditor/filter/BasicFilter;->initShaderHandles()V

    .line 112
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->programHandle:I

    const-string/jumbo v1, "filterPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->filterPositionHandle:I

    .line 113
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->programHandle:I

    const-string/jumbo v1, "filterIntensity"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->filterIntensityHandle:I

    .line 114
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->programHandle:I

    const-string/jumbo v1, "autoEnhanceIntensity"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->enhanceIntensityHandle:I

    .line 115
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->programHandle:I

    const-string/jumbo v1, "leftOriginal"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->leftOriginalHandle:I

    .line 116
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->programHandle:I

    const-string/jumbo v1, "centerOriginal"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->centerOriginalHandle:I

    .line 117
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->programHandle:I

    const-string/jumbo v1, "rightOriginal"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->rightOriginalHandle:I

    .line 119
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->programHandle:I

    const-string/jumbo v1, "leftLutTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->leftLutTextureHandle:I

    .line 120
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->programHandle:I

    const-string/jumbo v1, "centerLutTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->centerLutTextureHandle:I

    .line 121
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->programHandle:I

    const-string/jumbo v1, "rightLutTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->rightLutTextureHandle:I

    .line 122
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->programHandle:I

    const-string/jumbo v1, "enhanceTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->enhanceTextureHandle:I

    .line 123
    return-void
.end method

.method public newTextureReady(ILcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;Z)V
    .locals 3
    .param p1, "texture"    # I
    .param p2, "source"    # Lcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;
    .param p3, "newData"    # Z

    .prologue
    const/4 v2, 0x0

    .line 67
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->leftLutTexture:[I

    aget v0, v0, v2

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->leftLutTexture:[I

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->lutLeft:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/vk/attachpicker/imageeditor/helper/ImageHelper;->bitmapToTexture(Landroid/graphics/Bitmap;)I

    move-result v1

    aput v1, v0, v2

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->centerLutTexture:[I

    aget v0, v0, v2

    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->centerLutTexture:[I

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->lutCenter:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/vk/attachpicker/imageeditor/helper/ImageHelper;->bitmapToTexture(Landroid/graphics/Bitmap;)I

    move-result v1

    aput v1, v0, v2

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->rightLutTexture:[I

    aget v0, v0, v2

    if-nez v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->rightLutTexture:[I

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->lutRight:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/vk/attachpicker/imageeditor/helper/ImageHelper;->bitmapToTexture(Landroid/graphics/Bitmap;)I

    move-result v1

    aput v1, v0, v2

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->enhanceTexture:[I

    aget v0, v0, v2

    if-nez v0, :cond_3

    .line 78
    iget-object v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->enhanceTexture:[I

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->enhanceBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/vk/attachpicker/imageeditor/helper/ImageHelper;->bitmapToTexture(Landroid/graphics/Bitmap;)I

    move-result v1

    aput v1, v0, v2

    .line 81
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/vk/attachpicker/imageeditor/filter/BasicFilter;->newTextureReady(ILcom/vk/attachpicker/imageeditor/input/GLTextureOutputRenderer;Z)V

    .line 82
    return-void
.end method

.method protected passShaderValues()V
    .locals 4

    .prologue
    .line 127
    invoke-super {p0}, Lcom/vk/attachpicker/imageeditor/filter/BasicFilter;->passShaderValues()V

    .line 129
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->filterPositionHandle:I

    iget v1, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->filterPosition:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 130
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->filterIntensityHandle:I

    iget v1, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->filterIntensity:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 131
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->enhanceIntensityHandle:I

    iget v1, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->enhanceIntensityValue:F

    iget v2, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->filterIntensity:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 132
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->leftOriginalHandle:I

    iget v1, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->leftOriginal:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 133
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->centerOriginalHandle:I

    iget v1, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->centerOriginal:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 134
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->rightOriginalHandle:I

    iget v1, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->rightOriginal:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 136
    const v0, 0x84c1

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->leftLutTexture:[I

    iget v2, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->leftLutTextureHandle:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->passTexture(I[III)V

    .line 137
    const v0, 0x84c2

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->centerLutTexture:[I

    iget v2, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->centerLutTextureHandle:I

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->passTexture(I[III)V

    .line 138
    const v0, 0x84c3

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->rightLutTexture:[I

    iget v2, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->rightLutTextureHandle:I

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->passTexture(I[III)V

    .line 139
    const v0, 0x84c4

    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->enhanceTexture:[I

    iget v2, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->enhanceTextureHandle:I

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->passTexture(I[III)V

    .line 140
    return-void
.end method

.method public setEnhanceIntensity(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 62
    iput p1, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->enhanceIntensityValue:F

    .line 63
    return-void
.end method

.method public setFilterPosition(F)V
    .locals 0
    .param p1, "filterPosition"    # F

    .prologue
    .line 148
    iput p1, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->filterPosition:F

    .line 149
    return-void
.end method

.method public setIntensity(F)V
    .locals 0
    .param p1, "intensityValue"    # F

    .prologue
    .line 144
    iput p1, p0, Lcom/vk/attachpicker/imageeditor/filter/AllInOneFilter;->filterIntensity:F

    .line 145
    return-void
.end method

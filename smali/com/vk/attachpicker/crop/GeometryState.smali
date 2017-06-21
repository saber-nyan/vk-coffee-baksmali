.class public Lcom/vk/attachpicker/crop/GeometryState;
.super Ljava/lang/Object;
.source "GeometryState.java"


# static fields
.field private static final LOCAL_SCALE_FINDER:Lcom/vk/attachpicker/crop/MinimumScaleFinder;

.field private static final MAX_SCALE:F = 5.0f


# instance fields
.field private baseRotation:F

.field private cropAspectRatio:F

.field private defaultScale:F

.field private final height:F

.field private rotation:F

.field private scale:F

.field private final transformationMatrix:Landroid/graphics/Matrix;

.field private tx:F

.field private ty:F

.field private final width:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;

    invoke-direct {v0}, Lcom/vk/attachpicker/crop/MinimumScaleFinder;-><init>()V

    sput-object v0, Lcom/vk/attachpicker/crop/GeometryState;->LOCAL_SCALE_FINDER:Lcom/vk/attachpicker/crop/MinimumScaleFinder;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v1, p0, Lcom/vk/attachpicker/crop/GeometryState;->defaultScale:F

    .line 16
    iput v1, p0, Lcom/vk/attachpicker/crop/GeometryState;->scale:F

    .line 17
    iput v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->rotation:F

    .line 18
    iput v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->baseRotation:F

    .line 19
    iput v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->tx:F

    .line 20
    iput v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->ty:F

    .line 22
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->transformationMatrix:Landroid/graphics/Matrix;

    .line 25
    iput p1, p0, Lcom/vk/attachpicker/crop/GeometryState;->width:F

    .line 26
    iput p2, p0, Lcom/vk/attachpicker/crop/GeometryState;->height:F

    .line 27
    div-float v0, p1, p2

    iput v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->cropAspectRatio:F

    .line 28
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 155
    if-ne p0, p1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v1

    .line 156
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 158
    check-cast v0, Lcom/vk/attachpicker/crop/GeometryState;

    .line 160
    .local v0, "that":Lcom/vk/attachpicker/crop/GeometryState;
    iget v3, v0, Lcom/vk/attachpicker/crop/GeometryState;->cropAspectRatio:F

    iget v4, p0, Lcom/vk/attachpicker/crop/GeometryState;->cropAspectRatio:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 161
    :cond_4
    iget-object v3, p0, Lcom/vk/attachpicker/crop/GeometryState;->transformationMatrix:Landroid/graphics/Matrix;

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/vk/attachpicker/crop/GeometryState;->transformationMatrix:Landroid/graphics/Matrix;

    iget-object v2, v0, Lcom/vk/attachpicker/crop/GeometryState;->transformationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lcom/vk/attachpicker/crop/GeometryState;->transformationMatrix:Landroid/graphics/Matrix;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getBaseRotation()F
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->baseRotation:F

    return v0
.end method

.method public getCropAspectRatio()F
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->cropAspectRatio:F

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->height:F

    return v0
.end method

.method public getHeightForWidth(F)F
    .locals 1
    .param p1, "forWidth"    # F

    .prologue
    .line 150
    iget v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->cropAspectRatio:F

    div-float v0, p1, v0

    return v0
.end method

.method public getMaxScale()F
    .locals 2

    .prologue
    .line 122
    iget v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->defaultScale:F

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getOriginalAspectRatio()F
    .locals 2

    .prologue
    .line 142
    iget v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->width:F

    iget v1, p0, Lcom/vk/attachpicker/crop/GeometryState;->height:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->rotation:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->scale:F

    return v0
.end method

.method public getTransformationMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 89
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/crop/GeometryState;->getTransformationMatrix(Landroid/graphics/Matrix;)V

    .line 90
    return-object v0
.end method

.method public getTransformationMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->transformationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 85
    return-void
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->width:F

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 167
    iget v2, p0, Lcom/vk/attachpicker/crop/GeometryState;->cropAspectRatio:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/vk/attachpicker/crop/GeometryState;->cropAspectRatio:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 168
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/vk/attachpicker/crop/GeometryState;->transformationMatrix:Landroid/graphics/Matrix;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/vk/attachpicker/crop/GeometryState;->transformationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 169
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 167
    goto :goto_0
.end method

.method public isDefaultState()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    iget v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->rotation:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->tx:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->ty:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->baseRotation:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->scale:F

    iget v1, p0, Lcom/vk/attachpicker/crop/GeometryState;->defaultScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->width:F

    iget v1, p0, Lcom/vk/attachpicker/crop/GeometryState;->height:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/vk/attachpicker/crop/GeometryState;->cropAspectRatio:F

    sub-float/2addr v0, v1

    .line 103
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefaultTranslation()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    iget v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->tx:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->ty:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postRotate(FFF)V
    .locals 1
    .param p1, "deltaRotate"    # F
    .param p2, "focalX"    # F
    .param p3, "focalY"    # F

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->transformationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 75
    iget v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->rotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->rotation:F

    .line 76
    return-void
.end method

.method public postRotate90Degrees(FF)V
    .locals 2
    .param p1, "focalX"    # F
    .param p2, "focalY"    # F

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->transformationMatrix:Landroid/graphics/Matrix;

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v1, p1, p2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 80
    iget v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->baseRotation:F

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->baseRotation:F

    .line 81
    return-void
.end method

.method public postScale(FFF)V
    .locals 1
    .param p1, "deltaScale"    # F
    .param p2, "focalX"    # F
    .param p3, "focalY"    # F

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->transformationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 70
    iget v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->scale:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->scale:F

    .line 71
    return-void
.end method

.method public postTranslate(FF)V
    .locals 1
    .param p1, "translateX"    # F
    .param p2, "translateY"    # F

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->transformationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 64
    iget v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->tx:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->tx:F

    .line 65
    iget v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->ty:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->ty:F

    .line 66
    return-void
.end method

.method public resetTransformationMatrix()V
    .locals 3

    .prologue
    .line 31
    sget v0, Lcom/vk/attachpicker/editor/ImageState;->PREVIEW_WIDTH:F

    float-to-int v0, v0

    sget v1, Lcom/vk/attachpicker/editor/ImageState;->PREVIEW_WIDTH:F

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/crop/GeometryState;->getHeightForWidth(F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/vk/attachpicker/crop/CropUtils;->createCropAreaProvider(II)Lcom/vk/attachpicker/crop/CropAreaProvider;

    move-result-object v0

    sget-object v1, Lcom/vk/attachpicker/crop/GeometryState;->LOCAL_SCALE_FINDER:Lcom/vk/attachpicker/crop/MinimumScaleFinder;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/vk/attachpicker/crop/GeometryState;->resetTransformationMatrix(Lcom/vk/attachpicker/crop/CropAreaProvider;Lcom/vk/attachpicker/crop/MinimumScaleFinder;I)V

    .line 32
    return-void
.end method

.method public resetTransformationMatrix(Lcom/vk/attachpicker/crop/CropAreaProvider;Lcom/vk/attachpicker/crop/MinimumScaleFinder;I)V
    .locals 9
    .param p1, "cropAreaProvider"    # Lcom/vk/attachpicker/crop/CropAreaProvider;
    .param p2, "minimumScaleFinder"    # Lcom/vk/attachpicker/crop/MinimumScaleFinder;
    .param p3, "baseRotation"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 35
    iget-object v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->transformationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 36
    int-to-float v0, p3

    iput v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->baseRotation:F

    .line 37
    iput v1, p0, Lcom/vk/attachpicker/crop/GeometryState;->rotation:F

    .line 38
    iput v1, p0, Lcom/vk/attachpicker/crop/GeometryState;->tx:F

    .line 39
    iput v1, p0, Lcom/vk/attachpicker/crop/GeometryState;->ty:F

    .line 41
    invoke-interface {p1}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCenterX()F

    move-result v0

    iget v2, p0, Lcom/vk/attachpicker/crop/GeometryState;->width:F

    div-float/2addr v2, v3

    sub-float v7, v0, v2

    .line 42
    .local v7, "dx":F
    invoke-interface {p1}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCenterY()F

    move-result v0

    iget v2, p0, Lcom/vk/attachpicker/crop/GeometryState;->height:F

    div-float/2addr v2, v3

    sub-float v8, v0, v2

    .line 43
    .local v8, "dy":F
    iget-object v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->transformationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 45
    iget v2, p0, Lcom/vk/attachpicker/crop/GeometryState;->width:F

    iget v3, p0, Lcom/vk/attachpicker/crop/GeometryState;->height:F

    rem-int/lit16 v0, p3, 0xb4

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-interface {p1}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCropWidth()F

    move-result v5

    invoke-interface {p1}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCropHeight()F

    move-result v6

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->findMinimumScale(FFFZFF)F

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->scale:F

    .line 46
    iget v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->scale:F

    iput v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->defaultScale:F

    .line 47
    iget-object v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->transformationMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/vk/attachpicker/crop/GeometryState;->scale:F

    iget v2, p0, Lcom/vk/attachpicker/crop/GeometryState;->scale:F

    invoke-interface {p1}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCenterX()F

    move-result v3

    invoke-interface {p1}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCenterY()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 49
    iget-object v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->transformationMatrix:Landroid/graphics/Matrix;

    int-to-float v1, p3

    invoke-interface {p1}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCenterX()F

    move-result v2

    invoke-interface {p1}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCenterY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 51
    rem-int/lit16 v0, p3, 0xb4

    if-nez v0, :cond_1

    .line 52
    iget v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->width:F

    iget v1, p0, Lcom/vk/attachpicker/crop/GeometryState;->height:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->cropAspectRatio:F

    .line 56
    :goto_1
    return-void

    .line 45
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 54
    :cond_1
    iget v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->height:F

    iget v1, p0, Lcom/vk/attachpicker/crop/GeometryState;->width:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->cropAspectRatio:F

    goto :goto_1
.end method

.method public set(Lcom/vk/attachpicker/crop/GeometryState;)V
    .locals 2
    .param p1, "geometryState"    # Lcom/vk/attachpicker/crop/GeometryState;

    .prologue
    .line 107
    iget v0, p1, Lcom/vk/attachpicker/crop/GeometryState;->defaultScale:F

    iput v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->defaultScale:F

    .line 108
    iget v0, p1, Lcom/vk/attachpicker/crop/GeometryState;->scale:F

    iput v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->scale:F

    .line 109
    iget v0, p1, Lcom/vk/attachpicker/crop/GeometryState;->rotation:F

    iput v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->rotation:F

    .line 110
    iget v0, p1, Lcom/vk/attachpicker/crop/GeometryState;->baseRotation:F

    iput v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->baseRotation:F

    .line 111
    iget-object v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->transformationMatrix:Landroid/graphics/Matrix;

    iget-object v1, p1, Lcom/vk/attachpicker/crop/GeometryState;->transformationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 112
    iget v0, p1, Lcom/vk/attachpicker/crop/GeometryState;->tx:F

    iput v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->tx:F

    .line 113
    iget v0, p1, Lcom/vk/attachpicker/crop/GeometryState;->ty:F

    iput v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->ty:F

    .line 114
    iget v0, p1, Lcom/vk/attachpicker/crop/GeometryState;->cropAspectRatio:F

    iput v0, p0, Lcom/vk/attachpicker/crop/GeometryState;->cropAspectRatio:F

    .line 115
    return-void
.end method

.method public setCropAspectRatio(F)V
    .locals 0
    .param p1, "cropAspectRatio"    # F

    .prologue
    .line 59
    iput p1, p0, Lcom/vk/attachpicker/crop/GeometryState;->cropAspectRatio:F

    .line 60
    return-void
.end method

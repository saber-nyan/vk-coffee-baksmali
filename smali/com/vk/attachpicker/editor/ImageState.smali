.class public Lcom/vk/attachpicker/editor/ImageState;
.super Ljava/lang/Object;
.source "ImageState.java"


# static fields
.field public static final PREVIEW_WIDTH:F


# instance fields
.field private autoEnhanceValue:F

.field private autoFixedBitmap:Landroid/graphics/Bitmap;

.field private autoFixedGeometryState:Lcom/vk/attachpicker/crop/GeometryState;

.field private bigBitmap:Landroid/graphics/Bitmap;

.field private croppedBitmap:Landroid/graphics/Bitmap;

.field private croppedGeometryState:Lcom/vk/attachpicker/crop/GeometryState;

.field private final entry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

.field private final file:Ljava/io/File;

.field private geometryState:Lcom/vk/attachpicker/crop/GeometryState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const/16 v0, 0x438

    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->realWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/vk/attachpicker/editor/ImageState;->PREVIEW_WIDTH:F

    return-void
.end method

.method public constructor <init>(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)V
    .locals 1
    .param p1, "entry"    # Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/vk/attachpicker/editor/ImageState;->entry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->file:Ljava/io/File;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/vk/attachpicker/editor/ImageState;->file:Ljava/io/File;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->entry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    .line 44
    return-void
.end method

.method private stubCropAreaProvider(I)Lcom/vk/attachpicker/crop/CropAreaProvider;
    .locals 2
    .param p1, "targetWidth"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    int-to-float v1, p1

    .line 135
    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/crop/GeometryState;->getHeightForWidth(F)F

    move-result v0

    float-to-int v0, v0

    .line 134
    invoke-static {p1, v0}, Lcom/vk/attachpicker/crop/CropUtils;->createCropAreaProvider(II)Lcom/vk/attachpicker/crop/CropAreaProvider;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAutoEnhanceValue()F
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/vk/attachpicker/editor/ImageState;->autoEnhanceValue:F

    return v0
.end method

.method public declared-synchronized getAutoFixedBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/vk/attachpicker/editor/ImageState;->getCroppedBitmap()Landroid/graphics/Bitmap;

    .line 100
    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->autoFixedGeometryState:Lcom/vk/attachpicker/crop/GeometryState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->autoFixedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->autoFixedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->autoFixedGeometryState:Lcom/vk/attachpicker/crop/GeometryState;

    iget-object v1, p0, Lcom/vk/attachpicker/editor/ImageState;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/crop/GeometryState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->croppedBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->autoFixedBitmap:Landroid/graphics/Bitmap;

    .line 102
    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->autoFixedBitmap:Landroid/graphics/Bitmap;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/vk/attachpicker/jni/Native;->enhanceBitmap(Landroid/graphics/Bitmap;F)V

    .line 103
    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->autoFixedBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/vk/attachpicker/jni/Native;->flipVerticallyBitmap(Landroid/graphics/Bitmap;)V

    .line 105
    new-instance v0, Lcom/vk/attachpicker/crop/GeometryState;

    iget-object v1, p0, Lcom/vk/attachpicker/editor/ImageState;->autoFixedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/vk/attachpicker/editor/ImageState;->autoFixedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/vk/attachpicker/crop/GeometryState;-><init>(FF)V

    iput-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->autoFixedGeometryState:Lcom/vk/attachpicker/crop/GeometryState;

    .line 106
    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->autoFixedGeometryState:Lcom/vk/attachpicker/crop/GeometryState;

    iget-object v1, p0, Lcom/vk/attachpicker/editor/ImageState;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/crop/GeometryState;->set(Lcom/vk/attachpicker/crop/GeometryState;)V

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->autoFixedBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBigBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->bigBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->bigBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 65
    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->bigBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->bigBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->file:Ljava/io/File;

    if-eqz v0, :cond_4

    .line 67
    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->file:Ljava/io/File;

    invoke-static {v0}, Lcom/vk/attachpicker/util/ImageLoader;->getDisplayImage(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->bigBitmap:Landroid/graphics/Bitmap;

    .line 77
    :cond_2
    :goto_0
    new-instance v0, Lcom/vk/attachpicker/crop/GeometryState;

    iget-object v1, p0, Lcom/vk/attachpicker/editor/ImageState;->bigBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/vk/attachpicker/editor/ImageState;->bigBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/vk/attachpicker/crop/GeometryState;-><init>(FF)V

    iput-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    .line 78
    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/GeometryState;->resetTransformationMatrix()V

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->bigBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 69
    :cond_4
    :try_start_1
    sget-object v0, Lcom/vk/attachpicker/Picker;->imageCache:Lcom/vk/attachpicker/util/ImageCache;

    iget-object v1, p0, Lcom/vk/attachpicker/editor/ImageState;->entry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    invoke-virtual {v1}, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->getDisplayImageKey()Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/util/ImageCache;->get(Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->bigBitmap:Landroid/graphics/Bitmap;

    .line 70
    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->bigBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->bigBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 71
    :cond_5
    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->entry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    invoke-static {v0}, Lcom/vk/attachpicker/util/ImageLoader;->getDisplayImage(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->bigBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 73
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->bigBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->bigBitmap:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized getCroppedBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/vk/attachpicker/editor/ImageState;->getBigBitmap()Landroid/graphics/Bitmap;

    .line 85
    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->croppedGeometryState:Lcom/vk/attachpicker/crop/GeometryState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->croppedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->croppedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->croppedGeometryState:Lcom/vk/attachpicker/crop/GeometryState;

    iget-object v1, p0, Lcom/vk/attachpicker/editor/ImageState;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/crop/GeometryState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->bigBitmap:Landroid/graphics/Bitmap;

    sget v1, Lcom/vk/attachpicker/editor/ImageState;->PREVIEW_WIDTH:F

    float-to-int v1, v1

    .line 87
    invoke-direct {p0, v1}, Lcom/vk/attachpicker/editor/ImageState;->stubCropAreaProvider(I)Lcom/vk/attachpicker/crop/CropAreaProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/attachpicker/editor/ImageState;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    .line 88
    invoke-virtual {v2}, Lcom/vk/attachpicker/crop/GeometryState;->getTransformationMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    sget v3, Lcom/vk/attachpicker/editor/ImageState;->PREVIEW_WIDTH:F

    float-to-int v3, v3

    .line 86
    invoke-static {v0, v1, v2, v3}, Lcom/vk/attachpicker/crop/CropUtils;->applySquareMatrixFixed(Landroid/graphics/Bitmap;Lcom/vk/attachpicker/crop/CropAreaProvider;Landroid/graphics/Matrix;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->croppedBitmap:Landroid/graphics/Bitmap;

    .line 91
    new-instance v0, Lcom/vk/attachpicker/crop/GeometryState;

    iget-object v1, p0, Lcom/vk/attachpicker/editor/ImageState;->croppedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/vk/attachpicker/editor/ImageState;->croppedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/vk/attachpicker/crop/GeometryState;-><init>(FF)V

    iput-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->croppedGeometryState:Lcom/vk/attachpicker/crop/GeometryState;

    .line 92
    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->croppedGeometryState:Lcom/vk/attachpicker/crop/GeometryState;

    iget-object v1, p0, Lcom/vk/attachpicker/editor/ImageState;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/crop/GeometryState;->set(Lcom/vk/attachpicker/crop/GeometryState;)V

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->croppedBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCroppedBitmap(I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "targetWidth"    # I

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/vk/attachpicker/editor/ImageState;->getBigBitmap()Landroid/graphics/Bitmap;

    .line 113
    iget-object v1, p0, Lcom/vk/attachpicker/editor/ImageState;->bigBitmap:Landroid/graphics/Bitmap;

    .line 114
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/editor/ImageState;->stubCropAreaProvider(I)Lcom/vk/attachpicker/crop/CropAreaProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/vk/attachpicker/editor/ImageState;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    .line 115
    invoke-virtual {v3}, Lcom/vk/attachpicker/crop/GeometryState;->getTransformationMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    sget v4, Lcom/vk/attachpicker/editor/ImageState;->PREVIEW_WIDTH:F

    int-to-float v5, p1

    invoke-static {v3, v4, v5}, Lcom/vk/attachpicker/crop/CropUtils;->createScaleMatrix(Landroid/graphics/Matrix;FF)Landroid/graphics/Matrix;

    move-result-object v3

    sget v4, Lcom/vk/attachpicker/editor/ImageState;->PREVIEW_WIDTH:F

    float-to-int v4, v4

    .line 113
    invoke-static {v1, v2, v3, v4}, Lcom/vk/attachpicker/crop/CropUtils;->applySquareMatrixFixed(Landroid/graphics/Bitmap;Lcom/vk/attachpicker/crop/CropAreaProvider;Landroid/graphics/Matrix;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    .local v0, "bigCroppedBitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public getCroppedBitmapAspectRatio()F
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/vk/attachpicker/editor/ImageState;->getCroppedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/vk/attachpicker/util/BitmapUtils;->getAspectRatio(Landroid/graphics/Bitmap;)F

    move-result v0

    return v0
.end method

.method public getCroppedBitmapMatrix(Landroid/graphics/RectF;)Landroid/graphics/Matrix;
    .locals 3
    .param p1, "drawingRect"    # Landroid/graphics/RectF;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/GeometryState;->getTransformationMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    sget v1, Lcom/vk/attachpicker/editor/ImageState;->PREVIEW_WIDTH:F

    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->realWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v1, v2, p1}, Lcom/vk/attachpicker/crop/CropUtils;->createDrawingMatrix(Landroid/graphics/Matrix;FFLandroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    return-object v0
.end method

.method public setAutoEnhanceValue(F)V
    .locals 0
    .param p1, "autoEnhanceValue"    # F

    .prologue
    .line 130
    iput p1, p0, Lcom/vk/attachpicker/editor/ImageState;->autoEnhanceValue:F

    .line 131
    return-void
.end method

.method public setGeometryState(Lcom/vk/attachpicker/crop/GeometryState;)V
    .locals 3
    .param p1, "geometryState"    # Lcom/vk/attachpicker/crop/GeometryState;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {p1}, Lcom/vk/attachpicker/crop/GeometryState;->getWidth()F

    move-result v1

    invoke-virtual {p1}, Lcom/vk/attachpicker/crop/GeometryState;->getHeight()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/vk/attachpicker/crop/GeometryState;-><init>(FF)V

    iput-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/editor/ImageState;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/crop/GeometryState;->set(Lcom/vk/attachpicker/crop/GeometryState;)V

    .line 55
    return-void
.end method

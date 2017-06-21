.class public Lcom/vk/attachpicker/crop/CropController;
.super Ljava/lang/Object;
.source "CropController.java"

# interfaces
.implements Lcom/vk/attachpicker/crop/CropTouchListener$GestureCallback;
.implements Lcom/vk/attachpicker/widget/AdjusterView$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;
    }
.end annotation


# instance fields
.field private volatile animationInProgress:Z

.field private final cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

.field private final cropRect:[Landroid/graphics/PointF;

.field private final geometryState:Lcom/vk/attachpicker/crop/GeometryState;

.field private final imageRect:[Landroid/graphics/PointF;

.field private final imageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentSpringbackRunnable:Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

.field private final matrix:Landroid/graphics/Matrix;

.field private final minimumScaleFinder:Lcom/vk/attachpicker/crop/MinimumScaleFinder;

.field private final minimumTranslationFinder:Lcom/vk/attachpicker/crop/MinimumTranslationFinder;

.field private final rawImageRect:[F

.field private final workMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/vk/attachpicker/crop/CropAreaProvider;FF)V
    .locals 7
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "cropAreaProvider"    # Lcom/vk/attachpicker/crop/CropAreaProvider;
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/vk/attachpicker/crop/MinimumScaleFinder;

    invoke-direct {v0}, Lcom/vk/attachpicker/crop/MinimumScaleFinder;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->minimumScaleFinder:Lcom/vk/attachpicker/crop/MinimumScaleFinder;

    .line 18
    new-instance v0, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;

    invoke-direct {v0}, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->minimumTranslationFinder:Lcom/vk/attachpicker/crop/MinimumTranslationFinder;

    .line 24
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->matrix:Landroid/graphics/Matrix;

    .line 25
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->workMatrix:Landroid/graphics/Matrix;

    .line 199
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->rawImageRect:[F

    .line 200
    new-array v0, v6, [Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, v4

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->cropRect:[Landroid/graphics/PointF;

    .line 206
    new-array v0, v6, [Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, v4

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->imageRect:[Landroid/graphics/PointF;

    .line 30
    iput-object p2, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    .line 31
    new-instance v0, Lcom/vk/attachpicker/crop/GeometryState;

    invoke-direct {v0, p3, p4}, Lcom/vk/attachpicker/crop/GeometryState;-><init>(FF)V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->imageView:Ljava/lang/ref/WeakReference;

    .line 33
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/vk/attachpicker/crop/CropController;)Lcom/vk/attachpicker/crop/GeometryState;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/crop/CropController;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vk/attachpicker/crop/CropController;)Lcom/vk/attachpicker/crop/CropAreaProvider;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/crop/CropController;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    return-object v0
.end method

.method private isImageFitScreen(F)Z
    .locals 8
    .param p1, "deltaScale"    # F

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 226
    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v1}, Lcom/vk/attachpicker/crop/GeometryState;->getOriginalAspectRatio()F

    move-result v1

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->rawImageRect:[F

    aput v4, v1, v0

    .line 228
    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->rawImageRect:[F

    aput v4, v1, v5

    .line 229
    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->rawImageRect:[F

    iget-object v2, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v2}, Lcom/vk/attachpicker/crop/GeometryState;->getWidth()F

    move-result v2

    aput v2, v1, v6

    .line 230
    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->rawImageRect:[F

    aput v4, v1, v7

    .line 231
    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->rawImageRect:[F

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v3}, Lcom/vk/attachpicker/crop/GeometryState;->getWidth()F

    move-result v3

    aput v3, v1, v2

    .line 232
    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->rawImageRect:[F

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v3}, Lcom/vk/attachpicker/crop/GeometryState;->getHeight()F

    move-result v3

    aput v3, v1, v2

    .line 233
    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->rawImageRect:[F

    const/4 v2, 0x6

    aput v4, v1, v2

    .line 234
    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->rawImageRect:[F

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v3}, Lcom/vk/attachpicker/crop/GeometryState;->getHeight()F

    move-result v3

    aput v3, v1, v2

    .line 236
    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    iget-object v2, p0, Lcom/vk/attachpicker/crop/CropController;->workMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/crop/GeometryState;->getTransformationMatrix(Landroid/graphics/Matrix;)V

    .line 237
    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->workMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    invoke-interface {v2}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCenterX()F

    move-result v2

    iget-object v3, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    invoke-interface {v3}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCenterY()F

    move-result v3

    invoke-virtual {v1, p1, p1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 238
    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->workMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/vk/attachpicker/crop/CropController;->rawImageRect:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 240
    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->imageRect:[Landroid/graphics/PointF;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/vk/attachpicker/crop/CropController;->rawImageRect:[F

    aget v2, v2, v0

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 241
    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->imageRect:[Landroid/graphics/PointF;

    aget-object v0, v1, v0

    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->rawImageRect:[F

    aget v1, v1, v5

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 242
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->imageRect:[Landroid/graphics/PointF;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->rawImageRect:[F

    aget v1, v1, v6

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 243
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->imageRect:[Landroid/graphics/PointF;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->rawImageRect:[F

    aget v1, v1, v7

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 244
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->imageRect:[Landroid/graphics/PointF;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->rawImageRect:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 245
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->imageRect:[Landroid/graphics/PointF;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->rawImageRect:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 246
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->imageRect:[Landroid/graphics/PointF;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->rawImageRect:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 247
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->imageRect:[Landroid/graphics/PointF;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->rawImageRect:[F

    const/4 v2, 0x7

    aget v1, v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 249
    invoke-direct {p0}, Lcom/vk/attachpicker/crop/CropController;->updateCropRect()V

    .line 250
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->imageRect:[Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->cropRect:[Landroid/graphics/PointF;

    invoke-static {v0, v1}, Lcom/vk/attachpicker/crop/MathCropUtils;->isPolygonContainsRectangle([Landroid/graphics/PointF;[Landroid/graphics/PointF;)Z

    move-result v0

    .line 252
    :cond_0
    return v0
.end method

.method private static rubberBandDistance(FF)F
    .locals 4
    .param p0, "offset"    # F
    .param p1, "dimension"    # F

    .prologue
    .line 150
    const v0, 0x3edc28f6    # 0.43f

    .line 151
    .local v0, "constant":F
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v0

    mul-float/2addr v2, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v0

    add-float/2addr v3, p1

    div-float v1, v2, v3

    .line 152
    .local v1, "result":F
    const/4 v2, 0x0

    cmpg-float v2, p0, v2

    if-gez v2, :cond_0

    neg-float v1, v1

    .end local v1    # "result":F
    :cond_0
    return v1
.end method

.method private updateCropRect()V
    .locals 6

    .prologue
    .line 215
    iget-object v4, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    invoke-interface {v4}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getX0()F

    move-result v0

    .line 216
    .local v0, "_x0":F
    iget-object v4, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    invoke-interface {v4}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getX1()F

    move-result v1

    .line 217
    .local v1, "_x1":F
    iget-object v4, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    invoke-interface {v4}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getY0()F

    move-result v2

    .line 218
    .local v2, "_y0":F
    iget-object v4, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    invoke-interface {v4}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getY1()F

    move-result v3

    .line 219
    .local v3, "_y1":F
    iget-object v4, p0, Lcom/vk/attachpicker/crop/CropController;->cropRect:[Landroid/graphics/PointF;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 220
    iget-object v4, p0, Lcom/vk/attachpicker/crop/CropController;->cropRect:[Landroid/graphics/PointF;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 221
    iget-object v4, p0, Lcom/vk/attachpicker/crop/CropController;->cropRect:[Landroid/graphics/PointF;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 222
    iget-object v4, p0, Lcom/vk/attachpicker/crop/CropController;->cropRect:[Landroid/graphics/PointF;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4, v0, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 223
    return-void
.end method


# virtual methods
.method public cancelSpringback()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->mCurrentSpringbackRunnable:Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->mCurrentSpringbackRunnable:Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;->cancelTranslate()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->mCurrentSpringbackRunnable:Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

    .line 70
    :cond_0
    return-void
.end method

.method public cropBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "maxWidth"    # I

    .prologue
    .line 366
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 367
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 368
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v1}, Lcom/vk/attachpicker/crop/GeometryState;->getTransformationMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-static {p1, v0, v1, p2}, Lcom/vk/attachpicker/crop/CropUtils;->applySquareMatrixFixed(Landroid/graphics/Bitmap;Lcom/vk/attachpicker/crop/CropAreaProvider;Landroid/graphics/Matrix;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCropRect()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 257
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    .line 258
    invoke-interface {v1}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getX0()F

    move-result v1

    iget-object v2, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    .line 259
    invoke-interface {v2}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getY0()F

    move-result v2

    iget-object v3, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    .line 260
    invoke-interface {v3}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getX1()F

    move-result v3

    iget-object v4, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    .line 261
    invoke-interface {v4}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getY1()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getGeometryState()Lcom/vk/attachpicker/crop/GeometryState;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    return-object v0
.end method

.method public getImageRect()Landroid/graphics/RectF;
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 266
    const/16 v1, 0x8

    new-array v0, v1, [F

    .line 268
    .local v0, "_rawImageRect":[F
    aput v3, v0, v4

    .line 269
    aput v3, v0, v5

    .line 270
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v2}, Lcom/vk/attachpicker/crop/GeometryState;->getWidth()F

    move-result v2

    aput v2, v0, v1

    .line 271
    const/4 v1, 0x3

    aput v3, v0, v1

    .line 272
    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v1}, Lcom/vk/attachpicker/crop/GeometryState;->getWidth()F

    move-result v1

    aput v1, v0, v6

    .line 273
    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v1}, Lcom/vk/attachpicker/crop/GeometryState;->getHeight()F

    move-result v1

    aput v1, v0, v7

    .line 274
    const/4 v1, 0x6

    aput v3, v0, v1

    .line 275
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v2}, Lcom/vk/attachpicker/crop/GeometryState;->getHeight()F

    move-result v2

    aput v2, v0, v1

    .line 277
    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    iget-object v2, p0, Lcom/vk/attachpicker/crop/CropController;->workMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/crop/GeometryState;->getTransformationMatrix(Landroid/graphics/Matrix;)V

    .line 278
    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->workMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 280
    new-instance v1, Landroid/graphics/RectF;

    aget v2, v0, v4

    aget v3, v0, v5

    aget v4, v0, v6

    aget v5, v0, v7

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public isAnimationInProgress()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/vk/attachpicker/crop/CropController;->animationInProgress:Z

    return v0
.end method

.method public onAnimationEnd()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vk/attachpicker/crop/CropController;->animationInProgress:Z

    .line 58
    return-void
.end method

.method public onAnimationStart()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/crop/CropController;->animationInProgress:Z

    .line 54
    return-void
.end method

.method public onRotate(F)V
    .locals 14
    .param p1, "newRotate"    # F

    .prologue
    .line 167
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/GeometryState;->getRotation()F

    move-result v1

    .line 168
    .local v1, "oldRotate":F
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->minimumScaleFinder:Lcom/vk/attachpicker/crop/MinimumScaleFinder;

    iget-object v2, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    .line 170
    invoke-virtual {v2}, Lcom/vk/attachpicker/crop/GeometryState;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    .line 171
    invoke-virtual {v3}, Lcom/vk/attachpicker/crop/GeometryState;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    .line 172
    invoke-virtual {v4}, Lcom/vk/attachpicker/crop/GeometryState;->getBaseRotation()F

    move-result v4

    const/high16 v5, 0x43340000    # 180.0f

    rem-float/2addr v4, v5

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    iget-object v5, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    .line 173
    invoke-interface {v5}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCropWidth()F

    move-result v5

    iget-object v6, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    .line 174
    invoke-interface {v6}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCropHeight()F

    move-result v6

    .line 168
    invoke-virtual/range {v0 .. v6}, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->findMinimumScale(FFFZFF)F

    move-result v12

    .line 175
    .local v12, "oldMinimumScale":F
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/GeometryState;->getScale()F

    move-result v13

    .line 177
    .local v13, "oldScale":F
    sub-float v9, p1, v1

    .line 178
    .local v9, "deltaRotate":F
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    iget-object v2, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    invoke-interface {v2}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCenterX()F

    move-result v2

    iget-object v3, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    invoke-interface {v3}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCenterY()F

    move-result v3

    invoke-virtual {v0, v9, v2, v3}, Lcom/vk/attachpicker/crop/GeometryState;->postRotate(FFF)V

    .line 180
    iget-object v2, p0, Lcom/vk/attachpicker/crop/CropController;->minimumScaleFinder:Lcom/vk/attachpicker/crop/MinimumScaleFinder;

    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    .line 182
    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/GeometryState;->getWidth()F

    move-result v4

    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    .line 183
    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/GeometryState;->getHeight()F

    move-result v5

    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    .line 184
    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/GeometryState;->getBaseRotation()F

    move-result v0

    const/high16 v3, 0x43340000    # 180.0f

    rem-float/2addr v0, v3

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_3

    const/4 v6, 0x1

    :goto_1
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    .line 185
    invoke-interface {v0}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCropWidth()F

    move-result v7

    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    .line 186
    invoke-interface {v0}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCropHeight()F

    move-result v8

    move v3, p1

    .line 180
    invoke-virtual/range {v2 .. v8}, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->findMinimumScale(FFFZFF)F

    move-result v11

    .line 187
    .local v11, "newScale":F
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/GeometryState;->getScale()F

    move-result v0

    cmpl-float v0, v11, v0

    if-gtz v0, :cond_0

    cmpl-float v0, v12, v13

    if-nez v0, :cond_1

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/GeometryState;->getScale()F

    move-result v0

    div-float v10, v11, v0

    .line 189
    .local v10, "deltaScale":F
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    iget-object v2, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    invoke-interface {v2}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCenterX()F

    move-result v2

    iget-object v3, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    invoke-interface {v3}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCenterY()F

    move-result v3

    invoke-virtual {v0, v10, v2, v3}, Lcom/vk/attachpicker/crop/GeometryState;->postScale(FFF)V

    .line 191
    .end local v10    # "deltaScale":F
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/crop/CropController;->springback(Z)V

    .line 192
    return-void

    .line 172
    .end local v9    # "deltaRotate":F
    .end local v11    # "newScale":F
    .end local v12    # "oldMinimumScale":F
    .end local v13    # "oldScale":F
    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 184
    .restart local v9    # "deltaRotate":F
    .restart local v12    # "oldMinimumScale":F
    .restart local v13    # "oldScale":F
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public onScale(FFF)V
    .locals 1
    .param p1, "scaleDelta"    # F
    .param p2, "focalX"    # F
    .param p3, "focalY"    # F

    .prologue
    .line 134
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vk/attachpicker/crop/GeometryState;->postScale(FFF)V

    .line 135
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/CropController;->updateMatrix()V

    .line 136
    return-void
.end method

.method public onTouchBegin()V
    .locals 0

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/CropController;->cancelSpringback()V

    .line 158
    return-void
.end method

.method public onTouchEnd()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/crop/CropController;->springback(Z)V

    .line 163
    return-void
.end method

.method public onTranslate(FF)Z
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 140
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/crop/CropController;->isImageFitScreen(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    invoke-interface {v0}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCropWidth()F

    move-result v0

    invoke-static {p1, v0}, Lcom/vk/attachpicker/crop/CropController;->rubberBandDistance(FF)F

    move-result p1

    .line 142
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    invoke-interface {v0}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCropHeight()F

    move-result v0

    invoke-static {p2, v0}, Lcom/vk/attachpicker/crop/CropController;->rubberBandDistance(FF)F

    move-result p2

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v0, p1, p2}, Lcom/vk/attachpicker/crop/GeometryState;->postTranslate(FF)V

    .line 145
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/CropController;->updateMatrix()V

    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method public reset(I)V
    .locals 3
    .param p1, "baseRotation"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    iget-object v2, p0, Lcom/vk/attachpicker/crop/CropController;->minimumScaleFinder:Lcom/vk/attachpicker/crop/MinimumScaleFinder;

    invoke-virtual {v0, v1, v2, p1}, Lcom/vk/attachpicker/crop/GeometryState;->resetTransformationMatrix(Lcom/vk/attachpicker/crop/CropAreaProvider;Lcom/vk/attachpicker/crop/MinimumScaleFinder;I)V

    .line 62
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/CropController;->updateMatrix()V

    .line 63
    return-void
.end method

.method public rotate90Degress()V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    invoke-interface {v1}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCenterX()F

    move-result v1

    iget-object v2, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    invoke-interface {v2}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCenterY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vk/attachpicker/crop/GeometryState;->postRotate90Degrees(FF)V

    .line 196
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/CropController;->updateMatrix()V

    .line 197
    return-void
.end method

.method public springback(Z)V
    .locals 1
    .param p1, "animated"    # Z

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vk/attachpicker/crop/CropController;->springback(ZZ)V

    .line 74
    return-void
.end method

.method public springback(ZZ)V
    .locals 13
    .param p1, "animated"    # Z
    .param p2, "fit"    # Z

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->imageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 79
    .local v12, "view":Landroid/view/View;
    if-nez v12, :cond_0

    .line 130
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    invoke-interface {v1}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCropAspectRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/crop/GeometryState;->setCropAspectRatio(F)V

    .line 84
    const/high16 v11, 0x3f800000    # 1.0f

    .line 85
    .local v11, "scale":F
    const/4 v8, 0x0

    .line 86
    .local v8, "dx":F
    const/4 v9, 0x0

    .line 88
    .local v9, "dy":F
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->minimumScaleFinder:Lcom/vk/attachpicker/crop/MinimumScaleFinder;

    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    .line 89
    invoke-virtual {v1}, Lcom/vk/attachpicker/crop/GeometryState;->getRotation()F

    move-result v1

    iget-object v2, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    .line 90
    invoke-virtual {v2}, Lcom/vk/attachpicker/crop/GeometryState;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    .line 91
    invoke-virtual {v3}, Lcom/vk/attachpicker/crop/GeometryState;->getHeight()F

    move-result v3

    iget-object v4, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    .line 92
    invoke-virtual {v4}, Lcom/vk/attachpicker/crop/GeometryState;->getBaseRotation()F

    move-result v4

    const/high16 v5, 0x43340000    # 180.0f

    rem-float/2addr v4, v5

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    iget-object v5, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    .line 93
    invoke-interface {v5}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCropWidth()F

    move-result v5

    iget-object v6, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    .line 94
    invoke-interface {v6}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCropHeight()F

    move-result v6

    .line 88
    invoke-virtual/range {v0 .. v6}, Lcom/vk/attachpicker/crop/MinimumScaleFinder;->findMinimumScale(FFFZFF)F

    move-result v7

    .line 96
    .local v7, "currentMinScale":F
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/GeometryState;->isDefaultTranslation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/GeometryState;->getScale()F

    move-result v0

    div-float v11, v7, v0

    .line 106
    :cond_1
    :goto_2
    invoke-direct {p0, v11}, Lcom/vk/attachpicker/crop/CropController;->isImageFitScreen(F)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 107
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->minimumTranslationFinder:Lcom/vk/attachpicker/crop/MinimumTranslationFinder;

    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->imageRect:[Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    .line 108
    invoke-interface {v2}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCropWidth()F

    move-result v2

    iget-object v3, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    invoke-interface {v3}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCropHeight()F

    move-result v3

    iget-object v4, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    .line 109
    invoke-interface {v4}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getX0()F

    move-result v4

    iget-object v5, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    invoke-interface {v5}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getY0()F

    move-result v5

    iget-object v6, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v6}, Lcom/vk/attachpicker/crop/GeometryState;->getRotation()F

    move-result v6

    .line 107
    invoke-virtual/range {v0 .. v6}, Lcom/vk/attachpicker/crop/MinimumTranslationFinder;->findMinTranslate([Landroid/graphics/PointF;FFFFF)Landroid/graphics/PointF;

    move-result-object v10

    .line 110
    .local v10, "p":Landroid/graphics/PointF;
    iget v8, v10, Landroid/graphics/PointF;->x:F

    .line 111
    iget v9, v10, Landroid/graphics/PointF;->y:F

    .line 113
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 114
    const v0, 0x3f8147ae    # 1.01f

    mul-float/2addr v11, v0

    goto :goto_2

    .line 92
    .end local v7    # "currentMinScale":F
    .end local v10    # "p":Landroid/graphics/PointF;
    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 99
    .restart local v7    # "currentMinScale":F
    :cond_3
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/GeometryState;->getScale()F

    move-result v0

    cmpg-float v0, v0, v7

    if-gez v0, :cond_4

    .line 100
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/GeometryState;->getScale()F

    move-result v0

    div-float v11, v7, v0

    goto :goto_2

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/GeometryState;->getScale()F

    move-result v0

    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v1}, Lcom/vk/attachpicker/crop/GeometryState;->getMaxScale()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v0}, Lcom/vk/attachpicker/crop/GeometryState;->getMaxScale()F

    move-result v0

    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    invoke-virtual {v1}, Lcom/vk/attachpicker/crop/GeometryState;->getScale()F

    move-result v1

    div-float v11, v0, v1

    goto/16 :goto_2

    .line 118
    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v11, v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    cmpl-float v0, v9, v0

    if-eqz v0, :cond_8

    .line 119
    :cond_6
    if-eqz p1, :cond_7

    .line 120
    new-instance v0, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

    neg-float v1, v8

    neg-float v2, v9

    invoke-direct {v0, p0, v11, v1, v2}, Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;-><init>(Lcom/vk/attachpicker/crop/CropController;FFF)V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->mCurrentSpringbackRunnable:Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

    .line 121
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->mCurrentSpringbackRunnable:Lcom/vk/attachpicker/crop/CropController$SpringbackRunnable;

    invoke-virtual {v12, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 123
    :cond_7
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    invoke-interface {v1}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCenterX()F

    move-result v1

    iget-object v2, p0, Lcom/vk/attachpicker/crop/CropController;->cropAreaProvider:Lcom/vk/attachpicker/crop/CropAreaProvider;

    invoke-interface {v2}, Lcom/vk/attachpicker/crop/CropAreaProvider;->getCenterY()F

    move-result v2

    invoke-virtual {v0, v11, v1, v2}, Lcom/vk/attachpicker/crop/GeometryState;->postScale(FFF)V

    .line 124
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    neg-float v1, v8

    neg-float v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/vk/attachpicker/crop/GeometryState;->postTranslate(FF)V

    .line 125
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/CropController;->updateMatrix()V

    goto/16 :goto_0

    .line 128
    :cond_8
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/CropController;->updateMatrix()V

    goto/16 :goto_0
.end method

.method public updateMatrix()V
    .locals 3

    .prologue
    .line 37
    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->geometryState:Lcom/vk/attachpicker/crop/GeometryState;

    iget-object v2, p0, Lcom/vk/attachpicker/crop/CropController;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/crop/GeometryState;->getTransformationMatrix(Landroid/graphics/Matrix;)V

    .line 38
    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->imageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 39
    .local v0, "iv":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 40
    iget-object v1, p0, Lcom/vk/attachpicker/crop/CropController;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 42
    :cond_0
    return-void
.end method

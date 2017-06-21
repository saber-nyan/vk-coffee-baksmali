.class public Lcom/vkcoffee/android/ui/PhotoStripView;
.super Landroid/view/View;
.source "PhotoStripView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/PhotoStripView$OnPhotoClickListener;
    }
.end annotation


# instance fields
.field private alpha:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bmps:[Landroid/graphics/Bitmap;

.field private gListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private listener:Lcom/vkcoffee/android/ui/PhotoStripView$OnPhotoClickListener;

.field private moreIcon:Landroid/graphics/drawable/Drawable;

.field private offset:F

.field private overlap:F

.field private overlapClipX:I

.field private overlapShape:Landroid/graphics/Path;

.field private padding:I

.field private paint:Landroid/graphics/Paint;

.field private placeholder:Landroid/graphics/drawable/Drawable;

.field private placeholderShader:Landroid/graphics/BitmapShader;

.field private shaders:[Landroid/graphics/BitmapShader;

.field private showMoreIcon:Z

.field private tmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    new-array v0, v5, [Landroid/graphics/Bitmap;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->bmps:[Landroid/graphics/Bitmap;

    .line 28
    new-array v0, v5, [Landroid/graphics/BitmapShader;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->shaders:[Landroid/graphics/BitmapShader;

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->alpha:Landroid/util/SparseArray;

    .line 30
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->padding:I

    .line 33
    new-instance v0, Lcom/vkcoffee/android/ui/PhotoStripView$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/PhotoStripView$1;-><init>(Lcom/vkcoffee/android/ui/PhotoStripView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->gListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->offset:F

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->tmpMatrix:Landroid/graphics/Matrix;

    .line 51
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->overlap:F

    .line 52
    iput v2, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->overlapClipX:I

    .line 53
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->showMoreIcon:Z

    .line 58
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/PhotoStripView;->init()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-array v0, v5, [Landroid/graphics/Bitmap;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->bmps:[Landroid/graphics/Bitmap;

    .line 28
    new-array v0, v5, [Landroid/graphics/BitmapShader;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->shaders:[Landroid/graphics/BitmapShader;

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->alpha:Landroid/util/SparseArray;

    .line 30
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->padding:I

    .line 33
    new-instance v0, Lcom/vkcoffee/android/ui/PhotoStripView$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/PhotoStripView$1;-><init>(Lcom/vkcoffee/android/ui/PhotoStripView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->gListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->offset:F

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->tmpMatrix:Landroid/graphics/Matrix;

    .line 51
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->overlap:F

    .line 52
    iput v2, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->overlapClipX:I

    .line 53
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->showMoreIcon:Z

    .line 63
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/PhotoStripView;->init()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-array v0, v5, [Landroid/graphics/Bitmap;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->bmps:[Landroid/graphics/Bitmap;

    .line 28
    new-array v0, v5, [Landroid/graphics/BitmapShader;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->shaders:[Landroid/graphics/BitmapShader;

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->alpha:Landroid/util/SparseArray;

    .line 30
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->padding:I

    .line 33
    new-instance v0, Lcom/vkcoffee/android/ui/PhotoStripView$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/PhotoStripView$1;-><init>(Lcom/vkcoffee/android/ui/PhotoStripView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->gListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->offset:F

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->tmpMatrix:Landroid/graphics/Matrix;

    .line 51
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->overlap:F

    .line 52
    iput v2, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->overlapClipX:I

    .line 53
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->showMoreIcon:Z

    .line 68
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/PhotoStripView;->init()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/PhotoStripView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/PhotoStripView;

    .prologue
    .line 25
    iget v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->padding:I

    return v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/ui/PhotoStripView;)[Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/PhotoStripView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->bmps:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/ui/PhotoStripView;)Lcom/vkcoffee/android/ui/PhotoStripView$OnPhotoClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/PhotoStripView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->listener:Lcom/vkcoffee/android/ui/PhotoStripView$OnPhotoClickListener;

    return-object v0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 72
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->paint:Landroid/graphics/Paint;

    .line 73
    iget-object v1, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PhotoStripView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->placeholder:Landroid/graphics/drawable/Drawable;

    .line 75
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PhotoStripView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->gListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->gestureDetector:Landroid/view/GestureDetector;

    .line 76
    iget-object v1, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->placeholder:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->placeholder:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 78
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->placeholderShader:Landroid/graphics/BitmapShader;

    .line 80
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->overlapShape:Landroid/graphics/Path;

    .line 81
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PhotoStripView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->moreIcon:Landroid/graphics/drawable/Drawable;

    .line 82
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->bmps:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->bmps:[Landroid/graphics/Bitmap;

    array-length v0, v0

    goto :goto_0
.end method

.method public getOffset()F
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->offset:F

    return v0
.end method

.method public getTargetFor(I)Lme/grishka/appkit/imageloader/ViewImageLoader$Target;
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 165
    new-instance v0, Lcom/vkcoffee/android/ui/PhotoStripView$2;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/ui/PhotoStripView$2;-><init>(Lcom/vkcoffee/android/ui/PhotoStripView;I)V

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 210
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 211
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PhotoStripView;->getHeight()I

    move-result v3

    .line 212
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->bmps:[Landroid/graphics/Bitmap;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 213
    iget-object v5, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->bmps:[Landroid/graphics/Bitmap;

    aget-object v0, v5, v1

    .line 214
    .local v0, "bmp":Landroid/graphics/Bitmap;
    mul-int v5, v3, v1

    iget v7, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->padding:I

    mul-int/2addr v7, v1

    add-int/2addr v5, v7

    iget v7, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->offset:F

    iget v8, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->padding:I

    add-int/2addr v8, v3

    int-to-float v8, v8

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sub-int v4, v5, v7

    .line 215
    .local v4, "x":I
    if-lez v1, :cond_0

    iget v5, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->overlap:F

    cmpg-float v5, v5, v10

    if-gez v5, :cond_0

    .line 216
    int-to-float v5, v4

    int-to-float v7, v3

    iget v8, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->overlap:F

    sub-float v8, v10, v8

    mul-float/2addr v7, v8

    int-to-float v8, v1

    mul-float/2addr v7, v8

    sub-float/2addr v5, v7

    float-to-int v4, v5

    .line 218
    :cond_0
    iget-object v7, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->paint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->alpha:Landroid/util/SparseArray;

    const/16 v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 219
    add-int v5, v4, v3

    int-to-float v7, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v8, v5

    iget-boolean v5, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->showMoreIcon:Z

    if-eqz v5, :cond_4

    int-to-float v5, v3

    const/high16 v9, 0x3fc00000    # 1.5f

    mul-float/2addr v5, v9

    :goto_1
    sub-float v5, v8, v5

    cmpl-float v5, v7, v5

    if-lez v5, :cond_5

    .line 249
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v4    # "x":I
    :cond_1
    iget-boolean v5, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->showMoreIcon:Z

    if-eqz v5, :cond_3

    .line 250
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->padding:I

    add-int/2addr v6, v3

    div-int/2addr v5, v6

    add-int/lit8 v2, v5, -0x1

    .line 251
    .local v2, "maxIndex":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PhotoStripView;->getCount()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->padding:I

    add-int/2addr v6, v3

    mul-int v4, v5, v6

    .line 252
    .restart local v4    # "x":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PhotoStripView;->getCount()I

    move-result v5

    if-le v2, v5, :cond_2

    .line 253
    iget v5, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->offset:F

    iget v6, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->padding:I

    add-int/2addr v6, v3

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int/2addr v4, v5

    .line 255
    :cond_2
    iget-object v5, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->moreIcon:Landroid/graphics/drawable/Drawable;

    add-int v6, v4, v3

    invoke-virtual {v5, v4, v11, v6, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 256
    iget-object v5, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->moreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 258
    .end local v2    # "maxIndex":I
    .end local v4    # "x":I
    :cond_3
    return-void

    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v4    # "x":I
    :cond_4
    move v5, v6

    .line 219
    goto :goto_1

    .line 222
    :cond_5
    if-eqz v0, :cond_9

    .line 223
    iget-object v5, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->tmpMatrix:Landroid/graphics/Matrix;

    int-to-float v7, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    int-to-float v8, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 224
    iget-object v5, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->tmpMatrix:Landroid/graphics/Matrix;

    int-to-float v7, v4

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 225
    iget-object v5, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->shaders:[Landroid/graphics/BitmapShader;

    aget-object v5, v5, v1

    iget-object v7, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v7}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 226
    iget-object v5, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->paint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->shaders:[Landroid/graphics/BitmapShader;

    aget-object v7, v7, v1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 236
    :goto_2
    if-nez v0, :cond_6

    iget-object v5, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->placeholderShader:Landroid/graphics/BitmapShader;

    if-eqz v5, :cond_8

    .line 237
    :cond_6
    iget v5, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->overlap:F

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_7

    if-nez v1, :cond_b

    .line 238
    :cond_7
    div-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v4

    int-to-float v5, v5

    div-int/lit8 v7, v3, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v3, 0x2

    int-to-float v8, v8

    iget-object v9, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 212
    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 227
    :cond_9
    iget-object v5, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->placeholderShader:Landroid/graphics/BitmapShader;

    if-eqz v5, :cond_a

    .line 228
    iget-object v5, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->tmpMatrix:Landroid/graphics/Matrix;

    int-to-float v7, v3

    iget-object v8, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->placeholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    int-to-float v8, v3

    iget-object v9, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->placeholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 229
    iget-object v5, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->tmpMatrix:Landroid/graphics/Matrix;

    int-to-float v7, v4

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 230
    iget-object v5, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->placeholderShader:Landroid/graphics/BitmapShader;

    iget-object v7, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v7}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 231
    iget-object v5, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->paint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->placeholderShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    .line 233
    :cond_a
    iget-object v5, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->placeholder:Landroid/graphics/drawable/Drawable;

    mul-int v7, v3, v1

    iget v8, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->padding:I

    mul-int/2addr v8, v1

    add-int/2addr v7, v8

    add-int/2addr v7, v3

    invoke-virtual {v5, v4, v11, v7, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 234
    iget-object v5, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->placeholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 240
    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 241
    iget-object v5, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->overlapShape:Landroid/graphics/Path;

    int-to-float v7, v4

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Path;->offset(FF)V

    .line 242
    iget v5, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->overlapClipX:I

    add-int/2addr v5, v4

    add-int v7, v4, v3

    invoke-virtual {p1, v5, v11, v7, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 243
    iget-object v5, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->overlapShape:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 244
    iget-object v5, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->overlapShape:Landroid/graphics/Path;

    neg-int v7, v4

    int-to-float v7, v7

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Path;->offset(FF)V

    .line 245
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 185
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 186
    .local v0, "h":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 187
    .local v1, "w":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v3, v4, :cond_0

    .line 188
    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/ui/PhotoStripView;->setMeasuredDimension(II)V

    .line 201
    :goto_0
    return-void

    .line 189
    :cond_0
    iget v3, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->overlap:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 190
    const/4 v2, 0x0

    .line 191
    .local v2, "ww":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PhotoStripView;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 192
    iget v3, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->padding:I

    add-int/2addr v3, v0

    add-int/2addr v2, v3

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PhotoStripView;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 195
    int-to-float v3, v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PhotoStripView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v4, v0

    int-to-float v4, v4

    iget v5, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->overlap:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->padding:I

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PhotoStripView;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    mul-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 197
    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/vkcoffee/android/ui/PhotoStripView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 199
    .end local v2    # "ww":I
    :cond_3
    iget v3, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->padding:I

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PhotoStripView;->getCount()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {p0, v3, v0}, Lcom/vkcoffee/android/ui/PhotoStripView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 205
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 206
    iget v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->overlap:F

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/PhotoStripView;->setOverlapOffset(F)V

    .line 207
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->listener:Lcom/vkcoffee/android/ui/PhotoStripView$OnPhotoClickListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->overlap:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 111
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setBitmap(ILandroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "pos"    # I
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 91
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->bmps:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->bmps:[Landroid/graphics/Bitmap;

    aput-object p2, v0, p1

    .line 95
    iget-object v1, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->shaders:[Landroid/graphics/BitmapShader;

    if-eqz p2, :cond_2

    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p2, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    :goto_1
    aput-object v0, v1, p1

    .line 96
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PhotoStripView;->invalidate()V

    goto :goto_0

    .line 95
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setBitmapAlpha(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 156
    const/16 v0, 0xff

    if-ne p2, v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->alpha:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 161
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PhotoStripView;->invalidate()V

    .line 162
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->alpha:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public setCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 85
    new-array v0, p1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->bmps:[Landroid/graphics/Bitmap;

    .line 86
    new-array v0, p1, [Landroid/graphics/BitmapShader;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->shaders:[Landroid/graphics/BitmapShader;

    .line 87
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PhotoStripView;->requestLayout()V

    .line 88
    return-void
.end method

.method public setListener(Lcom/vkcoffee/android/ui/PhotoStripView$OnPhotoClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkcoffee/android/ui/PhotoStripView$OnPhotoClickListener;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->listener:Lcom/vkcoffee/android/ui/PhotoStripView$OnPhotoClickListener;

    .line 118
    return-void
.end method

.method public setOffset(F)V
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 100
    iput p1, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->offset:F

    .line 101
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PhotoStripView;->invalidate()V

    .line 102
    return-void
.end method

.method public setOverlapOffset(F)V
    .locals 26
    .param p1, "overlap"    # F

    .prologue
    .line 126
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/ui/PhotoStripView;->overlap:F

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/PhotoStripView;->getHeight()I

    move-result v14

    .line 128
    .local v14, "size":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/PhotoStripView;->overlapShape:Landroid/graphics/Path;

    invoke-virtual {v15}, Landroid/graphics/Path;->reset()V

    .line 129
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/PhotoStripView;->overlapShape:Landroid/graphics/Path;

    sget-object v18, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 131
    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v15, p1, v15

    if-nez v15, :cond_0

    .line 148
    :goto_0
    return-void

    .line 137
    :cond_0
    div-int/lit8 v15, v14, 0x2

    int-to-float v12, v15

    .local v12, "r":F
    div-int/lit8 v15, v14, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/PhotoStripView;->padding:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    add-int v15, v15, v18

    int-to-float v13, v15

    .line 138
    .local v13, "s":F
    div-int/lit8 v15, v14, 0x2

    int-to-float v2, v15

    .local v2, "a":F
    div-int/lit8 v15, v14, 0x2

    int-to-float v3, v15

    .local v3, "b":F
    neg-float v15, v13

    const/high16 v18, 0x40000000    # 2.0f

    mul-float v18, v18, v13

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, p1

    mul-float v18, v18, v19

    add-float v4, v15, v18

    .local v4, "c":F
    div-int/lit8 v15, v14, 0x2

    int-to-float v5, v15

    .line 139
    .local v5, "d":F
    sub-float v6, v4, v2

    .local v6, "e":F
    sub-float v7, v5, v3

    .line 140
    .local v7, "f":F
    float-to-double v0, v6

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    float-to-double v0, v7

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 141
    .local v10, "p":D
    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v18

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    float-to-double v0, v12

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    add-double v18, v18, v20

    float-to-double v0, v13

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    sub-double v18, v18, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v20, v20, v10

    div-double v8, v18, v20

    .line 142
    .local v8, "k":D
    float-to-double v0, v2

    move-wide/from16 v18, v0

    float-to-double v0, v6

    move-wide/from16 v20, v0

    mul-double v20, v20, v8

    div-double v20, v20, v10

    add-double v18, v18, v20

    float-to-double v0, v7

    move-wide/from16 v20, v0

    div-double v20, v20, v10

    float-to-double v0, v12

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v24

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    sub-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v16, v18, v20

    .line 144
    .local v16, "x":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v15, v0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/vkcoffee/android/ui/PhotoStripView;->overlapClipX:I

    .line 145
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/PhotoStripView;->overlapShape:Landroid/graphics/Path;

    sget-object v18, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v18

    invoke-virtual {v15, v2, v3, v12, v0}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/PhotoStripView;->overlapShape:Landroid/graphics/Path;

    sget-object v18, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v18

    invoke-virtual {v15, v4, v5, v13, v0}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/PhotoStripView;->invalidate()V

    goto/16 :goto_0
.end method

.method public setPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->padding:I

    .line 122
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PhotoStripView;->invalidate()V

    .line 123
    return-void
.end method

.method public setShowMoreIcon(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/PhotoStripView;->showMoreIcon:Z

    .line 152
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/PhotoStripView;->invalidate()V

    .line 153
    return-void
.end method

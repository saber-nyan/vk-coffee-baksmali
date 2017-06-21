.class public Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SnippetBitmapDrawable.java"


# static fields
.field public static final TYPE_HORIZONTAL:I = 0x0

.field public static final TYPE_NONE:I = 0x2

.field public static final TYPE_VERTICAL:I = 0x1


# instance fields
.field private bitmapBounds:Landroid/graphics/RectF;

.field private bmp:Landroid/graphics/Bitmap;

.field private matrix:Landroid/graphics/Matrix;

.field private paint:Landroid/graphics/Paint;

.field private final radius:F

.field private shader:Landroid/graphics/BitmapShader;

.field private strokePaint:Landroid/graphics/Paint;

.field private final strokeWidth:F

.field private tmpRect:Landroid/graphics/RectF;

.field private final type:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IF)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "type"    # I
    .param p3, "strokeWidth"    # F

    .prologue
    const/4 v4, 0x1

    .line 33
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->bitmapBounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    .line 26
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->matrix:Landroid/graphics/Matrix;

    .line 29
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->radius:F

    .line 34
    iput-object p1, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->bmp:Landroid/graphics/Bitmap;

    .line 35
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->bmp:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->shader:Landroid/graphics/BitmapShader;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->paint:Landroid/graphics/Paint;

    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->shader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 38
    iput p3, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->strokeWidth:F

    .line 39
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->strokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->strokePaint:Landroid/graphics/Paint;

    const v1, 0x3d000c1a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    :cond_0
    iput p2, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->type:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "isHorizontal"    # Z

    .prologue
    .line 49
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;-><init>(Landroid/graphics/Bitmap;IF)V

    .line 50
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 59
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v7, v0, v1

    .line 60
    .local v7, "sratio":F
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float v6, v0, v1

    .line 61
    .local v6, "dratio":F
    cmpg-float v0, v7, v6

    if-gez v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->bitmapBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 63
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->bitmapBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->bitmapBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v8

    invoke-virtual {v0, v4, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->bitmapBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 69
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 70
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->bitmapBounds:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 71
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->shader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 72
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 74
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 75
    iget v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->type:I

    if-nez v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->radius:F

    mul-float/2addr v2, v8

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 80
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->radius:F

    iget v2, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->radius:F

    iget-object v3, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 81
    iget v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->strokeWidth:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    .line 82
    iget v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->type:I

    if-nez v0, :cond_4

    .line 83
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->strokeWidth:F

    div-float/2addr v1, v8

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->radius:F

    mul-float/2addr v1, v8

    sub-float v1, v0, v1

    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->strokeWidth:F

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->strokeWidth:F

    div-float/2addr v3, v8

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->radius:F

    mul-float/2addr v3, v8

    sub-float v3, v0, v3

    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->strokeWidth:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->strokePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 89
    :goto_2
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->strokeWidth:F

    div-float/2addr v1, v8

    iget v2, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->strokeWidth:F

    div-float/2addr v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 90
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->radius:F

    iget v2, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->strokeWidth:F

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->radius:F

    iget v3, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->strokeWidth:F

    div-float/2addr v3, v8

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 92
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 93
    return-void

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->bitmapBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->bitmapBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->bitmapBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v8

    invoke-virtual {v0, v1, v4}, Landroid/graphics/RectF;->offset(FF)V

    goto/16 :goto_0

    .line 77
    :cond_3
    iget v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->type:I

    if-ne v0, v5, :cond_0

    .line 78
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->radius:F

    mul-float/2addr v2, v8

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 84
    :cond_4
    iget v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->type:I

    if-ne v0, v5, :cond_5

    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->strokeWidth:F

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->strokeWidth:F

    div-float/2addr v2, v8

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->radius:F

    mul-float/2addr v2, v8

    sub-float v2, v0, v2

    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->strokeWidth:F

    sub-float v3, v0, v3

    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->strokeWidth:F

    div-float/2addr v4, v8

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->radius:F

    mul-float/2addr v4, v8

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->strokePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 87
    :cond_5
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->strokeWidth:F

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->strokeWidth:F

    div-float/2addr v2, v8

    sub-float v2, v0, v2

    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->strokeWidth:F

    sub-float v3, v0, v3

    iget-object v0, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->tmpRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->strokeWidth:F

    div-float/2addr v4, v8

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;->strokePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 98
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 103
    return-void
.end method

.class public Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;
.super Landroid/widget/FrameLayout;
.source "BarcodeViewfinderLayout.java"


# instance fields
.field private cropHorizontal:I

.field private cropVertical:I

.field private invRoundRect:Landroid/graphics/Path;

.field private markerCorner:Landroid/graphics/Path;

.field private markerFillClearPaint:Landroid/graphics/Paint;

.field private markerFillPaint:Landroid/graphics/Paint;

.field private markerStrokePaint:Landroid/graphics/Paint;

.field private whitePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->init()V

    .line 38
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 41
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->setWillNotDraw(Z)V

    .line 42
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->markerFillPaint:Landroid/graphics/Paint;

    .line 43
    iget-object v2, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->markerFillPaint:Landroid/graphics/Paint;

    const v3, -0x66000001

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->markerFillClearPaint:Landroid/graphics/Paint;

    .line 45
    iget-object v2, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->markerFillClearPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 46
    iget-object v2, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->markerFillClearPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->markerStrokePaint:Landroid/graphics/Paint;

    .line 48
    iget-object v2, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->markerStrokePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x26000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object v2, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->markerStrokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    iget-object v2, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->markerStrokePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 51
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->whitePaint:Landroid/graphics/Paint;

    .line 52
    iget-object v2, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->whitePaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    iget-object v2, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->whitePaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    .line 56
    .local v0, "thickness":I
    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    .line 57
    .local v1, "width":I
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->markerCorner:Landroid/graphics/Path;

    .line 58
    iget-object v2, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->markerCorner:Landroid/graphics/Path;

    invoke-virtual {v2, v5, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 59
    iget-object v2, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->markerCorner:Landroid/graphics/Path;

    int-to-float v3, v1

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 60
    iget-object v2, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->markerCorner:Landroid/graphics/Path;

    int-to-float v3, v0

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 61
    iget-object v2, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->markerCorner:Landroid/graphics/Path;

    sub-int v3, v1, v0

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 62
    iget-object v2, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->markerCorner:Landroid/graphics/Path;

    sub-int v3, v1, v0

    int-to-float v3, v3

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 63
    iget-object v2, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->markerCorner:Landroid/graphics/Path;

    neg-int v3, v0

    int-to-float v3, v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 64
    iget-object v2, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->markerCorner:Landroid/graphics/Path;

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 65
    iget-object v2, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->markerCorner:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 67
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->invRoundRect:Landroid/graphics/Path;

    .line 68
    iget-object v2, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->invRoundRect:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->toggleInverseFillType()V

    .line 69
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x420c0000    # 35.0f

    const/high16 v5, 0x40400000    # 3.0f

    const/4 v1, 0x0

    .line 88
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 89
    iget-object v0, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->invRoundRect:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->invRoundRect:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v5}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v5}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->invRoundRect:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->whitePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 94
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v0, 0x4

    if-ge v7, v0, :cond_1

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 96
    mul-int/lit8 v0, v7, 0x5a

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 97
    invoke-static {v8}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v8}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 98
    iget-object v0, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->markerCorner:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->markerStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 99
    iget-object v0, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->markerCorner:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->markerFillClearPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 100
    iget-object v0, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->markerCorner:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->markerFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 94
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 104
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 73
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 74
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 75
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, "c":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->cropHorizontal:I

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->cropVertical:I

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->cropHorizontal:I

    add-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->cropVertical:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "c":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setCrop(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->cropHorizontal:I

    .line 82
    iput p2, p0, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->cropVertical:I

    .line 83
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/BarcodeViewfinderLayout;->requestLayout()V

    .line 84
    return-void
.end method

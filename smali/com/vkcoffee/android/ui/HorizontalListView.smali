.class public Lcom/vkcoffee/android/ui/HorizontalListView;
.super Landroid/widget/ListView;
.source "HorizontalListView.java"


# instance fields
.field private disallowed:Z

.field private downX:F

.field private matrix:Landroid/graphics/Matrix;

.field private touchslop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/HorizontalListView;->disallowed:Z

    .line 18
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/HorizontalListView;->matrix:Landroid/graphics/Matrix;

    .line 22
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/HorizontalListView;->init()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/HorizontalListView;->disallowed:Z

    .line 18
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/HorizontalListView;->matrix:Landroid/graphics/Matrix;

    .line 27
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/HorizontalListView;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/HorizontalListView;->disallowed:Z

    .line 18
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/HorizontalListView;->matrix:Landroid/graphics/Matrix;

    .line 32
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/HorizontalListView;->init()V

    .line 33
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/vkcoffee/android/ui/HorizontalListView;->touchslop:F

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/HorizontalListView;->setClipToPadding(Z)V

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 39
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/HorizontalListView;->setOverScrollMode(I)V

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/HorizontalListView;->downX:F

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v7, :cond_1

    .line 60
    iget v1, p0, Lcom/vkcoffee/android/ui/HorizontalListView;->downX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/vkcoffee/android/ui/HorizontalListView;->touchslop:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/HorizontalListView;->disallowed:Z

    if-nez v1, :cond_1

    .line 61
    iput-boolean v5, p0, Lcom/vkcoffee/android/ui/HorizontalListView;->disallowed:Z

    .line 62
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/HorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 65
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 66
    iput-boolean v6, p0, Lcom/vkcoffee/android/ui/HorizontalListView;->disallowed:Z

    .line 67
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/HorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/ui/HorizontalListView;->matrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/HorizontalListView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/HorizontalListView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 71
    new-array v0, v7, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    aput v1, v0, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, v0, v5

    .line 72
    .local v0, "pp":[F
    iget-object v1, p0, Lcom/vkcoffee/android/ui/HorizontalListView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 73
    aget v1, v0, v6

    aget v2, v0, v5

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 74
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 49
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/HorizontalListView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/HorizontalListView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 50
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/HorizontalListView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 51
    invoke-super {p0, p1}, Landroid/widget/ListView;->draw(Landroid/graphics/Canvas;)V

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 53
    return-void
.end method

.method public getTMatrix()Landroid/graphics/Matrix;
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vkcoffee/android/ui/HorizontalListView;->matrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/HorizontalListView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/HorizontalListView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/ui/HorizontalListView;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/HorizontalListView;->invalidate()V

    .line 45
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 80
    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move v5, p5

    invoke-super/range {v0 .. v5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 81
    return-void
.end method

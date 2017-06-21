.class public Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;
.super Landroid/support/v4/widget/SlidingPaneLayout;
.source "EdgeSlidingPaneLayout.java"


# static fields
.field private static final EDGE_WIDTH:I


# instance fields
.field private shadow:Landroid/graphics/drawable/Drawable;

.field private statusBarHeight:I

.field private statusBarPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->EDGE_WIDTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->init()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->init()V

    .line 42
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->statusBarPaint:Landroid/graphics/Paint;

    .line 47
    iget-object v0, p0, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->statusBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->shadow:Landroid/graphics/drawable/Drawable;

    .line 49
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x1

    .line 124
    invoke-super {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 125
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->statusBarHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->statusBarPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 129
    iget-object v0, p0, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 130
    iget-object v0, p0, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5
    .param p1, "windowInsets"    # Landroid/view/WindowInsets;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    .line 109
    .local v3, "topInset":I
    iput v3, p0, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->statusBarHeight:I

    .line 110
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 111
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 112
    .local v0, "c":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 114
    .local v2, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    neg-int v4, v3

    iput v4, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->topMargin:I

    .line 115
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 110
    .end local v2    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "c":Landroid/view/View;
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v4

    return-object v4
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 58
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 60
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 61
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 71
    .end local v1    # "view":Landroid/view/View;
    :goto_0
    return v2

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->getChildCount()I

    move-result v4

    if-le v4, v2, :cond_1

    .line 66
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, "slideable":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    sget v5, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->EDGE_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    move v2, v3

    .line 68
    goto :goto_0

    .line 71
    .end local v0    # "slideable":Landroid/view/View;
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 76
    invoke-super/range {p0 .. p5}, Landroid/support/v4/widget/SlidingPaneLayout;->onLayout(ZIIII)V

    .line 77
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 78
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "c":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 80
    .local v2, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    iget v3, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->topMargin:I

    if-eqz v3, :cond_0

    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 77
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "c":Landroid/view/View;
    .end local v2    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 88
    invoke-super {p0, p1, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->onMeasure(II)V

    .line 89
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 103
    :cond_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 93
    .local v2, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 94
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 95
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 96
    .local v0, "h":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-le v3, v4, :cond_2

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v3

    if-nez v3, :cond_2

    .line 97
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v0, v3

    .line 98
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    .line 100
    :cond_2
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    check-cast v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 101
    .restart local v2    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    iget v5, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setStatusBarColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->statusBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/EdgeSlidingPaneLayout;->invalidate()V

    .line 54
    return-void
.end method

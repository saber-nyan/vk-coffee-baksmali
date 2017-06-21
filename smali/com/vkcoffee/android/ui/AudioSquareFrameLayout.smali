.class public Lcom/vkcoffee/android/ui/AudioSquareFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AudioSquareFrameLayout.java"


# instance fields
.field private density:F

.field private isHorizontal:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AudioSquareFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/vkcoffee/android/ui/AudioSquareFrameLayout;->density:F

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AudioSquareFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/vkcoffee/android/ui/AudioSquareFrameLayout;->density:F

    .line 24
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/ui/AudioSquareFrameLayout;->init(Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AudioSquareFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/vkcoffee/android/ui/AudioSquareFrameLayout;->density:F

    .line 29
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/ui/AudioSquareFrameLayout;->init(Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 16
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AudioSquareFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/vkcoffee/android/ui/AudioSquareFrameLayout;->density:F

    .line 34
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/ui/AudioSquareFrameLayout;->init(Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AudioSquareFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    new-array v4, v1, [I

    const v5, 0x10100c4

    aput v5, v4, v2

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 39
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/AudioSquareFrameLayout;->isHorizontal:Z

    .line 40
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    return-void

    :cond_0
    move v1, v2

    .line 39
    goto :goto_0
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AudioSquareFrameLayout;->getPaddingLeft()I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AudioSquareFrameLayout;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/vkcoffee/android/ui/AudioSquareFrameLayout;->setPadding(IIII)V

    .line 94
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/AudioSquareFrameLayout;->setClipToPadding(Z)V

    .line 95
    return v3
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v5, 0x0

    .line 45
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 46
    .local v3, "maxW":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 47
    .local v2, "maxH":I
    iget-boolean v4, p0, Lcom/vkcoffee/android/ui/AudioSquareFrameLayout;->isHorizontal:Z

    if-nez v4, :cond_1

    .line 48
    if-lt v2, v3, :cond_0

    .line 49
    or-int p2, v7, v3

    .line 50
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/AudioSquareFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 51
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AudioSquareFrameLayout;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 52
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 88
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 89
    return-void

    .line 54
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/AudioSquareFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 55
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, p0, Lcom/vkcoffee/android/ui/AudioSquareFrameLayout;->density:F

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 58
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    const/4 v0, 0x0

    .line 59
    .local v0, "forcePad":Z
    div-int/lit8 v4, v3, 0x2

    if-le v2, v4, :cond_2

    .line 60
    div-int/lit8 v2, v3, 0x2

    .line 61
    const/4 v0, 0x1

    .line 63
    :cond_2
    if-lt v3, v2, :cond_4

    .line 64
    or-int p1, v7, v2

    .line 65
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/AudioSquareFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 66
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v0, :cond_3

    .line 67
    iget v4, p0, Lcom/vkcoffee/android/ui/AudioSquareFrameLayout;->density:F

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 69
    :cond_3
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/AudioSquareFrameLayout;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 70
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 73
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/AudioSquareFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 74
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, p0, Lcom/vkcoffee/android/ui/AudioSquareFrameLayout;->density:F

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

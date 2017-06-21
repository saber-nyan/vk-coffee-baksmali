.class public Lcom/vkcoffee/android/ui/widget/VKFrameLayoutRatio;
.super Landroid/widget/FrameLayout;
.source "VKFrameLayoutRatio.java"


# instance fields
.field private ratio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/VKFrameLayoutRatio;->ratio:F

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/VKFrameLayoutRatio;->ratio:F

    .line 22
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/ui/widget/VKFrameLayoutRatio;->init(Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/VKFrameLayoutRatio;->ratio:F

    .line 27
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/ui/widget/VKFrameLayoutRatio;->init(Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/VKFrameLayoutRatio;->ratio:F

    .line 33
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/ui/widget/VKFrameLayoutRatio;->init(Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/VKFrameLayoutRatio;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/vkcoffee/android/R$styleable;->VKFrameLayoutRatio:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 39
    const/4 v1, 0x0

    iget v2, p0, Lcom/vkcoffee/android/ui/widget/VKFrameLayoutRatio;->ratio:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/widget/VKFrameLayoutRatio;->ratio:F

    .line 40
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 46
    iget v1, p0, Lcom/vkcoffee/android/ui/widget/VKFrameLayoutRatio;->ratio:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 47
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 48
    .local v0, "w":I
    int-to-float v1, v0

    iget v2, p0, Lcom/vkcoffee/android/ui/widget/VKFrameLayoutRatio;->ratio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 50
    .end local v0    # "w":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 51
    return-void
.end method

.class public Lcom/vkcoffee/android/ui/layout/MaxHeightLinearLayout;
.super Landroid/widget/LinearLayout;
.source "MaxHeightLinearLayout.java"


# instance fields
.field private mMaxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/layout/MaxHeightLinearLayout;->mMaxHeight:I

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/layout/MaxHeightLinearLayout;->mMaxHeight:I

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/layout/MaxHeightLinearLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/layout/MaxHeightLinearLayout;->mMaxHeight:I

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/layout/MaxHeightLinearLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
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
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/layout/MaxHeightLinearLayout;->mMaxHeight:I

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/layout/MaxHeightLinearLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    sget-object v1, Lcom/vkcoffee/android/R$styleable;->MaxHeightLinearLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 58
    const/4 v1, 0x0

    iget v2, p0, Lcom/vkcoffee/android/ui/layout/MaxHeightLinearLayout;->mMaxHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/layout/MaxHeightLinearLayout;->mMaxHeight:I

    .line 59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/vkcoffee/android/ui/layout/MaxHeightLinearLayout;->mMaxHeight:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 41
    iget v0, p0, Lcom/vkcoffee/android/ui/layout/MaxHeightLinearLayout;->mMaxHeight:I

    if-lez v0, :cond_0

    .line 42
    iget v0, p0, Lcom/vkcoffee/android/ui/layout/MaxHeightLinearLayout;->mMaxHeight:I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 44
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 45
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "mMaxHeight"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/vkcoffee/android/ui/layout/MaxHeightLinearLayout;->mMaxHeight:I

    .line 53
    return-void
.end method

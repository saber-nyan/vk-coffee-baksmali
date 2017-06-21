.class public Lcom/vkcoffee/android/ui/widget/PageIndicator;
.super Landroid/view/View;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;,
        Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;,
        Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;,
        Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;
    }
.end annotation


# instance fields
.field private final pageIndicatorDrawable:Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->createIndicatorAndAddToBg(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator;->pageIndicatorDrawable:Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->createIndicatorAndAddToBg(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator;->pageIndicatorDrawable:Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;

    .line 55
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
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->createIndicatorAndAddToBg(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator;->pageIndicatorDrawable:Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;

    .line 61
    return-void
.end method

.method static synthetic access$100(Landroid/content/res/Resources;I)I
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->dpToPx(Landroid/content/res/Resources;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200([I)I
    .locals 1
    .param p0, "x0"    # [I

    .prologue
    .line 31
    invoke-static {p0}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->max([I)I

    move-result v0

    return v0
.end method

.method private createIndicatorAndAddToBg(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    .line 64
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->setLayerType(ILandroid/graphics/Paint;)V

    .line 66
    const/4 v2, 0x0

    .line 67
    .local v2, "type":I
    sget-object v3, Lcom/vkcoffee/android/R$styleable;->PageIndicator:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    :cond_0
    packed-switch v2, :pswitch_data_0

    .line 79
    new-instance v1, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;

    invoke-direct {v1, p1, p2}, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    .local v1, "pageIndicatorDrawable":Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    .line 83
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 87
    :goto_1
    return-object v1

    .line 76
    .end local v1    # "pageIndicatorDrawable":Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;
    :pswitch_0
    new-instance v1, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;

    invoke-direct {v1, p1, p2}, Lcom/vkcoffee/android/ui/widget/PageIndicator$ResourcesDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    .restart local v1    # "pageIndicatorDrawable":Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;
    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static dpToPx(Landroid/content/res/Resources;I)I
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "dp"    # I

    .prologue
    .line 124
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private static varargs max([I)I
    .locals 4
    .param p0, "ints"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 116
    const/high16 v1, -0x80000000

    .line 117
    .local v1, "max":I
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, p0, v2

    .line 118
    .local v0, "i":I
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "i":I
    :cond_0
    return v1
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->setMeasuredDimension(II)V

    .line 111
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 142
    instance-of v1, p1, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;

    if-nez v1, :cond_0

    .line 143
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 153
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 146
    check-cast v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;

    .line 147
    .local v0, "ss":Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;
    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 148
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator;->pageIndicatorDrawable:Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;

    iget v2, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;->windowSize:I

    iput v2, v1, Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;->windowSize:I

    .line 149
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator;->pageIndicatorDrawable:Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;

    iget v2, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;->offset:I

    iput v2, v1, Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;->offset:I

    .line 150
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator;->pageIndicatorDrawable:Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;

    iget v2, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;->count:I

    iput v2, v1, Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;->count:I

    .line 151
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator;->pageIndicatorDrawable:Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;

    iget v2, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;->current:I

    iput v2, v1, Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;->current:I

    .line 152
    iget v1, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;->count:I

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->setCountOfPages(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 131
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 132
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 133
    .local v0, "ss":Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator;->pageIndicatorDrawable:Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;

    iget v2, v2, Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;->windowSize:I

    iput v2, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;->windowSize:I

    .line 134
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator;->pageIndicatorDrawable:Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;

    iget v2, v2, Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;->offset:I

    iput v2, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;->offset:I

    .line 135
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator;->pageIndicatorDrawable:Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;

    iget v2, v2, Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;->count:I

    iput v2, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;->count:I

    .line 136
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator;->pageIndicatorDrawable:Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;

    iget v2, v2, Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;->current:I

    iput v2, v0, Lcom/vkcoffee/android/ui/widget/PageIndicator$SavedState;->current:I

    .line 137
    return-object v0
.end method

.method public setCountOfPages(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator;->pageIndicatorDrawable:Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;->setPageCount(I)V

    .line 97
    return-void
.end method

.method public setIndexOfCurrentPage(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 103
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator;->pageIndicatorDrawable:Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/ui/widget/PageIndicator$PageIndicatorDrawable;->setCurrentPage(IZ)V

    .line 104
    return-void
.end method

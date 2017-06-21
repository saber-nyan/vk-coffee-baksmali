.class public Lcom/vkcoffee/android/ui/ProportionalFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ProportionalFrameLayout.java"


# instance fields
.field private heightRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/vkcoffee/android/ui/ProportionalFrameLayout;->heightRatio:F

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/vkcoffee/android/ui/ProportionalFrameLayout;->heightRatio:F

    .line 23
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/ui/ProportionalFrameLayout;->init(Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/vkcoffee/android/ui/ProportionalFrameLayout;->heightRatio:F

    .line 28
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/ui/ProportionalFrameLayout;->init(Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/vkcoffee/android/ui/ProportionalFrameLayout;->heightRatio:F

    .line 33
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/ui/ProportionalFrameLayout;->init(Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 37
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ProportionalFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x7f0100e2

    aput v3, v2, v4

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/ProportionalFrameLayout;->heightRatio:F

    .line 39
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    return-void
.end method


# virtual methods
.method public getHeightRatio()F
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/vkcoffee/android/ui/ProportionalFrameLayout;->heightRatio:F

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 53
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/vkcoffee/android/ui/ProportionalFrameLayout;->heightRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    or-int p2, v0, v1

    .line 54
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 55
    return-void
.end method

.method public setHeightRatio(F)V
    .locals 0
    .param p1, "heightRatio"    # F

    .prologue
    .line 47
    iput p1, p0, Lcom/vkcoffee/android/ui/ProportionalFrameLayout;->heightRatio:F

    .line 48
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ProportionalFrameLayout;->requestLayout()V

    .line 49
    return-void
.end method

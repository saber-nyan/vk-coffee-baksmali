.class public Lcom/vkcoffee/android/ui/MishkPlayerLayout;
.super Landroid/widget/LinearLayout;
.source "MishkPlayerLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v5, -0x80000000

    const/high16 v6, 0x40000000    # 2.0f

    .line 31
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 32
    .local v0, "h":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 33
    .local v1, "w":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/vkcoffee/android/ui/MishkPlayerLayout;->setMeasuredDimension(II)V

    .line 35
    invoke-virtual {p0, v7}, Lcom/vkcoffee/android/ui/MishkPlayerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    or-int v3, v1, v6

    const/high16 v4, 0x43280000    # 168.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    sub-int v4, v0, v4

    or-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 36
    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/ui/MishkPlayerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    or-int v3, v1, v6

    or-int v4, v0, v5

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 37
    invoke-virtual {p0, v9}, Lcom/vkcoffee/android/ui/MishkPlayerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    or-int v3, v1, v6

    or-int v4, v0, v5

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 38
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/MishkPlayerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    or-int v3, v1, v6

    invoke-virtual {p0, v7}, Lcom/vkcoffee/android/ui/MishkPlayerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/ui/MishkPlayerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, v9}, Lcom/vkcoffee/android/ui/MishkPlayerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    const/high16 v5, 0x42c00000    # 96.0f

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/high16 v5, 0x42800000    # 64.0f

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    or-int/2addr v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 39
    return-void
.end method

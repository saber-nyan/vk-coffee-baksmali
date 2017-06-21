.class public Lcom/vkcoffee/android/stickers/LeftDeltaLayout;
.super Landroid/widget/FrameLayout;
.source "LeftDeltaLayout.java"


# instance fields
.field private calloutPopupBackgroundDrawable:Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;

.field private delta:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->delta:I

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

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->delta:I

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->delta:I

    .line 26
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
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->delta:I

    .line 40
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v4, 0x0

    .line 44
    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 45
    iget v1, p0, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->delta:I

    iget v2, p0, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->delta:I

    const/high16 v3, 0x42b90000    # 92.5f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 46
    .local v0, "start":I
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->calloutPopupBackgroundDrawable:Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->calloutPopupBackgroundDrawable:Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    iget v3, p0, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->delta:I

    sub-int/2addr v3, v0

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;->setLeftSize(I)V

    .line 48
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->calloutPopupBackgroundDrawable:Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;->setCenterSize(I)V

    .line 49
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->calloutPopupBackgroundDrawable:Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;

    invoke-virtual {v1}, Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;->invalidateSelf()V

    .line 51
    :cond_0
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, p3, v3, p5}, Landroid/view/View;->layout(IIII)V

    .line 55
    .end local v0    # "start":I
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 60
    iget v1, p0, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->delta:I

    iget v2, p0, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->delta:I

    const/high16 v3, 0x42b90000    # 92.5f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 61
    .local v0, "start":I
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 62
    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->setMeasuredDimension(II)V

    .line 66
    .end local v0    # "start":I
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public setCalloutPopupBackgroundDrawable(Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;)V
    .locals 0
    .param p1, "calloutPopupBackgroundDrawable"    # Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->calloutPopupBackgroundDrawable:Lcom/vkcoffee/android/stickers/CalloutPopupBackgroundDrawable;

    .line 35
    return-void
.end method

.method public setDelta(I)V
    .locals 0
    .param p1, "delta"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->delta:I

    .line 30
    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/LeftDeltaLayout;->requestLayout()V

    .line 31
    return-void
.end method

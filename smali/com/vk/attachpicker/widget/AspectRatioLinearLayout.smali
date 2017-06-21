.class public Lcom/vk/attachpicker/widget/AspectRatioLinearLayout;
.super Landroid/widget/LinearLayout;
.source "AspectRatioLinearLayout.java"


# instance fields
.field private aspectRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/vk/attachpicker/widget/AspectRatioLinearLayout;->aspectRatio:F

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/vk/attachpicker/widget/AspectRatioLinearLayout;->aspectRatio:F

    .line 18
    return-void
.end method


# virtual methods
.method public getAspectRatio()F
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/vk/attachpicker/widget/AspectRatioLinearLayout;->aspectRatio:F

    return v0
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 31
    iget v5, p0, Lcom/vk/attachpicker/widget/AspectRatioLinearLayout;->aspectRatio:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 32
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 64
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 36
    .local v4, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 38
    .local v1, "height":I
    int-to-float v5, v4

    int-to-float v6, v1

    div-float v0, v5, v6

    .line 42
    .local v0, "availableAspectRatio":F
    iget v5, p0, Lcom/vk/attachpicker/widget/AspectRatioLinearLayout;->aspectRatio:F

    cmpl-float v5, v5, v7

    if-nez v5, :cond_1

    .line 43
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 44
    .local v3, "targetWidth":I
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 62
    .local v2, "targetHeight":I
    :goto_1
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-super {p0, v5, v6}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0

    .line 45
    .end local v2    # "targetHeight":I
    .end local v3    # "targetWidth":I
    :cond_1
    iget v5, p0, Lcom/vk/attachpicker/widget/AspectRatioLinearLayout;->aspectRatio:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_3

    .line 46
    iget v5, p0, Lcom/vk/attachpicker/widget/AspectRatioLinearLayout;->aspectRatio:F

    cmpg-float v5, v0, v5

    if-gtz v5, :cond_2

    .line 47
    move v3, v4

    .line 48
    .restart local v3    # "targetWidth":I
    int-to-float v5, v4

    iget v6, p0, Lcom/vk/attachpicker/widget/AspectRatioLinearLayout;->aspectRatio:F

    div-float/2addr v5, v6

    float-to-int v2, v5

    .restart local v2    # "targetHeight":I
    goto :goto_1

    .line 50
    .end local v2    # "targetHeight":I
    .end local v3    # "targetWidth":I
    :cond_2
    int-to-float v5, v1

    iget v6, p0, Lcom/vk/attachpicker/widget/AspectRatioLinearLayout;->aspectRatio:F

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 51
    .restart local v3    # "targetWidth":I
    move v2, v1

    .restart local v2    # "targetHeight":I
    goto :goto_1

    .line 54
    .end local v2    # "targetHeight":I
    .end local v3    # "targetWidth":I
    :cond_3
    iget v5, p0, Lcom/vk/attachpicker/widget/AspectRatioLinearLayout;->aspectRatio:F

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_4

    .line 55
    int-to-float v5, v1

    iget v6, p0, Lcom/vk/attachpicker/widget/AspectRatioLinearLayout;->aspectRatio:F

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 56
    .restart local v3    # "targetWidth":I
    move v2, v1

    .restart local v2    # "targetHeight":I
    goto :goto_1

    .line 58
    .end local v2    # "targetHeight":I
    .end local v3    # "targetWidth":I
    :cond_4
    move v3, v4

    .line 59
    .restart local v3    # "targetWidth":I
    int-to-float v5, v4

    iget v6, p0, Lcom/vk/attachpicker/widget/AspectRatioLinearLayout;->aspectRatio:F

    div-float/2addr v5, v6

    float-to-int v2, v5

    .restart local v2    # "targetHeight":I
    goto :goto_1
.end method

.method public setAspectRatio(F)V
    .locals 0
    .param p1, "aspectRatio"    # F

    .prologue
    .line 25
    iput p1, p0, Lcom/vk/attachpicker/widget/AspectRatioLinearLayout;->aspectRatio:F

    .line 26
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/AspectRatioLinearLayout;->requestLayout()V

    .line 27
    return-void
.end method

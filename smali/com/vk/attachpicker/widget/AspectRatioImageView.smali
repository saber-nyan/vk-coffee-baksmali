.class public Lcom/vk/attachpicker/widget/AspectRatioImageView;
.super Landroid/widget/ImageView;
.source "AspectRatioImageView.java"


# instance fields
.field private aspectRatio:F

.field private maxHeight:I

.field private maxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 11
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/vk/attachpicker/widget/AspectRatioImageView;->aspectRatio:F

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/vk/attachpicker/widget/AspectRatioImageView;->aspectRatio:F

    .line 19
    return-void
.end method


# virtual methods
.method public getAspectRatio()F
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/vk/attachpicker/widget/AspectRatioImageView;->aspectRatio:F

    return v0
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    .line 44
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 45
    .local v5, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 47
    .local v2, "height":I
    int-to-float v6, v5

    int-to-float v7, v2

    div-float v0, v6, v7

    .line 51
    .local v0, "availableAspectRatio":F
    iget v6, p0, Lcom/vk/attachpicker/widget/AspectRatioImageView;->aspectRatio:F

    cmpl-float v6, v6, v8

    if-nez v6, :cond_1

    .line 52
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 53
    .local v4, "targetWidth":I
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 71
    .local v3, "targetHeight":I
    :goto_0
    iget v6, p0, Lcom/vk/attachpicker/widget/AspectRatioImageView;->maxHeight:I

    if-le v3, v6, :cond_5

    iget v6, p0, Lcom/vk/attachpicker/widget/AspectRatioImageView;->maxHeight:I

    if-lez v6, :cond_5

    if-lez v3, :cond_5

    .line 72
    iget v6, p0, Lcom/vk/attachpicker/widget/AspectRatioImageView;->maxHeight:I

    int-to-float v6, v6

    int-to-float v7, v3

    div-float v1, v6, v7

    .line 73
    .local v1, "downScale":F
    int-to-float v6, v3

    mul-float/2addr v6, v1

    float-to-int v3, v6

    .line 74
    int-to-float v6, v4

    mul-float/2addr v6, v1

    float-to-int v4, v6

    .line 81
    .end local v1    # "downScale":F
    :cond_0
    :goto_1
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-super {p0, v6, v7}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 82
    return-void

    .line 54
    .end local v3    # "targetHeight":I
    .end local v4    # "targetWidth":I
    :cond_1
    iget v6, p0, Lcom/vk/attachpicker/widget/AspectRatioImageView;->aspectRatio:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_3

    .line 55
    iget v6, p0, Lcom/vk/attachpicker/widget/AspectRatioImageView;->aspectRatio:F

    cmpg-float v6, v0, v6

    if-gtz v6, :cond_2

    .line 56
    move v4, v5

    .line 57
    .restart local v4    # "targetWidth":I
    int-to-float v6, v5

    iget v7, p0, Lcom/vk/attachpicker/widget/AspectRatioImageView;->aspectRatio:F

    div-float/2addr v6, v7

    float-to-int v3, v6

    .restart local v3    # "targetHeight":I
    goto :goto_0

    .line 59
    .end local v3    # "targetHeight":I
    .end local v4    # "targetWidth":I
    :cond_2
    int-to-float v6, v2

    iget v7, p0, Lcom/vk/attachpicker/widget/AspectRatioImageView;->aspectRatio:F

    mul-float/2addr v6, v7

    float-to-int v4, v6

    .line 60
    .restart local v4    # "targetWidth":I
    move v3, v2

    .restart local v3    # "targetHeight":I
    goto :goto_0

    .line 63
    .end local v3    # "targetHeight":I
    .end local v4    # "targetWidth":I
    :cond_3
    iget v6, p0, Lcom/vk/attachpicker/widget/AspectRatioImageView;->aspectRatio:F

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_4

    .line 64
    int-to-float v6, v2

    iget v7, p0, Lcom/vk/attachpicker/widget/AspectRatioImageView;->aspectRatio:F

    mul-float/2addr v6, v7

    float-to-int v4, v6

    .line 65
    .restart local v4    # "targetWidth":I
    move v3, v2

    .restart local v3    # "targetHeight":I
    goto :goto_0

    .line 67
    .end local v3    # "targetHeight":I
    .end local v4    # "targetWidth":I
    :cond_4
    move v4, v5

    .line 68
    .restart local v4    # "targetWidth":I
    int-to-float v6, v5

    iget v7, p0, Lcom/vk/attachpicker/widget/AspectRatioImageView;->aspectRatio:F

    div-float/2addr v6, v7

    float-to-int v3, v6

    .restart local v3    # "targetHeight":I
    goto :goto_0

    .line 76
    :cond_5
    iget v6, p0, Lcom/vk/attachpicker/widget/AspectRatioImageView;->maxWidth:I

    if-le v4, v6, :cond_0

    iget v6, p0, Lcom/vk/attachpicker/widget/AspectRatioImageView;->maxWidth:I

    if-lez v6, :cond_0

    if-lez v4, :cond_0

    .line 77
    iget v6, p0, Lcom/vk/attachpicker/widget/AspectRatioImageView;->maxWidth:I

    int-to-float v6, v6

    int-to-float v7, v4

    div-float v1, v6, v7

    .line 78
    .restart local v1    # "downScale":F
    int-to-float v6, v3

    mul-float/2addr v6, v1

    float-to-int v3, v6

    .line 79
    int-to-float v6, v4

    mul-float/2addr v6, v1

    float-to-int v4, v6

    goto :goto_1
.end method

.method public setAspectRatio(F)V
    .locals 0
    .param p1, "aspectRatio"    # F

    .prologue
    .line 26
    iput p1, p0, Lcom/vk/attachpicker/widget/AspectRatioImageView;->aspectRatio:F

    .line 27
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/AspectRatioImageView;->requestLayout()V

    .line 28
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "maxHeight"    # I

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 33
    iput p1, p0, Lcom/vk/attachpicker/widget/AspectRatioImageView;->maxHeight:I

    .line 34
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxWidth"    # I

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 39
    iput p1, p0, Lcom/vk/attachpicker/widget/AspectRatioImageView;->maxWidth:I

    .line 40
    return-void
.end method

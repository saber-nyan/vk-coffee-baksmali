.class public Lcom/vk/attachpicker/crop/MathCropUtils;
.super Ljava/lang/Object;
.source "MathCropUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareFloat(FF)I
    .locals 6
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 80
    sub-float v1, p0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 81
    .local v0, "delta":F
    float-to-double v2, v0

    const-wide v4, 0x3f40624dd2f1a9fcL    # 5.0E-4

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 82
    const/4 v1, 0x0

    .line 86
    :goto_0
    return v1

    .line 83
    :cond_0
    cmpg-float v1, p0, p1

    if-gez v1, :cond_1

    .line 84
    const/4 v1, -0x1

    goto :goto_0

    .line 86
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isPointOnTheLine(Landroid/graphics/PointF;Landroid/graphics/PointF;FF)Z
    .locals 9
    .param p0, "a"    # Landroid/graphics/PointF;
    .param p1, "b"    # Landroid/graphics/PointF;
    .param p2, "cx"    # F
    .param p3, "cy"    # F

    .prologue
    const/4 v4, 0x0

    .line 58
    const v2, 0x3a03126f    # 5.0E-4f

    .line 60
    .local v2, "epsilon":F
    iget v5, p0, Landroid/graphics/PointF;->y:F

    sub-float v5, p3, v5

    iget v6, p1, Landroid/graphics/PointF;->x:F

    iget v7, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget v6, p0, Landroid/graphics/PointF;->x:F

    sub-float v6, p2, v6

    iget v7, p1, Landroid/graphics/PointF;->y:F

    iget v8, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    sub-float v0, v5, v6

    .line 61
    .local v0, "crossProduct":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3a03126f    # 5.0E-4f

    invoke-static {v5, v6}, Lcom/vk/attachpicker/crop/MathCropUtils;->compareFloat(FF)I

    move-result v5

    if-lez v5, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v4

    .line 65
    :cond_1
    iget v5, p0, Landroid/graphics/PointF;->x:F

    sub-float v5, p2, v5

    iget v6, p1, Landroid/graphics/PointF;->x:F

    iget v7, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget v6, p0, Landroid/graphics/PointF;->y:F

    sub-float v6, p3, v6

    iget v7, p1, Landroid/graphics/PointF;->y:F

    iget v8, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float v1, v5, v6

    .line 66
    .local v1, "dotProduct":F
    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/vk/attachpicker/crop/MathCropUtils;->compareFloat(FF)I

    move-result v5

    if-ltz v5, :cond_0

    .line 70
    iget v5, p1, Landroid/graphics/PointF;->x:F

    iget v6, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    iget v6, p1, Landroid/graphics/PointF;->x:F

    iget v7, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget v6, p1, Landroid/graphics/PointF;->y:F

    iget v7, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    iget v7, p1, Landroid/graphics/PointF;->y:F

    iget v8, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float v3, v5, v6

    .line 72
    .local v3, "squaredLengthBA":F
    invoke-static {v1, v3}, Lcom/vk/attachpicker/crop/MathCropUtils;->compareFloat(FF)I

    move-result v5

    if-gtz v5, :cond_0

    .line 76
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isPolygonContainsPoint([Landroid/graphics/PointF;FF)Z
    .locals 9
    .param p0, "polygon"    # [Landroid/graphics/PointF;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 21
    const/4 v3, 0x0

    .line 23
    .local v3, "result":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_5

    .line 24
    aget-object v1, p0, v0

    .line 26
    .local v1, "p1":Landroid/graphics/PointF;
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_1

    .line 27
    aget-object v2, p0, v6

    .line 31
    .local v2, "p2":Landroid/graphics/PointF;
    :goto_1
    iget v4, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, p2

    if-ltz v4, :cond_2

    move v4, v5

    :goto_2
    iget v7, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v7, v7, p2

    if-ltz v7, :cond_3

    move v7, v5

    :goto_3
    if-eq v4, v7, :cond_0

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v7, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v7

    iget v7, v1, Landroid/graphics/PointF;->y:F

    sub-float v7, p2, v7

    mul-float/2addr v4, v7

    iget v7, v2, Landroid/graphics/PointF;->y:F

    iget v8, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    div-float/2addr v4, v7

    iget v7, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v7

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    .line 33
    if-nez v3, :cond_4

    move v3, v5

    .line 23
    :cond_0
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    .end local v2    # "p2":Landroid/graphics/PointF;
    :cond_1
    add-int/lit8 v4, v0, 0x1

    aget-object v2, p0, v4

    .restart local v2    # "p2":Landroid/graphics/PointF;
    goto :goto_1

    :cond_2
    move v4, v6

    .line 31
    goto :goto_2

    :cond_3
    move v7, v6

    goto :goto_3

    :cond_4
    move v3, v6

    .line 33
    goto :goto_4

    .line 37
    .end local v1    # "p1":Landroid/graphics/PointF;
    .end local v2    # "p2":Landroid/graphics/PointF;
    :cond_5
    if-nez v3, :cond_6

    .line 38
    const/4 v0, 0x0

    :goto_5
    array-length v4, p0

    if-ge v0, v4, :cond_6

    .line 39
    aget-object v1, p0, v0

    .line 41
    .restart local v1    # "p1":Landroid/graphics/PointF;
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_7

    .line 42
    aget-object v2, p0, v6

    .line 46
    .restart local v2    # "p2":Landroid/graphics/PointF;
    :goto_6
    invoke-static {v1, v2, p1, p2}, Lcom/vk/attachpicker/crop/MathCropUtils;->isPointOnTheLine(Landroid/graphics/PointF;Landroid/graphics/PointF;FF)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 47
    const/4 v3, 0x1

    .line 53
    .end local v1    # "p1":Landroid/graphics/PointF;
    .end local v2    # "p2":Landroid/graphics/PointF;
    :cond_6
    return v3

    .line 44
    .restart local v1    # "p1":Landroid/graphics/PointF;
    :cond_7
    add-int/lit8 v4, v0, 0x1

    aget-object v2, p0, v4

    .restart local v2    # "p2":Landroid/graphics/PointF;
    goto :goto_6

    .line 38
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public static isPolygonContainsRectangle([Landroid/graphics/PointF;[Landroid/graphics/PointF;)Z
    .locals 6
    .param p0, "polygon"    # [Landroid/graphics/PointF;
    .param p1, "rect"    # [Landroid/graphics/PointF;

    .prologue
    const/4 v1, 0x0

    .line 8
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 9
    .local v0, "p":Landroid/graphics/PointF;
    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-static {p0, v4, v5}, Lcom/vk/attachpicker/crop/MathCropUtils;->isPolygonContainsPoint([Landroid/graphics/PointF;FF)Z

    move-result v4

    if-nez v4, :cond_0

    .line 13
    .end local v0    # "p":Landroid/graphics/PointF;
    :goto_1
    return v1

    .line 8
    .restart local v0    # "p":Landroid/graphics/PointF;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    .end local v0    # "p":Landroid/graphics/PointF;
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

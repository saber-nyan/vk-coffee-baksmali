.class public Lfr/castorflex/android/smoothprogressbar/ColorsShape;
.super Landroid/graphics/drawable/shapes/Shape;
.source "ColorsShape.java"


# instance fields
.field private mColors:[I

.field private mStrokeWidth:F


# direct methods
.method public constructor <init>(F[I)V
    .locals 0
    .param p1, "strokeWidth"    # F
    .param p2, "colors"    # [I

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    .line 16
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/ColorsShape;->mStrokeWidth:F

    .line 17
    iput-object p2, p0, Lfr/castorflex/android/smoothprogressbar/ColorsShape;->mColors:[I

    .line 18
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    .line 38
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/ColorsShape;->mColors:[I

    array-length v1, v1

    int-to-float v1, v1

    div-float v8, v0, v1

    .line 39
    .local v8, "ratio":F
    const/4 v7, 0x0

    .line 40
    .local v7, "i":I
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/ColorsShape;->mStrokeWidth:F

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 41
    iget-object v10, p0, Lfr/castorflex/android/smoothprogressbar/ColorsShape;->mColors:[I

    array-length v11, v10

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v11, :cond_0

    aget v6, v10, v9

    .line 42
    .local v6, "color":I
    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    int-to-float v0, v7

    mul-float/2addr v0, v8

    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/ColorsShape;->getWidth()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/ColorsShape;->getHeight()F

    move-result v0

    div-float v2, v0, v12

    add-int/lit8 v7, v7, 0x1

    int-to-float v0, v7

    mul-float/2addr v0, v8

    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/ColorsShape;->getWidth()F

    move-result v3

    mul-float/2addr v3, v0

    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/ColorsShape;->getHeight()F

    move-result v0

    div-float v4, v0, v12

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 41
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 45
    .end local v6    # "color":I
    :cond_0
    return-void
.end method

.method public getColors()[I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/ColorsShape;->mColors:[I

    return-object v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/ColorsShape;->mStrokeWidth:F

    return v0
.end method

.method public setColors([I)V
    .locals 0
    .param p1, "colors"    # [I

    .prologue
    .line 33
    iput-object p1, p0, Lfr/castorflex/android/smoothprogressbar/ColorsShape;->mColors:[I

    .line 34
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0
    .param p1, "strokeWidth"    # F

    .prologue
    .line 25
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/ColorsShape;->mStrokeWidth:F

    .line 26
    return-void
.end method

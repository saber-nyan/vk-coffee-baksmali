.class public Lcom/vkcoffee/android/ui/CubicBezierInterpolator;
.super Ljava/lang/Object;
.source "CubicBezierInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field protected a:Landroid/graphics/PointF;

.field protected b:Landroid/graphics/PointF;

.field protected c:Landroid/graphics/PointF;

.field protected end:Landroid/graphics/PointF;

.field protected start:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(DDDD)V
    .locals 5
    .param p1, "startX"    # D
    .param p3, "startY"    # D
    .param p5, "endX"    # D
    .param p7, "endY"    # D

    .prologue
    .line 30
    double-to-float v0, p1

    double-to-float v1, p3

    double-to-float v2, p5

    double-to-float v3, p7

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;-><init>(FFFF)V

    .line 31
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 2
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "endX"    # F
    .param p4, "endY"    # F

    .prologue
    .line 26
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p3, p4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 3
    .param p1, "start"    # Landroid/graphics/PointF;
    .param p2, "end"    # Landroid/graphics/PointF;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->a:Landroid/graphics/PointF;

    .line 11
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->b:Landroid/graphics/PointF;

    .line 12
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    .line 15
    iget v0, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "startX value must be in the range [0, 1]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_1
    iget v0, p2, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2

    iget v0, p2, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 19
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "endX value must be in the range [0, 1]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_3
    iput-object p1, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->start:Landroid/graphics/PointF;

    .line 22
    iput-object p2, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->end:Landroid/graphics/PointF;

    .line 23
    return-void
.end method

.method private getBezierCoordinateX(F)F
    .locals 4
    .param p1, "time"    # F

    .prologue
    const/high16 v3, 0x40400000    # 3.0f

    .line 63
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->start:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 64
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->b:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->end:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->start:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    iget-object v2, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 65
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->a:Landroid/graphics/PointF;

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->b:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->b:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->a:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method private getXDerivate(F)F
    .locals 4
    .param p1, "t"    # F

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/high16 v1, 0x40000000    # 2.0f

    iget-object v2, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->b:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    iget-object v3, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->a:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected getBezierCoordinateY(F)F
    .locals 4
    .param p1, "time"    # F

    .prologue
    const/high16 v3, 0x40400000    # 3.0f

    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->start:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 40
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->b:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->end:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->start:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    iget-object v2, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 41
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->a:Landroid/graphics/PointF;

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->b:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->b:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->a:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method public getInterpolation(F)F
    .locals 1
    .param p1, "time"    # F

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->getXForTime(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->getBezierCoordinateY(F)F

    move-result v0

    return v0
.end method

.method protected getXForTime(F)F
    .locals 8
    .param p1, "time"    # F

    .prologue
    .line 46
    move v1, p1

    .line 48
    .local v1, "x":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v3, 0xe

    if-ge v0, v3, :cond_0

    .line 49
    invoke-direct {p0, v1}, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->getBezierCoordinateX(F)F

    move-result v3

    sub-float v2, v3, p1

    .line 50
    .local v2, "z":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v3, v4, v6

    if-gez v3, :cond_1

    .line 55
    .end local v2    # "z":F
    :cond_0
    return v1

    .line 53
    .restart local v2    # "z":F
    :cond_1
    invoke-direct {p0, v1}, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;->getXDerivate(F)F

    move-result v3

    div-float v3, v2, v3

    sub-float/2addr v1, v3

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

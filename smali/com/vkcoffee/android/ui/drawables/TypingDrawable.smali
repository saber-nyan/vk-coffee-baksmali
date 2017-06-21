.class public Lcom/vkcoffee/android/ui/drawables/TypingDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TypingDrawable.java"


# static fields
.field private static final LEFT_PADDING:I = 0x4

.field private static final MAX_ALPHA:F = 1.0f

.field private static final MAX_RADIUS:I = 0x6

.field private static final MIN_ALPHA:F = 0.4f

.field private static final MIN_RADIUS:I = 0x4

.field private static final WIDTH:I = 0x30

.field private static final X_1:I = 0xa

.field private static final X_2:I = 0x1a

.field private static final X_3:I = 0x2a


# instance fields
.field count:F

.field private volatile isStarted:Z

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    const/4 v1, 0x1

    .line 27
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->paint:Landroid/graphics/Paint;

    .line 25
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->isStarted:Z

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->count:F

    .line 28
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    return-void
.end method

.method private alpha(F)I
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 42
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private dp(F)F
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 38
    invoke-static {p1}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method private drawCircle(Landroid/graphics/Canvas;FFF)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "percent"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->paint:Landroid/graphics/Paint;

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->alpha(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 34
    const/high16 v0, 0x40800000    # 4.0f

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->dp(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->dp(F)F

    move-result v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 35
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 49
    iget v0, p0, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->count:F

    add-float/2addr v0, v4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    add-float/2addr v0, v3

    div-float/2addr v0, v4

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->dp(F)F

    move-result v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->drawCircle(Landroid/graphics/Canvas;FFF)V

    .line 50
    iget v0, p0, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->count:F

    add-float/2addr v0, v3

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    add-float/2addr v0, v3

    div-float/2addr v0, v4

    const/high16 v1, 0x41d00000    # 26.0f

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->dp(F)F

    move-result v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->drawCircle(Landroid/graphics/Canvas;FFF)V

    .line 51
    iget v0, p0, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->count:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    add-float/2addr v0, v3

    div-float/2addr v0, v4

    const/high16 v1, 0x42280000    # 42.0f

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->dp(F)F

    move-result v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->drawCircle(Landroid/graphics/Canvas;FFF)V

    .line 53
    iget v0, p0, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->count:F

    float-to-double v0, v0

    const-wide v2, 0x3fc3333333333333L    # 0.15

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->count:F

    .line 54
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->isStarted:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->invalidateSelf()V

    .line 57
    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 69
    const/high16 v0, 0x41900000    # 18.0f

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->dp(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 74
    const/high16 v0, 0x42400000    # 48.0f

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->dp(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 80
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 85
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->isStarted:Z

    .line 61
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/drawables/TypingDrawable;->isStarted:Z

    .line 65
    return-void
.end method

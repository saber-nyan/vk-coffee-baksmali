.class public Lcom/vkcoffee/android/ui/cardview/CardDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CardDrawable.java"


# static fields
.field private static final SHADOW_MULTIPLIER:F = 1.5f


# instance fields
.field private mCornerRadius:F

.field private mCornerShadowPaint:Landroid/graphics/Paint;

.field private mCornerShadowPath:Landroid/graphics/Path;

.field private mDirty:Z

.field private mEdgeShadowPaint:Landroid/graphics/Paint;

.field private mPaint:Landroid/graphics/Paint;

.field private final mPreShadowBounds:Landroid/graphics/RectF;

.field private final mShadowEndColor:I

.field private mShadowSize:F

.field private final mShadowStartColor:I

.field private final mWideMode:Z

.field private final sCornerRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 99
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;-><init>(Landroid/content/res/Resources;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "backgroundColor"    # I

    .prologue
    .line 95
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, p2, v0}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;-><init>(Landroid/content/res/Resources;IF)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;IF)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "backgroundColor"    # I
    .param p3, "radius"    # F

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;-><init>(Landroid/content/res/Resources;IFZ)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;IFZ)V
    .locals 4
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "backgroundColor"    # I
    .param p3, "radius"    # F
    .param p4, "wideMode"    # Z

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 66
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->sCornerRect:Landroid/graphics/RectF;

    .line 52
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mDirty:Z

    .line 67
    const-string/jumbo v0, "#33000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mShadowStartColor:I

    .line 68
    const-string/jumbo v0, "#00000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mShadowEndColor:I

    .line 72
    const v0, 0x3fd47ae1    # 1.66f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mShadowSize:F

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mPaint:Landroid/graphics/Paint;

    .line 75
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    .line 77
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 79
    iput p3, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerRadius:F

    .line 80
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mPreShadowBounds:Landroid/graphics/RectF;

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 83
    iput-boolean p4, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mWideMode:Z

    .line 84
    return-void
.end method

.method private buildComponents(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mPreShadowBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mShadowSize:F

    add-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mShadowSize:F

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mShadowSize:F

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v5, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mShadowSize:F

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 240
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->buildShadowCorners()V

    .line 241
    return-void
.end method

.method private buildShadowCorners()V
    .locals 12

    .prologue
    .line 206
    new-instance v8, Landroid/graphics/RectF;

    iget v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerRadius:F

    neg-float v0, v0

    iget v1, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerRadius:F

    neg-float v1, v1

    iget v2, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerRadius:F

    iget v3, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerRadius:F

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 207
    .local v8, "innerBounds":Landroid/graphics/RectF;
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 208
    .local v9, "outerBounds":Landroid/graphics/RectF;
    iget v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mShadowSize:F

    neg-float v0, v0

    iget v1, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mShadowSize:F

    neg-float v1, v1

    invoke-virtual {v9, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 210
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    .line 215
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 216
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerRadius:F

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 217
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mShadowSize:F

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 219
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 221
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    const/high16 v1, 0x43870000    # 270.0f

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 222
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 224
    iget v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerRadius:F

    iget v1, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerRadius:F

    iget v2, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mShadowSize:F

    add-float/2addr v1, v2

    div-float v10, v0, v1

    .line 225
    .local v10, "startRatio":F
    iget-object v7, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RadialGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerRadius:F

    iget v4, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mShadowSize:F

    add-float/2addr v3, v4

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x0

    iget v6, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mShadowStartColor:I

    aput v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mShadowStartColor:I

    aput v6, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mShadowEndColor:I

    aput v6, v4, v5

    const/4 v5, 0x3

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v11, 0x0

    aput v11, v5, v6

    const/4 v6, 0x1

    aput v10, v5, v6

    const/4 v6, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v5, v6

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 232
    iget-object v11, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    iget v2, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerRadius:F

    neg-float v2, v2

    iget v3, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mShadowSize:F

    add-float/2addr v2, v3

    const/4 v3, 0x0

    iget v4, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerRadius:F

    neg-float v4, v4

    iget v5, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mShadowSize:F

    sub-float/2addr v4, v5

    const/4 v5, 0x3

    new-array v5, v5, [I

    const/4 v6, 0x0

    iget v7, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mShadowStartColor:I

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mShadowStartColor:I

    aput v7, v5, v6

    const/4 v6, 0x2

    iget v7, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mShadowEndColor:I

    aput v7, v5, v6

    const/4 v6, 0x3

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 235
    return-void

    .line 213
    .end local v10    # "startRatio":F
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_0

    .line 232
    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v9, 0x43340000    # 180.0f

    const/4 v1, 0x0

    .line 164
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 166
    .local v8, "saved":I
    const/high16 v0, 0x40000000    # 2.0f

    iget v3, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerRadius:F

    iget v4, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mShadowSize:F

    add-float/2addr v3, v4

    mul-float v7, v0, v3

    .line 167
    .local v7, "cornerPathSize":F
    iget v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerRadius:F

    neg-float v0, v0

    iget v3, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mShadowSize:F

    sub-float v2, v0, v3

    .line 168
    .local v2, "edgeShadowTop":F
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 170
    .local v6, "bounds":Landroid/graphics/Rect;
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mWideMode:Z

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mPreShadowBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerRadius:F

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mPreShadowBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerRadius:F

    add-float/2addr v3, v4

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 173
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 174
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    sub-float v3, v0, v7

    iget v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerRadius:F

    neg-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 177
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->rotate(F)V

    .line 178
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    add-float/2addr v0, v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    add-float/2addr v3, v7

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 179
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 180
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    sub-float v3, v0, v7

    iget v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerRadius:F

    neg-float v0, v0

    iget v4, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mShadowSize:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 183
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 184
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    add-float/2addr v0, v7

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 185
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 186
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    sub-float v3, v0, v7

    iget v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerRadius:F

    neg-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 189
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->rotate(F)V

    .line 190
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    add-float/2addr v0, v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    add-float/2addr v3, v7

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 191
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 192
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    sub-float v3, v0, v7

    iget v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerRadius:F

    neg-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 202
    :goto_0
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 203
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mPreShadowBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerRadius:F

    add-float/2addr v0, v3

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 195
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerRadius:F

    neg-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 197
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->rotate(F)V

    .line 198
    iget v0, v6, Landroid/graphics/Rect;->right:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    add-float/2addr v3, v7

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 199
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerRadius:F

    neg-float v0, v0

    iget v4, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mShadowSize:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const v2, 0x3f2aaaaa

    const/4 v1, 0x0

    .line 133
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mDirty:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->buildComponents(Landroid/graphics/Rect;)V

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mDirty:Z

    .line 137
    :cond_0
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->drawShadow(Landroid/graphics/Canvas;)V

    .line 138
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mWideMode:Z

    if-nez v0, :cond_1

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 141
    .local v6, "count":I
    iget v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mShadowSize:F

    mul-float v8, v0, v2

    .line 142
    .local v8, "offset":F
    iget v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mShadowSize:F

    sub-float v7, v0, v8

    .line 143
    .local v7, "horizontalOffset":F
    neg-float v0, v8

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 144
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mPreShadowBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v8

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 145
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mPreShadowBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v7

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 146
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mPreShadowBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v7

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 148
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mPreShadowBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mPreShadowBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 149
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mPreShadowBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mPreShadowBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 151
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mPreShadowBounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerRadius:F

    iget-object v3, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    .line 152
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mPreShadowBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v8

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 153
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mPreShadowBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v7

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 154
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mPreShadowBounds:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v7

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 155
    invoke-virtual {p1, v1, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 156
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 161
    .end local v6    # "count":I
    .end local v7    # "horizontalOffset":F
    :goto_0
    return-void

    .line 158
    .end local v8    # "offset":F
    :cond_1
    iget v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mShadowSize:F

    mul-float v8, v0, v2

    .line 159
    .restart local v8    # "offset":F
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mPreShadowBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mPreShadowBounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/RectF;
    .param p3, "cornerRadius"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 244
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 245
    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 275
    :goto_0
    return-void

    .line 251
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    mul-float v8, p3, v0

    .line 252
    .local v8, "twoRadius":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float v7, v0, v8

    .line 253
    .local v7, "innerWidth":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    sub-float v6, v0, v8

    .line 254
    .local v6, "innerHeight":F
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->sCornerRect:Landroid/graphics/RectF;

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, p3

    add-float/2addr v3, v4

    iget v4, p2, Landroid/graphics/RectF;->top:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, p3

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 257
    iget-object v1, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->sCornerRect:Landroid/graphics/RectF;

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x1

    move-object v0, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 258
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->sCornerRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 259
    iget-object v1, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->sCornerRect:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x1

    move-object v0, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 260
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->sCornerRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 261
    iget-object v1, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->sCornerRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x1

    move-object v0, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 262
    iget-object v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->sCornerRect:Landroid/graphics/RectF;

    neg-float v1, v7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 263
    iget-object v1, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->sCornerRect:Landroid/graphics/RectF;

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x1

    move-object v0, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 266
    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float v1, v0, p3

    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float v3, v0, p3

    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float v4, v0, p3

    move-object v0, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 268
    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float v1, v0, p3

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v0, p3

    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float v3, v0, p3

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 272
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float v2, v0, p3

    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v0, p3

    move-object v0, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, -0x1

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "padding"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 115
    iget v2, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mShadowSize:F

    const v3, 0x3eaaaaab

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 116
    .local v1, "topShadow":I
    iget-boolean v2, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mWideMode:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 117
    .local v0, "sideShadow":I
    :goto_0
    iget v2, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mShadowSize:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {p1, v0, v1, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 118
    const/4 v2, 0x1

    return v2

    .line 116
    .end local v0    # "sideShadow":I
    :cond_0
    iget v2, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mShadowSize:F

    int-to-float v3, v1

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    goto :goto_0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mCornerRadius:F

    float-to-int v0, v0

    return v0
.end method

.method public getShadowSize()F
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mShadowSize:F

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->mDirty:Z

    .line 111
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 105
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 124
    return-void
.end method

.class public Lcom/vkcoffee/android/ui/BadgeSpan;
.super Landroid/text/style/ReplacementSpan;
.source "BadgeSpan.java"


# instance fields
.field private bgPaint:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/BadgeSpan;->bgPaint:Landroid/graphics/Paint;

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/BadgeSpan;->rect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 25
    iget-object v1, p0, Lcom/vkcoffee/android/ui/BadgeSpan;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e23d70a    # 0.16f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    iget-object v1, p0, Lcom/vkcoffee/android/ui/BadgeSpan;->rect:Landroid/graphics/RectF;

    int-to-float v2, p6

    move-object/from16 v0, p9

    invoke-virtual {v0, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p5

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    move/from16 v0, p8

    int-to-float v4, v0

    invoke-virtual {v1, p5, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 27
    iget-object v1, p0, Lcom/vkcoffee/android/ui/BadgeSpan;->rect:Landroid/graphics/RectF;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/vkcoffee/android/ui/BadgeSpan;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 28
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float v5, p5, v1

    int-to-float v6, p7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v7, p9

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 29
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 20
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

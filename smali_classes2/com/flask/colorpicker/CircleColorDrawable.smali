.class public Lcom/flask/colorpicker/CircleColorDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source "CircleColorDrawable.java"


# instance fields
.field private fillBackPaint:Landroid/graphics/Paint;

.field private fillPaint:Landroid/graphics/Paint;

.field private strokePaint:Landroid/graphics/Paint;

.field private strokeWidth:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 12
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->style(Landroid/graphics/Paint$Style;)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    iget v1, p0, Lcom/flask/colorpicker/CircleColorDrawable;->strokeWidth:F

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->stroke(F)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/CircleColorDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 13
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->style(Landroid/graphics/Paint$Style;)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/CircleColorDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 14
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/flask/colorpicker/builder/PaintBuilder;->createAlphaPatternShader(I)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->shader(Landroid/graphics/Shader;)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/CircleColorDrawable;->fillBackPaint:Landroid/graphics/Paint;

    .line 18
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 12
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->style(Landroid/graphics/Paint$Style;)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    iget v1, p0, Lcom/flask/colorpicker/CircleColorDrawable;->strokeWidth:F

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->stroke(F)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/CircleColorDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 13
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->style(Landroid/graphics/Paint$Style;)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/CircleColorDrawable;->fillPaint:Landroid/graphics/Paint;

    .line 14
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/flask/colorpicker/builder/PaintBuilder;->createAlphaPatternShader(I)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->shader(Landroid/graphics/Shader;)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/CircleColorDrawable;->fillBackPaint:Landroid/graphics/Paint;

    .line 22
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 26
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 29
    .local v1, "width":I
    int-to-float v2, v1

    div-float v0, v2, v4

    .line 31
    .local v0, "radius":F
    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/flask/colorpicker/CircleColorDrawable;->strokeWidth:F

    .line 33
    iget-object v2, p0, Lcom/flask/colorpicker/CircleColorDrawable;->strokePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/flask/colorpicker/CircleColorDrawable;->strokeWidth:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 34
    iget-object v2, p0, Lcom/flask/colorpicker/CircleColorDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/flask/colorpicker/CircleColorDrawable;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iget-object v2, p0, Lcom/flask/colorpicker/CircleColorDrawable;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 37
    iget v2, p0, Lcom/flask/colorpicker/CircleColorDrawable;->strokeWidth:F

    div-float/2addr v2, v4

    sub-float v2, v0, v2

    iget-object v3, p0, Lcom/flask/colorpicker/CircleColorDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 38
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 43
    invoke-virtual {p0}, Lcom/flask/colorpicker/CircleColorDrawable;->invalidateSelf()V

    .line 44
    return-void
.end method

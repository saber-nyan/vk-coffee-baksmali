.class public abstract Lcom/flask/colorpicker/renderer/AbsColorWheelRenderer;
.super Ljava/lang/Object;
.source "AbsColorWheelRenderer.java"

# interfaces
.implements Lcom/flask/colorpicker/renderer/ColorWheelRenderer;


# instance fields
.field protected colorCircleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flask/colorpicker/ColorCircle;",
            ">;"
        }
    .end annotation
.end field

.field protected colorWheelRenderOption:Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected calcTotalCount(FF)I
    .locals 6
    .param p1, "radius"    # F
    .param p2, "size"    # F

    .prologue
    .line 34
    const/4 v0, 0x1

    const-wide v2, 0x40088121e29cdd4cL    # 3.063052912151454

    div-float v1, p2, p1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getAlphaValueAsInt()I
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/flask/colorpicker/renderer/AbsColorWheelRenderer;->colorWheelRenderOption:Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;

    iget v0, v0, Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;->alpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getColorCircleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flask/colorpicker/ColorCircle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/flask/colorpicker/renderer/AbsColorWheelRenderer;->colorCircleList:Ljava/util/List;

    return-object v0
.end method

.method public getRenderOption()Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/flask/colorpicker/renderer/AbsColorWheelRenderer;->colorWheelRenderOption:Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;

    invoke-direct {v0}, Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;-><init>()V

    iput-object v0, p0, Lcom/flask/colorpicker/renderer/AbsColorWheelRenderer;->colorWheelRenderOption:Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/flask/colorpicker/renderer/AbsColorWheelRenderer;->colorWheelRenderOption:Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;

    return-object v0
.end method

.method public initWith(Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;)V
    .locals 1
    .param p1, "colorWheelRenderOption"    # Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/flask/colorpicker/renderer/AbsColorWheelRenderer;->colorWheelRenderOption:Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flask/colorpicker/renderer/AbsColorWheelRenderer;->colorCircleList:Ljava/util/List;

    .line 15
    return-void
.end method

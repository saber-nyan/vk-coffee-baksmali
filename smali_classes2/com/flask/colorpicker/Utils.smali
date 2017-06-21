.class public Lcom/flask/colorpicker/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustAlpha(FI)I
    .locals 2
    .param p0, "alpha"    # F
    .param p1, "color"    # I

    .prologue
    .line 18
    invoke-static {p0}, Lcom/flask/colorpicker/Utils;->alphaValueAsInt(F)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    const v1, 0xffffff

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    return v0
.end method

.method public static alphaValueAsInt(F)I
    .locals 1
    .param p0, "alpha"    # F

    .prologue
    .line 14
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static colorAtLightness(IF)I
    .locals 2
    .param p0, "color"    # I
    .param p1, "lightness"    # F

    .prologue
    .line 22
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 23
    .local v0, "hsv":[F
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 24
    const/4 v1, 0x2

    aput p1, v0, v1

    .line 25
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    return v1
.end method

.method public static getAlphaPercent(I)F
    .locals 2
    .param p0, "argb"    # I

    .prologue
    .line 10
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static lightnessOfColor(I)F
    .locals 2
    .param p0, "color"    # I

    .prologue
    .line 29
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 30
    .local v0, "hsv":[F
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 31
    const/4 v1, 0x2

    aget v1, v0, v1

    return v1
.end method

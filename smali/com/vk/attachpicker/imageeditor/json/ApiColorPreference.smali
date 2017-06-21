.class public Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;
.super Ljava/lang/Object;
.source "ApiColorPreference.java"


# static fields
.field public static DEFAULT_LUMINANCE_ADJUSTMENT:F

.field public static DEFAULT_SATURATION_ADJUSTMENT:F

.field public static DEFAULT_SMOOTHING:F

.field public static DEFAULT_THRESHOLD:F


# instance fields
.field private _labCacheB:F

.field private _labCacheG:F

.field private _labCacheR:F

.field private _rgbHueCacheHue:F

.field public final ctaB:F

.field public final ctaG:F

.field public final ctaR:F

.field public final hue:F

.field private hueRgbB:F

.field private hueRgbG:F

.field private hueRgbR:F

.field private labA:F

.field private labB:F

.field private labL:F

.field public final luminanceAdjustment:F

.field public final saturationAdjustment:F

.field public final smoothing:F

.field public final threshold:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    sput v0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->DEFAULT_SATURATION_ADJUSTMENT:F

    .line 12
    sput v0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->DEFAULT_LUMINANCE_ADJUSTMENT:F

    .line 13
    const v0, 0x3d75c28f    # 0.06f

    sput v0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->DEFAULT_THRESHOLD:F

    .line 14
    const v0, 0x3df5c28f    # 0.12f

    sput v0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->DEFAULT_SMOOTHING:F

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const-wide/16 v4, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-nez p1, :cond_0

    .line 27
    new-instance p1, Lorg/json/JSONObject;

    .end local p1    # "jo":Lorg/json/JSONObject;
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 30
    .restart local p1    # "jo":Lorg/json/JSONObject;
    :cond_0
    const-string/jumbo v1, "fR"

    invoke-virtual {p1, v1, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->ctaR:F

    .line 31
    const-string/jumbo v1, "fG"

    invoke-virtual {p1, v1, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->ctaG:F

    .line 32
    const-string/jumbo v1, "fB"

    invoke-virtual {p1, v1, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->ctaB:F

    .line 34
    const-string/jumbo v1, "hue"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 35
    .local v0, "_hue":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 36
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->hue:F

    .line 41
    :goto_0
    const-string/jumbo v1, "satAdj"

    sget v2, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->DEFAULT_SATURATION_ADJUSTMENT:F

    float-to-double v2, v2

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->saturationAdjustment:F

    .line 42
    const-string/jumbo v1, "lumAdj"

    sget v2, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->DEFAULT_LUMINANCE_ADJUSTMENT:F

    float-to-double v2, v2

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->luminanceAdjustment:F

    .line 43
    const-string/jumbo v1, "thr"

    sget v2, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->DEFAULT_THRESHOLD:F

    float-to-double v2, v2

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->threshold:F

    .line 44
    const-string/jumbo v1, "sm"

    sget v2, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->DEFAULT_SMOOTHING:F

    float-to-double v2, v2

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->smoothing:F

    .line 45
    return-void

    .line 38
    :cond_1
    iput v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->hue:F

    goto :goto_0
.end method

.method private checkHueRgb()V
    .locals 5

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 154
    iget v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->hue:F

    iget v2, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->_rgbHueCacheHue:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 155
    iget v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->hue:F

    iput v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->_rgbHueCacheHue:F

    .line 157
    const/4 v1, 0x3

    new-array v0, v1, [I

    .line 158
    .local v0, "colorRgb":[I
    iget v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->hue:F

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v1, v2, v3, v0}, Lcom/vk/attachpicker/jni/Native;->HSLToRGB(FFF[I)V

    .line 163
    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iput v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->hueRgbR:F

    .line 164
    const/4 v1, 0x1

    aget v1, v0, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iput v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->hueRgbG:F

    .line 165
    const/4 v1, 0x2

    aget v1, v0, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iput v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->hueRgbB:F

    .line 167
    .end local v0    # "colorRgb":[I
    :cond_0
    return-void
.end method

.method private checkLab()V
    .locals 4

    .prologue
    .line 134
    iget v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->ctaR:F

    iget v2, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->_labCacheR:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->ctaG:F

    iget v2, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->_labCacheG:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->ctaB:F

    iget v2, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->_labCacheB:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 135
    :cond_0
    iget v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->ctaR:F

    iput v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->_labCacheR:F

    .line 136
    iget v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->ctaG:F

    iput v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->_labCacheG:F

    .line 137
    iget v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->ctaB:F

    iput v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->_labCacheB:F

    .line 139
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 140
    .local v0, "ctaLab":[F
    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->getNormalizedCtaR()I

    move-result v1

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->getNormalizedCtaG()I

    move-result v2

    invoke-virtual {p0}, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->getNormalizedCtaB()I

    move-result v3

    invoke-static {v1, v2, v3, v0}, Lcom/vk/attachpicker/jni/Native;->RGBToLab(III[F)V

    .line 141
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->labL:F

    .line 142
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->labA:F

    .line 143
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->labB:F

    .line 145
    .end local v0    # "ctaLab":[F
    :cond_1
    return-void
.end method

.method public static getNonDefaultColorsCount(Ljava/util/List;IZ)I
    .locals 5
    .param p1, "ignorePosition"    # I
    .param p2, "skipColorCorrection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;",
            ">;IZ)I"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "colors":Ljava/util/List;, "Ljava/util/List<Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;>;"
    const/4 v2, 0x0

    .line 171
    .local v2, "nonDefaultColors":I
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 172
    const/4 v1, 0x0

    .line 173
    .local v1, "idx":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;

    .line 174
    .local v0, "colorPreference":Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;
    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->isDefault()Z

    move-result v4

    if-nez v4, :cond_1

    if-ne v1, p1, :cond_0

    if-eqz p2, :cond_1

    .line 175
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 177
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 178
    goto :goto_0

    .line 180
    .end local v0    # "colorPreference":Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;
    .end local v1    # "idx":I
    :cond_2
    return v2
.end method


# virtual methods
.method public getHueB()F
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->checkHueRgb()V

    .line 66
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->hueRgbB:F

    return v0
.end method

.method public getHueG()F
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->checkHueRgb()V

    .line 61
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->hueRgbG:F

    return v0
.end method

.method public getHueR()F
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->checkHueRgb()V

    .line 56
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->hueRgbR:F

    return v0
.end method

.method public getLAB_A()F
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->checkLab()V

    .line 76
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->labA:F

    return v0
.end method

.method public getLAB_B()F
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->checkLab()V

    .line 81
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->labB:F

    return v0
.end method

.method public getLAB_L()F
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->checkLab()V

    .line 71
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->labL:F

    return v0
.end method

.method public getLuminanceAdjustment()F
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->luminanceAdjustment:F

    return v0
.end method

.method public getNormalizedCtaB()I
    .locals 2

    .prologue
    .line 122
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->ctaB:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getNormalizedCtaG()I
    .locals 2

    .prologue
    .line 118
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->ctaG:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getNormalizedCtaR()I
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->ctaR:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getRGB_B()F
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->ctaB:F

    return v0
.end method

.method public getRGB_G()F
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->ctaG:F

    return v0
.end method

.method public getRGB_R()F
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->ctaR:F

    return v0
.end method

.method public getSaturationAdjustment()F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->saturationAdjustment:F

    return v0
.end method

.method public getSmoothing()F
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->smoothing:F

    return v0
.end method

.method public getThreshold()F
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->threshold:F

    return v0
.end method

.method public isDefault()Z
    .locals 2

    .prologue
    .line 48
    iget v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->saturationAdjustment:F

    sget v1, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->DEFAULT_SATURATION_ADJUSTMENT:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->luminanceAdjustment:F

    sget v1, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->DEFAULT_LUMINANCE_ADJUSTMENT:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->threshold:F

    sget v1, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->DEFAULT_THRESHOLD:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->smoothing:F

    sget v1, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->DEFAULT_SMOOTHING:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

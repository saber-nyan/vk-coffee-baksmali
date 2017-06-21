.class public Lcom/vk/attachpicker/jni/Native;
.super Ljava/lang/Object;
.source "Native.java"


# static fields
.field private static volatile labLookupBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 20
    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "chronicle"

    aput-object v2, v1, v3

    invoke-static {v0, v3, v1}, Lcom/vk/attachpicker/jni/LibraryLoader;->loadLibraries(Landroid/content/Context;Z[Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HSLToIntRGB(FFF)I
    .locals 5
    .param p0, "h"    # F
    .param p1, "s"    # F
    .param p2, "l"    # F

    .prologue
    .line 221
    const/4 v1, 0x3

    new-array v0, v1, [I

    .line 222
    .local v0, "outRGB":[I
    invoke-static {p0, p1, p2, v0}, Lcom/vk/attachpicker/jni/Native;->nativeHSLToRGB(FFF[I)V

    .line 223
    const/16 v1, 0xff

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    return v1
.end method

.method public static HSLToRGB(FFF[I)V
    .locals 0
    .param p0, "h"    # F
    .param p1, "s"    # F
    .param p2, "l"    # F
    .param p3, "outRGB"    # [I

    .prologue
    .line 231
    invoke-static {p0, p1, p2, p3}, Lcom/vk/attachpicker/jni/Native;->nativeHSLToRGB(FFF[I)V

    .line 232
    return-void
.end method

.method public static HSVToIntRGB(FFF)I
    .locals 5
    .param p0, "h"    # F
    .param p1, "s"    # F
    .param p2, "v"    # F

    .prologue
    .line 243
    const/4 v1, 0x3

    new-array v0, v1, [I

    .line 244
    .local v0, "outRGB":[I
    invoke-static {p0, p1, p2, v0}, Lcom/vk/attachpicker/jni/Native;->nativeHSVToRGB(FFF[I)V

    .line 245
    const/16 v1, 0xff

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    return v1
.end method

.method public static HSVToRGB(FFF[I)V
    .locals 0
    .param p0, "h"    # F
    .param p1, "s"    # F
    .param p2, "v"    # F
    .param p3, "outRGB"    # [I

    .prologue
    .line 253
    invoke-static {p0, p1, p2, p3}, Lcom/vk/attachpicker/jni/Native;->nativeHSVToRGB(FFF[I)V

    .line 254
    return-void
.end method

.method public static LabToIntRGB(FFF)I
    .locals 5
    .param p0, "l"    # F
    .param p1, "a"    # F
    .param p2, "b"    # F

    .prologue
    .line 198
    const/4 v1, 0x3

    new-array v0, v1, [I

    .line 199
    .local v0, "outRGB":[I
    invoke-static {p0, p1, p2, v0}, Lcom/vk/attachpicker/jni/Native;->nativeLabToRGB(FFF[I)V

    .line 200
    const/16 v1, 0xff

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    return v1
.end method

.method public static LabToRGB(FFF[I)V
    .locals 0
    .param p0, "l"    # F
    .param p1, "a"    # F
    .param p2, "b"    # F
    .param p3, "outRGB"    # [I

    .prologue
    .line 208
    invoke-static {p0, p1, p2, p3}, Lcom/vk/attachpicker/jni/Native;->nativeLabToRGB(FFF[I)V

    .line 209
    return-void
.end method

.method public static RGBToHSL(III[F)V
    .locals 0
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "outHSL"    # [F

    .prologue
    .line 227
    invoke-static {p0, p1, p2, p3}, Lcom/vk/attachpicker/jni/Native;->nativeRGBToHSL(III[F)V

    .line 228
    return-void
.end method

.method public static RGBToHSV(III[F)V
    .locals 0
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "outHSV"    # [F

    .prologue
    .line 249
    invoke-static {p0, p1, p2, p3}, Lcom/vk/attachpicker/jni/Native;->nativeRGBToHSV(III[F)V

    .line 250
    return-void
.end method

.method public static RGBToLab(III[F)V
    .locals 0
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "outLab"    # [F

    .prologue
    .line 204
    invoke-static {p0, p1, p2, p3}, Lcom/vk/attachpicker/jni/Native;->nativeRGBToLab(III[F)V

    .line 205
    return-void
.end method

.method public static applyCurveAndSaturationBitmap(Landroid/graphics/Bitmap;[IF)V
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "curve"    # [I
    .param p2, "saturation"    # F

    .prologue
    .line 99
    float-to-double v0, p2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    invoke-static {p0, p1, v0, v1, v2}, Lcom/vk/attachpicker/jni/Native;->nativeCurveSaturation(Landroid/graphics/Bitmap;[IDI)V

    .line 100
    return-void
.end method

.method public static blurBitmap(Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/vk/attachpicker/jni/Native;->nativeBlur(Landroid/graphics/Bitmap;I)V

    .line 52
    return-void
.end method

.method public static colorCorrectionBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/util/List;)V
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "lab"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List",
            "<",
            "Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "colors":Ljava/util/List;, "Ljava/util/List<Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;>;"
    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lcom/vk/attachpicker/jni/Native;->getColorParams(Ljava/util/List;IZ)[F

    move-result-object v0

    .line 56
    .local v0, "params":[F
    array-length v1, v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    invoke-static {p0, p1, v0, v1, v2}, Lcom/vk/attachpicker/jni/Native;->nativeColorCorrection(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[FII)V

    .line 57
    return-void
.end method

.method public static createAllInOneShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Lcom/vk/attachpicker/jni/Native;->nativeAllInOneShader()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createColorCorrectionShader(Ljava/util/List;IZ)Ljava/lang/String;
    .locals 10
    .param p1, "ignorePosition"    # I
    .param p2, "skipColorCorrection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;",
            ">;IZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "colors":Ljava/util/List;, "Ljava/util/List<Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;>;"
    const/4 v6, 0x0

    .line 153
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 155
    .local v0, "intSkipColorCorrection":I
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->getNonDefaultColorsCount(Ljava/util/List;IZ)I

    move-result v1

    .line 157
    .local v1, "nonDefaultColors":I
    if-nez v1, :cond_2

    .line 158
    new-array v7, v6, [F

    invoke-static {v7, v6, v0}, Lcom/vk/attachpicker/jni/Native;->nativeCreateColorCorrectionShader([FII)Ljava/lang/String;

    move-result-object v5

    .line 159
    .local v5, "shader":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 160
    sget-object v5, Lcom/vk/attachpicker/imageeditor/GLRenderer;->FRAGMENT_SHADER:Ljava/lang/String;

    .line 175
    .end local v5    # "shader":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v5

    .end local v0    # "intSkipColorCorrection":I
    .end local v1    # "nonDefaultColors":I
    :cond_1
    move v0, v6

    .line 153
    goto :goto_0

    .line 165
    .restart local v0    # "intSkipColorCorrection":I
    .restart local v1    # "nonDefaultColors":I
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/vk/attachpicker/jni/Native;->getColorParams(Ljava/util/List;IZ)[F

    move-result-object v3

    .line 166
    .local v3, "params":[F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v4, "sb":Ljava/lang/StringBuilder;
    array-length v7, v3

    :goto_2
    if-ge v6, v7, :cond_3

    aget v2, v3, v6

    .line 168
    .local v2, "p":F
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 171
    .end local v2    # "p":F
    :cond_3
    array-length v6, v3

    invoke-static {v3, v6, v0}, Lcom/vk/attachpicker/jni/Native;->nativeCreateColorCorrectionShader([FII)Ljava/lang/String;

    move-result-object v5

    .line 172
    .restart local v5    # "shader":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 173
    sget-object v5, Lcom/vk/attachpicker/imageeditor/GLRenderer;->FRAGMENT_SHADER:Ljava/lang/String;

    goto :goto_1
.end method

.method public static createCurve([I[I[I[I[IFFFFF)V
    .locals 0
    .param p0, "red"    # [I
    .param p1, "green"    # [I
    .param p2, "blue"    # [I
    .param p3, "rgb"    # [I
    .param p4, "outCurve"    # [I
    .param p5, "brightness"    # F
    .param p6, "contrast"    # F
    .param p7, "fade"    # F
    .param p8, "temperature"    # F
    .param p9, "tint"    # F

    .prologue
    .line 107
    invoke-static/range {p0 .. p9}, Lcom/vk/attachpicker/jni/Native;->nativeCreateCurve([I[I[I[I[IFFFFF)V

    .line 108
    return-void
.end method

.method public static createOneInAllShader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    invoke-static {}, Lcom/vk/attachpicker/jni/Native;->nativeOneInAllShader()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static enhanceBitmap(Landroid/graphics/Bitmap;F)V
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "intensity"    # F

    .prologue
    .line 35
    float-to-double v0, p1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/vk/attachpicker/jni/Native;->nativeEnhance(Landroid/graphics/Bitmap;DI)V

    .line 36
    return-void
.end method

.method public static flipHorizontallyBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/vk/attachpicker/jni/Native;->nativeFlipHorizontally(Landroid/graphics/Bitmap;)V

    .line 44
    return-void
.end method

.method public static flipVerticallyBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 39
    invoke-static {p0}, Lcom/vk/attachpicker/jni/Native;->nativeFlipVertically(Landroid/graphics/Bitmap;)V

    .line 40
    return-void
.end method

.method public static generateHistogram(Landroid/graphics/Bitmap;[I[I[I[I)V
    .locals 0
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "red"    # [I
    .param p2, "green"    # [I
    .param p3, "blue"    # [I
    .param p4, "rgb"    # [I

    .prologue
    .line 111
    invoke-static {p0, p1, p2, p3, p4}, Lcom/vk/attachpicker/jni/Native;->nativeHistogram(Landroid/graphics/Bitmap;[I[I[I[I)V

    .line 112
    return-void
.end method

.method public static getColorParams(Ljava/util/List;IZ)[F
    .locals 8
    .param p1, "ignorePosition"    # I
    .param p2, "skipColorCorrection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;",
            ">;IZ)[F"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "colors":Ljava/util/List;, "Ljava/util/List<Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;>;"
    invoke-static {p0, p1, p2}, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->getNonDefaultColorsCount(Ljava/util/List;IZ)I

    move-result v3

    .line 117
    .local v3, "nonDefaultColors":I
    if-nez v3, :cond_1

    .line 118
    const/4 v6, 0x0

    new-array v4, v6, [F

    .line 148
    :cond_0
    return-object v4

    .line 120
    :cond_1
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 121
    .local v5, "paramsList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Float;>;"
    const/4 v2, 0x0

    .line 122
    .local v2, "idx":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;

    .line 123
    .local v0, "c":Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;
    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->isDefault()Z

    move-result v7

    if-nez v7, :cond_3

    if-ne v2, p1, :cond_2

    if-eqz p2, :cond_3

    .line 124
    :cond_2
    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->getRGB_R()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->getRGB_G()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->getRGB_B()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->getHueR()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->getHueG()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->getHueB()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->getSaturationAdjustment()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->getLuminanceAdjustment()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->getThreshold()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;->getSmoothing()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 139
    goto/16 :goto_0

    .line 141
    .end local v0    # "c":Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;
    :cond_4
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    new-array v4, v6, [F

    .line 142
    .local v4, "params":[F
    const/4 v2, 0x0

    .line 143
    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 144
    .local v1, "f":Ljava/lang/Float;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v4, v2

    .line 145
    add-int/lit8 v2, v2, 0x1

    .line 146
    goto :goto_1
.end method

.method public static declared-synchronized getLabLookupBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 26
    const-class v2, Lcom/vk/attachpicker/jni/Native;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/vk/attachpicker/jni/Native;->labLookupBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/vk/attachpicker/jni/Native;->labLookupBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 28
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 29
    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020253

    invoke-static {v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/vk/attachpicker/jni/Native;->labLookupBitmap:Landroid/graphics/Bitmap;

    .line 31
    :cond_1
    sget-object v1, Lcom/vk/attachpicker/jni/Native;->labLookupBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 26
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static intRGBToHSL(I[F)V
    .locals 3
    .param p0, "rgb"    # I
    .param p1, "outHsl"    # [F

    .prologue
    .line 217
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/vk/attachpicker/jni/Native;->nativeRGBToHSL(III[F)V

    .line 218
    return-void
.end method

.method public static intRGBToHSV(I[F)V
    .locals 3
    .param p0, "rgb"    # I
    .param p1, "outHsv"    # [F

    .prologue
    .line 239
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/vk/attachpicker/jni/Native;->nativeRGBToHSV(III[F)V

    .line 240
    return-void
.end method

.method public static intRGBToLab(I[F)V
    .locals 3
    .param p0, "rgb"    # I
    .param p1, "outLab"    # [F

    .prologue
    .line 194
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/vk/attachpicker/jni/Native;->nativeRGBToLab(III[F)V

    .line 195
    return-void
.end method

.method public static lookupBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "lut"    # Landroid/graphics/Bitmap;

    .prologue
    .line 95
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/vk/attachpicker/jni/Native;->nativeLookup(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 96
    return-void
.end method

.method private static native nativeAllInOneShader()Ljava/lang/String;
.end method

.method private static native nativeBlur(Landroid/graphics/Bitmap;I)V
.end method

.method private static synchronized native declared-synchronized nativeColorCorrection(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[FII)V
.end method

.method private static native nativeCreateColorCorrectionShader([FII)Ljava/lang/String;
.end method

.method private static native nativeCreateCurve([I[I[I[I[IFFFFF)V
.end method

.method private static native nativeCurveSaturation(Landroid/graphics/Bitmap;[IDI)V
.end method

.method private static native nativeEnhance(Landroid/graphics/Bitmap;DI)V
.end method

.method private static native nativeFlipHorizontally(Landroid/graphics/Bitmap;)V
.end method

.method private static native nativeFlipVertically(Landroid/graphics/Bitmap;)V
.end method

.method private static native nativeHSLToRGB(FFF[I)V
.end method

.method private static native nativeHSVToRGB(FFF[I)V
.end method

.method private static native nativeHistogram(Landroid/graphics/Bitmap;[I[I[I[I)V
.end method

.method private static native nativeLabToRGB(FFF[I)V
.end method

.method private static native nativeLookup(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
.end method

.method private static native nativeOneInAllShader()Ljava/lang/String;
.end method

.method private static native nativePinBitmap(Landroid/graphics/Bitmap;)V
.end method

.method private static native nativeRGBToHSL(III[F)V
.end method

.method private static native nativeRGBToHSV(III[F)V
.end method

.method private static native nativeRGBToLab(III[F)V
.end method

.method private static synchronized native declared-synchronized nativeRender(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I[FIFFFFFFFFFFF[I[I[I[I)V
.end method

.method private static native nativeResize(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
.end method

.method public static pinBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 47
    invoke-static {p0}, Lcom/vk/attachpicker/jni/Native;->nativePinBitmap(Landroid/graphics/Bitmap;)V

    .line 48
    return-void
.end method

.method public static renderBitmap(Landroid/graphics/Bitmap;ZLjava/util/List;FFFFFFFFFFF[I[I[I[I)V
    .locals 22
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "doLookupColorCorrection"    # Z
    .param p3, "brightness"    # F
    .param p4, "contrast"    # F
    .param p5, "saturation"    # F
    .param p6, "fade"    # F
    .param p7, "temperature"    # F
    .param p8, "tint"    # F
    .param p9, "vignetteIntensity"    # F
    .param p10, "sharpness"    # F
    .param p11, "enhance"    # F
    .param p12, "grain"    # F
    .param p13, "intensity"    # F
    .param p14, "red"    # [I
    .param p15, "green"    # [I
    .param p16, "blue"    # [I
    .param p17, "rgb"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;",
            ">;FFFFFFFFFFF[I[I[I[I)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "colors":Ljava/util/List;, "Ljava/util/List<Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;>;"
    const/4 v1, -0x1

    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v1, v2}, Lcom/vk/attachpicker/jni/Native;->getColorParams(Ljava/util/List;IZ)[F

    move-result-object v5

    .line 66
    .local v5, "params":[F
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    if-eqz p1, :cond_0

    .line 68
    invoke-static/range {p2 .. p2}, Lcom/vk/attachpicker/imageeditor/LutManager;->getLookupBitmap(Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_0
    if-eqz p1, :cond_1

    const/4 v4, 0x1

    :goto_1
    array-length v6, v5

    move-object/from16 v2, p0

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    move/from16 v17, p13

    move-object/from16 v18, p14

    move-object/from16 v19, p15

    move-object/from16 v20, p16

    move-object/from16 v21, p17

    .line 65
    invoke-static/range {v1 .. v21}, Lcom/vk/attachpicker/jni/Native;->nativeRender(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I[FIFFFFFFFFFFF[I[I[I[I)V

    .line 88
    return-void

    .line 68
    :cond_0
    invoke-static {}, Lcom/vk/attachpicker/jni/Native;->getLabLookupBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static resizeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scaledBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 91
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/vk/attachpicker/jni/Native;->nativeResize(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 92
    return-void
.end method

.method public static declared-synchronized rgbToLabBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 103
    const-class v1, Lcom/vk/attachpicker/jni/Native;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/vk/attachpicker/jni/Native;->getLabLookupBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/vk/attachpicker/jni/Native;->lookupBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit v1

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

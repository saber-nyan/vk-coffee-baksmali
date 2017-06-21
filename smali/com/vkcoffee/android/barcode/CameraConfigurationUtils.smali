.class public final Lcom/vkcoffee/android/barcode/CameraConfigurationUtils;
.super Ljava/lang/Object;
.source "CameraConfigurationUtils.java"


# static fields
.field private static final AREA_PER_1000:I = 0x190

.field private static final MAX_ASPECT_DISTORTION:D = 0.15

.field private static final MAX_EXPOSURE_COMPENSATION:F = 1.5f

.field private static final MAX_FPS:I = 0x14

.field private static final MIN_EXPOSURE_COMPENSATION:F = 0.0f

.field private static final MIN_FPS:I = 0xa

.field private static final MIN_PREVIEW_PIXELS:I = 0x25800

.field private static final SEMICOLON:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "CameraConfiguration"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, ";"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/barcode/CameraConfigurationUtils;->SEMICOLON:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method private static buildMiddleArea(I)Ljava/util/List;
    .locals 4
    .param p0, "areaPer1000"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Landroid/hardware/Camera$Area;

    new-instance v1, Landroid/graphics/Rect;

    neg-int v2, p0

    neg-int v3, p0

    invoke-direct {v1, v2, v3, p0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static collectStats(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 1
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 408
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/barcode/CameraConfigurationUtils;->collectStats(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static collectStats(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 7
    .param p0, "flattenedParams"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v6, 0xa

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x3e8

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 414
    .local v2, "result":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "BOARD="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 415
    const-string/jumbo v3, "BRAND="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 416
    const-string/jumbo v3, "CPU_ABI="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 417
    const-string/jumbo v3, "DEVICE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 418
    const-string/jumbo v3, "DISPLAY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 419
    const-string/jumbo v3, "FINGERPRINT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 420
    const-string/jumbo v3, "HOST="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 421
    const-string/jumbo v3, "ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 422
    const-string/jumbo v3, "MANUFACTURER="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 423
    const-string/jumbo v3, "MODEL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 424
    const-string/jumbo v3, "PRODUCT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 425
    const-string/jumbo v3, "TAGS="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 426
    const-string/jumbo v3, "TIME="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Landroid/os/Build;->TIME:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 427
    const-string/jumbo v3, "TYPE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 428
    const-string/jumbo v3, "USER="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 429
    const-string/jumbo v3, "VERSION.CODENAME="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 430
    const-string/jumbo v3, "VERSION.INCREMENTAL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 431
    const-string/jumbo v3, "VERSION.RELEASE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 432
    const-string/jumbo v3, "VERSION.SDK_INT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 434
    if-eqz p0, :cond_0

    .line 435
    sget-object v3, Lcom/vkcoffee/android/barcode/CameraConfigurationUtils;->SEMICOLON:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, "params":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 437
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 438
    .local v0, "param":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 437
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 442
    .end local v0    # "param":Ljava/lang/String;
    .end local v1    # "params":[Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static findBestPreviewSizeValue(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 28
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "screenResolution"    # Landroid/graphics/Point;

    .prologue
    .line 276
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v16

    .line 277
    .local v16, "rawSupportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v16, :cond_1

    .line 278
    const-string/jumbo v23, "CameraConfiguration"

    const-string/jumbo v24, "Device returned no supported preview sizes; using default"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 280
    .local v5, "defaultSize":Landroid/hardware/Camera$Size;
    if-nez v5, :cond_0

    .line 281
    new-instance v23, Ljava/lang/IllegalStateException;

    const-string/jumbo v24, "Parameters contained no preview size!"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 283
    :cond_0
    new-instance v8, Landroid/graphics/Point;

    iget v0, v5, Landroid/hardware/Camera$Size;->width:I

    move/from16 v23, v0

    iget v0, v5, Landroid/hardware/Camera$Size;->height:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v8, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 359
    .end local v5    # "defaultSize":Landroid/hardware/Camera$Size;
    :goto_0
    return-object v8

    .line 287
    :cond_1
    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 288
    .local v22, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v23, Lcom/vkcoffee/android/barcode/CameraConfigurationUtils$1;

    invoke-direct/range {v23 .. v23}, Lcom/vkcoffee/android/barcode/CameraConfigurationUtils$1;-><init>()V

    invoke-static/range {v22 .. v23}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 303
    const-string/jumbo v23, "CameraConfiguration"

    const/16 v24, 0x4

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 304
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .local v15, "previewSizesString":Ljava/lang/StringBuilder;
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/hardware/Camera$Size;

    .line 306
    .local v19, "supportedPreviewSize":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x78

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v25, v0

    .line 307
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x20

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 309
    .end local v19    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    :cond_2
    const-string/jumbo v23, "CameraConfiguration"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Supported preview sizes: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .end local v15    # "previewSizesString":Ljava/lang/StringBuilder;
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v20, v24, v26

    .line 315
    .local v20, "screenAspectRatio":D
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 316
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_a

    .line 317
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/hardware/Camera$Size;

    .line 318
    .restart local v19    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    .line 319
    .local v18, "realWidth":I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v17, v0

    .line 320
    .local v17, "realHeight":I
    mul-int v23, v18, v17

    const v24, 0x25800

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    .line 321
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 325
    :cond_5
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    const/4 v9, 0x1

    .line 326
    .local v9, "isCandidatePortrait":Z
    :goto_3
    if-eqz v9, :cond_7

    move/from16 v14, v17

    .line 327
    .local v14, "maybeFlippedWidth":I
    :goto_4
    if-eqz v9, :cond_8

    move/from16 v13, v18

    .line 328
    .local v13, "maybeFlippedHeight":I
    :goto_5
    int-to-double v0, v14

    move-wide/from16 v24, v0

    int-to-double v0, v13

    move-wide/from16 v26, v0

    div-double v2, v24, v26

    .line 329
    .local v2, "aspectRatio":D
    sub-double v24, v2, v20

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 330
    .local v6, "distortion":D
    const-wide v24, 0x3fc3333333333333L    # 0.15

    cmpl-double v23, v6, v24

    if-lez v23, :cond_9

    .line 331
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 325
    .end local v2    # "aspectRatio":D
    .end local v6    # "distortion":D
    .end local v9    # "isCandidatePortrait":Z
    .end local v13    # "maybeFlippedHeight":I
    .end local v14    # "maybeFlippedWidth":I
    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    .restart local v9    # "isCandidatePortrait":Z
    :cond_7
    move/from16 v14, v18

    .line 326
    goto :goto_4

    .restart local v14    # "maybeFlippedWidth":I
    :cond_8
    move/from16 v13, v17

    .line 327
    goto :goto_5

    .line 335
    .restart local v2    # "aspectRatio":D
    .restart local v6    # "distortion":D
    .restart local v13    # "maybeFlippedHeight":I
    :cond_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v14, v0, :cond_4

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v13, v0, :cond_4

    .line 336
    new-instance v8, Landroid/graphics/Point;

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-direct {v8, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 337
    .local v8, "exactPoint":Landroid/graphics/Point;
    const-string/jumbo v23, "CameraConfiguration"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Found preview size exactly matching screen size: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 345
    .end local v2    # "aspectRatio":D
    .end local v6    # "distortion":D
    .end local v8    # "exactPoint":Landroid/graphics/Point;
    .end local v9    # "isCandidatePortrait":Z
    .end local v13    # "maybeFlippedHeight":I
    .end local v14    # "maybeFlippedWidth":I
    .end local v17    # "realHeight":I
    .end local v18    # "realWidth":I
    .end local v19    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    :cond_a
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_b

    .line 346
    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Camera$Size;

    .line 347
    .local v11, "largestPreview":Landroid/hardware/Camera$Size;
    new-instance v12, Landroid/graphics/Point;

    iget v0, v11, Landroid/hardware/Camera$Size;->width:I

    move/from16 v23, v0

    iget v0, v11, Landroid/hardware/Camera$Size;->height:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v12, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 348
    .local v12, "largestSize":Landroid/graphics/Point;
    const-string/jumbo v23, "CameraConfiguration"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Using largest suitable preview size: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v12

    .line 349
    goto/16 :goto_0

    .line 353
    .end local v11    # "largestPreview":Landroid/hardware/Camera$Size;
    .end local v12    # "largestSize":Landroid/graphics/Point;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 354
    .local v4, "defaultPreview":Landroid/hardware/Camera$Size;
    if-nez v4, :cond_c

    .line 355
    new-instance v23, Ljava/lang/IllegalStateException;

    const-string/jumbo v24, "Parameters contained no preview size!"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 357
    :cond_c
    new-instance v5, Landroid/graphics/Point;

    iget v0, v4, Landroid/hardware/Camera$Size;->width:I

    move/from16 v23, v0

    iget v0, v4, Landroid/hardware/Camera$Size;->height:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 358
    .local v5, "defaultSize":Landroid/graphics/Point;
    const-string/jumbo v23, "CameraConfiguration"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "No suitable preview sizes, using default: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v5

    .line 359
    goto/16 :goto_0
.end method

.method private static varargs findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p2, "desiredValues"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 365
    .local p1, "supportedValues":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string/jumbo v1, "CameraConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Requesting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " value from among: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const-string/jumbo v1, "CameraConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Supported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " values: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    if-eqz p1, :cond_1

    .line 368
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p2, v1

    .line 369
    .local v0, "desiredValue":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 370
    const-string/jumbo v1, "CameraConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    .end local v0    # "desiredValue":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 368
    .restart local v0    # "desiredValue":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    .end local v0    # "desiredValue":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "CameraConfiguration"

    const-string/jumbo v2, "No supported values match"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static indexOfClosestZoom(Landroid/hardware/Camera$Parameters;D)Ljava/lang/Integer;
    .locals 19
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "targetZoomRatio"    # D

    .prologue
    .line 240
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v5

    .line 241
    .local v5, "ratios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v10, "CameraConfiguration"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Zoom ratios: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v4

    .line 243
    .local v4, "maxZoom":I
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v11, v4, 0x1

    if-eq v10, v11, :cond_1

    .line 244
    :cond_0
    const-string/jumbo v10, "CameraConfiguration"

    const-string/jumbo v11, "Invalid zoom ratios!"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v10, 0x0

    .line 258
    :goto_0
    return-object v10

    .line 247
    :cond_1
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double v8, v10, p1

    .line 248
    .local v8, "target100":D
    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 249
    .local v6, "smallestDiff":D
    const/4 v0, 0x0

    .line 250
    .local v0, "closestIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_3

    .line 251
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-double v10, v10

    sub-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 252
    .local v2, "diff":D
    cmpg-double v10, v2, v6

    if-gez v10, :cond_2

    .line 253
    move-wide v6, v2

    .line 254
    move v0, v1

    .line 250
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 257
    .end local v2    # "diff":D
    :cond_3
    const-string/jumbo v11, "CameraConfiguration"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Chose zoom ratio of "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-double v14, v10

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v14, v14, v16

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_0
.end method

.method public static setBarcodeSceneMode(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 210
    const-string/jumbo v1, "barcode"

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    const-string/jumbo v1, "CameraConfiguration"

    const-string/jumbo v2, "Barcode scene mode already set"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    const-string/jumbo v1, "scene mode"

    .line 215
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "barcode"

    aput-object v5, v3, v4

    .line 214
    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/barcode/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "sceneMode":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setBestExposure(Landroid/hardware/Camera$Parameters;Z)V
    .locals 9
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "lightOn"    # Z

    .prologue
    const/4 v5, 0x0

    .line 115
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v3

    .line 116
    .local v3, "minExposure":I
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v2

    .line 117
    .local v2, "maxExposure":I
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v4

    .line 118
    .local v4, "step":F
    if-nez v3, :cond_0

    if-eqz v2, :cond_3

    :cond_0
    cmpl-float v6, v4, v5

    if-lez v6, :cond_3

    .line 120
    if-eqz p1, :cond_1

    .line 121
    .local v5, "targetCompensation":F
    :goto_0
    div-float v6, v5, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 122
    .local v1, "compensationSteps":I
    int-to-float v6, v1

    mul-float v0, v4, v6

    .line 124
    .local v0, "actualCompensation":F
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 125
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v6

    if-ne v6, v1, :cond_2

    .line 126
    const-string/jumbo v6, "CameraConfiguration"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exposure compensation already set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .end local v0    # "actualCompensation":F
    .end local v1    # "compensationSteps":I
    .end local v5    # "targetCompensation":F
    :goto_1
    return-void

    .line 120
    :cond_1
    const/high16 v5, 0x3fc00000    # 1.5f

    goto :goto_0

    .line 128
    .restart local v0    # "actualCompensation":F
    .restart local v1    # "compensationSteps":I
    .restart local v5    # "targetCompensation":F
    :cond_2
    const-string/jumbo v6, "CameraConfiguration"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Setting exposure compensation to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    goto :goto_1

    .line 132
    .end local v0    # "actualCompensation":F
    .end local v1    # "compensationSteps":I
    .end local v5    # "targetCompensation":F
    :cond_3
    const-string/jumbo v6, "CameraConfiguration"

    const-string/jumbo v7, "Camera does not support exposure compensation"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static setBestPreviewFPS(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 137
    const/16 v0, 0xa

    const/16 v1, 0x14

    invoke-static {p0, v0, v1}, Lcom/vkcoffee/android/barcode/CameraConfigurationUtils;->setBestPreviewFPS(Landroid/hardware/Camera$Parameters;II)V

    .line 138
    return-void
.end method

.method public static setBestPreviewFPS(Landroid/hardware/Camera$Parameters;II)V
    .locals 11
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "minFPS"    # I
    .param p2, "maxFPS"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 141
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v3

    .line 142
    .local v3, "supportedPreviewFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    const-string/jumbo v6, "CameraConfiguration"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Supported FPS ranges: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Lcom/vkcoffee/android/barcode/CameraConfigurationUtils;->toString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 144
    const/4 v2, 0x0

    .line 145
    .local v2, "suitableFPSRange":[I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 146
    .local v1, "fpsRange":[I
    aget v5, v1, v9

    .line 147
    .local v5, "thisMin":I
    aget v4, v1, v10

    .line 148
    .local v4, "thisMax":I
    mul-int/lit16 v7, p1, 0x3e8

    if-lt v5, v7, :cond_0

    mul-int/lit16 v7, p2, 0x3e8

    if-gt v4, v7, :cond_0

    .line 149
    move-object v2, v1

    .line 153
    .end local v1    # "fpsRange":[I
    .end local v4    # "thisMax":I
    .end local v5    # "thisMin":I
    :cond_1
    if-nez v2, :cond_3

    .line 154
    const-string/jumbo v6, "CameraConfiguration"

    const-string/jumbo v7, "No suitable FPS range?"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v2    # "suitableFPSRange":[I
    :cond_2
    :goto_0
    return-void

    .line 156
    .restart local v2    # "suitableFPSRange":[I
    :cond_3
    const/4 v6, 0x2

    new-array v0, v6, [I

    .line 157
    .local v0, "currentFpsRange":[I
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 158
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 159
    const-string/jumbo v6, "CameraConfiguration"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "FPS range already set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    :cond_4
    const-string/jumbo v6, "CameraConfiguration"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Setting FPS range to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    aget v6, v2, v9

    aget v7, v2, v10

    invoke-virtual {p0, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0
.end method

.method public static setFocus(Landroid/hardware/Camera$Parameters;ZZZ)V
    .locals 8
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "autoFocus"    # Z
    .param p2, "disableContinuous"    # Z
    .param p3, "safeMode"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 60
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    .line 61
    .local v1, "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 62
    .local v0, "focusMode":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 63
    if-nez p3, :cond_0

    if-eqz p2, :cond_4

    .line 64
    :cond_0
    const-string/jumbo v2, "focus mode"

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "auto"

    aput-object v4, v3, v5

    invoke-static {v2, v1, v3}, Lcom/vkcoffee/android/barcode/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_1
    :goto_0
    if-nez p3, :cond_2

    if-nez v0, :cond_2

    .line 77
    const-string/jumbo v2, "focus mode"

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "macro"

    aput-object v4, v3, v5

    const-string/jumbo v4, "edof"

    aput-object v4, v3, v6

    invoke-static {v2, v1, v3}, Lcom/vkcoffee/android/barcode/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_2
    if-eqz v0, :cond_3

    .line 83
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 84
    const-string/jumbo v2, "CameraConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Focus mode already set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_3
    :goto_1
    return-void

    .line 68
    :cond_4
    const-string/jumbo v2, "focus mode"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "continuous-picture"

    aput-object v4, v3, v5

    const-string/jumbo v4, "continuous-video"

    aput-object v4, v3, v6

    const-string/jumbo v4, "auto"

    aput-object v4, v3, v7

    invoke-static {v2, v1, v3}, Lcom/vkcoffee/android/barcode/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_5
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static setFocusArea(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 170
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v1

    if-lez v1, :cond_0

    .line 171
    const-string/jumbo v1, "CameraConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Old focus areas: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFocusAreas()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/barcode/CameraConfigurationUtils;->toString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/16 v1, 0x190

    invoke-static {v1}, Lcom/vkcoffee/android/barcode/CameraConfigurationUtils;->buildMiddleArea(I)Ljava/util/List;

    move-result-object v0

    .line 173
    .local v0, "middleArea":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const-string/jumbo v1, "CameraConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting focus area to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/vkcoffee/android/barcode/CameraConfigurationUtils;->toString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 178
    .end local v0    # "middleArea":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    :goto_0
    return-void

    .line 176
    :cond_0
    const-string/jumbo v1, "CameraConfiguration"

    const-string/jumbo v2, "Device does not support focus areas"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setInvertColor(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 262
    const-string/jumbo v1, "negative"

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    const-string/jumbo v1, "CameraConfiguration"

    const-string/jumbo v2, "Negative effect already set"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    const-string/jumbo v1, "color effect"

    .line 267
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "negative"

    aput-object v5, v3, v4

    .line 266
    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/barcode/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "colorMode":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setMetering(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 181
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v1

    if-lez v1, :cond_0

    .line 183
    const/16 v1, 0x190

    invoke-static {v1}, Lcom/vkcoffee/android/barcode/CameraConfigurationUtils;->buildMiddleArea(I)Ljava/util/List;

    move-result-object v0

    .line 185
    .local v0, "middleArea":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 189
    .end local v0    # "middleArea":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    :goto_0
    return-void

    .line 187
    :cond_0
    const-string/jumbo v1, "CameraConfiguration"

    const-string/jumbo v2, "Device does not support metering areas"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setTorch(Landroid/hardware/Camera$Parameters;Z)V
    .locals 7
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "on"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 92
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 94
    .local v1, "supportedFlashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 95
    const-string/jumbo v2, "flash mode"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "torch"

    aput-object v4, v3, v5

    const-string/jumbo v4, "on"

    aput-object v4, v3, v6

    invoke-static {v2, v1, v3}, Lcom/vkcoffee/android/barcode/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "flashMode":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    const-string/jumbo v2, "CameraConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Flash mode already set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    :goto_1
    return-void

    .line 100
    .end local v0    # "flashMode":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "flash mode"

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "off"

    aput-object v4, v3, v5

    invoke-static {v2, v1, v3}, Lcom/vkcoffee/android/barcode/CameraConfigurationUtils;->findSettableValue(Ljava/lang/String;Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "flashMode":Ljava/lang/String;
    goto :goto_0

    .line 108
    :cond_2
    const-string/jumbo v2, "CameraConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Setting flash mode to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static setVideoStabilization(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 197
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getVideoStabilization()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string/jumbo v0, "CameraConfiguration"

    const-string/jumbo v1, "Video stabilization already enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_0
    return-void

    .line 201
    :cond_0
    const-string/jumbo v0, "CameraConfiguration"

    const-string/jumbo v1, "Enabling video stabilization..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    goto :goto_0

    .line 205
    :cond_1
    const-string/jumbo v0, "CameraConfiguration"

    const-string/jumbo v1, "This device does not support video stabilization"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setZoom(Landroid/hardware/Camera$Parameters;D)V
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "targetZoomRatio"    # D

    .prologue
    .line 223
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    invoke-static {p0, p1, p2}, Lcom/vkcoffee/android/barcode/CameraConfigurationUtils;->indexOfClosestZoom(Landroid/hardware/Camera$Parameters;D)Ljava/lang/Integer;

    move-result-object v0

    .line 225
    .local v0, "zoom":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 237
    .end local v0    # "zoom":Ljava/lang/Integer;
    :goto_0
    return-void

    .line 228
    .restart local v0    # "zoom":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 229
    const-string/jumbo v1, "CameraConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Zoom is already set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    :cond_1
    const-string/jumbo v1, "CameraConfiguration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting zoom to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    goto :goto_0

    .line 235
    .end local v0    # "zoom":Ljava/lang/Integer;
    :cond_2
    const-string/jumbo v1, "CameraConfiguration"

    const-string/jumbo v2, "Zoom is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static toString(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 397
    .local p0, "areas":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Landroid/hardware/Camera$Area;>;"
    if-nez p0, :cond_0

    .line 398
    const/4 v2, 0x0

    .line 404
    :goto_0
    return-object v2

    .line 400
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 402
    .local v0, "area":Landroid/hardware/Camera$Area;
    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/hardware/Camera$Area;->weight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 404
    .end local v0    # "area":Landroid/hardware/Camera$Area;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static toString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<[I>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, "arrays":Ljava/util/Collection;, "Ljava/util/Collection<[I>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 381
    :cond_0
    const-string/jumbo v2, "[]"

    .line 393
    :goto_0
    return-object v2

    .line 383
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 385
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 386
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<[I>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 387
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 389
    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 392
    :cond_3
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

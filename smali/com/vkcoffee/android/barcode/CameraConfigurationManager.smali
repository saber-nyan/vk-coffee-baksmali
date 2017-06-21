.class public Lcom/vkcoffee/android/barcode/CameraConfigurationManager;
.super Ljava/lang/Object;
.source "CameraConfigurationManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraConfiguration"

.field static final ZOOM:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static configure(Landroid/hardware/Camera;)V
    .locals 9
    .param p0, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/16 v8, 0x280

    .line 39
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 40
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    .line 41
    .local v3, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v0, 0x0

    .line 42
    .local v0, "chosenSize":Landroid/hardware/Camera$Size;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 43
    .local v2, "size":Landroid/hardware/Camera$Size;
    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    if-ne v6, v8, :cond_3

    .line 44
    move-object v0, v2

    .line 50
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    if-eqz v0, :cond_2

    .line 51
    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v5, v6}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 54
    :cond_2
    invoke-static {v1}, Lcom/vkcoffee/android/barcode/CameraConfigurationManager;->configureAdvanced(Landroid/hardware/Camera$Parameters;)V

    .line 55
    invoke-virtual {p0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 60
    .end local v0    # "chosenSize":Landroid/hardware/Camera$Size;
    .end local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v3    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :goto_1
    return-void

    .line 46
    .restart local v0    # "chosenSize":Landroid/hardware/Camera$Size;
    .restart local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    .restart local v2    # "size":Landroid/hardware/Camera$Size;
    .restart local v3    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_3
    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    if-ge v6, v8, :cond_0

    if-eqz v0, :cond_4

    iget v6, v0, Landroid/hardware/Camera$Size;->width:I

    iget v7, v2, Landroid/hardware/Camera$Size;->width:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v6, v7, :cond_0

    .line 47
    :cond_4
    move-object v0, v2

    goto :goto_0

    .line 57
    .end local v0    # "chosenSize":Landroid/hardware/Camera$Size;
    .end local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    .end local v3    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :catch_0
    move-exception v4

    .line 58
    .local v4, "x":Ljava/lang/Exception;
    const-string/jumbo v5, "vk"

    const-string/jumbo v6, "Error setting camera parameters!"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static configureAdvanced(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/vkcoffee/android/barcode/CameraConfigurationUtils;->setBestPreviewFPS(Landroid/hardware/Camera$Parameters;)V

    .line 64
    invoke-static {p0}, Lcom/vkcoffee/android/barcode/CameraConfigurationUtils;->setBarcodeSceneMode(Landroid/hardware/Camera$Parameters;)V

    .line 65
    invoke-static {p0}, Lcom/vkcoffee/android/barcode/CameraConfigurationUtils;->setVideoStabilization(Landroid/hardware/Camera$Parameters;)V

    .line 66
    invoke-static {p0}, Lcom/vkcoffee/android/barcode/CameraConfigurationUtils;->setMetering(Landroid/hardware/Camera$Parameters;)V

    .line 67
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {p0, v0, v1}, Lcom/vkcoffee/android/barcode/CameraConfigurationUtils;->setZoom(Landroid/hardware/Camera$Parameters;D)V

    .line 68
    return-void
.end method

.method private static logAllParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 71
    const-string/jumbo v1, "CameraConfiguration"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-static {p0}, Lcom/vkcoffee/android/barcode/CameraConfigurationUtils;->collectStats(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 73
    .local v0, "line":Ljava/lang/String;
    const-string/jumbo v4, "CameraConfiguration"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "line":Ljava/lang/String;
    :cond_0
    return-void
.end method

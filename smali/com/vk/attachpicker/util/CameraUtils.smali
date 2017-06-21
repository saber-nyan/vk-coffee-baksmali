.class public Lcom/vk/attachpicker/util/CameraUtils;
.super Ljava/lang/Object;
.source "CameraUtils.java"


# static fields
.field private static final cameraFilesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final requestId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final requestTypesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/vk/attachpicker/util/CameraUtils;->requestId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vk/attachpicker/util/CameraUtils;->cameraFilesMap:Ljava/util/HashMap;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vk/attachpicker/util/CameraUtils;->requestTypesMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMediaToGallery(Landroid/content/Context;Ljava/io/File;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "f"    # Ljava/io/File;
    .param p2, "listener"    # Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    .prologue
    .line 48
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getCameraRequestData(Z)Landroid/support/v4/util/Pair;
    .locals 5
    .param p0, "video"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    sget-object v2, Lcom/vk/attachpicker/util/CameraUtils;->requestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    .line 23
    .local v1, "id":I
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/vk/attachpicker/util/FileUtils;->getVideoFile()Ljava/io/File;

    move-result-object v0

    .line 24
    .local v0, "file":Ljava/io/File;
    :goto_0
    sget-object v2, Lcom/vk/attachpicker/util/CameraUtils;->cameraFilesMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v2, Lcom/vk/attachpicker/util/CameraUtils;->requestTypesMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v2, Landroid/support/v4/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 23
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    invoke-static {}, Lcom/vk/attachpicker/util/FileUtils;->getPhotoFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFileById(I)Ljava/io/File;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 30
    sget-object v0, Lcom/vk/attachpicker/util/CameraUtils;->cameraFilesMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public static isDeviceHasCamera()Z
    .locals 4

    .prologue
    .line 55
    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 57
    .local v1, "manager":Landroid/content/pm/PackageManager;
    const-string/jumbo v2, "android.hardware.camera"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 59
    .local v0, "hasCamera":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 60
    if-nez v0, :cond_0

    const-string/jumbo v2, "android.hardware.camera.any"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 63
    :cond_1
    :goto_0
    return v0

    .line 60
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRequestValid(I)Z
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 43
    sget-object v0, Lcom/vk/attachpicker/util/CameraUtils;->cameraFilesMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vk/attachpicker/util/CameraUtils;->requestTypesMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoRequest(I)Z
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 34
    sget-object v1, Lcom/vk/attachpicker/util/CameraUtils;->requestTypesMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 35
    .local v0, "res":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 36
    const/4 v1, 0x0

    .line 38
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

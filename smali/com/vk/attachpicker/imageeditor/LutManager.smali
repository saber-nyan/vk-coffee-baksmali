.class public Lcom/vk/attachpicker/imageeditor/LutManager;
.super Ljava/lang/Object;
.source "LutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/imageeditor/LutManager$BitmapLruCache;
    }
.end annotation


# static fields
.field private static final LOOKUP_BYTE_SIZE:I = 0x100000

.field private static final bitmapLruCache:Lcom/vk/attachpicker/imageeditor/LutManager$BitmapLruCache;

.field private static final colorCorrectionExecutor:Ljava/util/concurrent/ExecutorService;

.field private static labLookupBitmap:Landroid/graphics/Bitmap;

.field private static lookupBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/vk/attachpicker/imageeditor/LutManager;->colorCorrectionExecutor:Ljava/util/concurrent/ExecutorService;

    .line 31
    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/vk/attachpicker/imageeditor/LutManager;->getHeapSizeInBytes(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 32
    .local v0, "memoryCacheSize":I
    new-instance v1, Lcom/vk/attachpicker/imageeditor/LutManager$BitmapLruCache;

    invoke-direct {v1, v0}, Lcom/vk/attachpicker/imageeditor/LutManager$BitmapLruCache;-><init>(I)V

    sput-object v1, Lcom/vk/attachpicker/imageeditor/LutManager;->bitmapLruCache:Lcom/vk/attachpicker/imageeditor/LutManager$BitmapLruCache;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    return-void
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/vk/attachpicker/imageeditor/LutManager;->bitmapLruCache:Lcom/vk/attachpicker/imageeditor/LutManager$BitmapLruCache;

    invoke-virtual {v0}, Lcom/vk/attachpicker/imageeditor/LutManager$BitmapLruCache;->evictAll()V

    .line 147
    return-void
.end method

.method private static createCurve(Lcom/vk/attachpicker/imageeditor/json/ApiFilter;)[I
    .locals 10
    .param p0, "filter"    # Lcom/vk/attachpicker/imageeditor/json/ApiFilter;

    .prologue
    const/16 v5, 0xa

    .line 116
    new-array v0, v5, [I

    .line 117
    .local v0, "redRaw":[I
    new-array v1, v5, [I

    .line 118
    .local v1, "greenRaw":[I
    new-array v2, v5, [I

    .line 119
    .local v2, "blueRaw":[I
    new-array v3, v5, [I

    .line 120
    .local v3, "rgbRaw":[I
    iget-object v5, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->redCurve:[I

    invoke-static {v0, v5}, Lcom/vk/attachpicker/imageeditor/LutManager;->syncRawArray([I[I)V

    .line 121
    iget-object v5, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->greenCurve:[I

    invoke-static {v1, v5}, Lcom/vk/attachpicker/imageeditor/LutManager;->syncRawArray([I[I)V

    .line 122
    iget-object v5, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->blueCurve:[I

    invoke-static {v2, v5}, Lcom/vk/attachpicker/imageeditor/LutManager;->syncRawArray([I[I)V

    .line 123
    iget-object v5, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->rgbCurve:[I

    invoke-static {v3, v5}, Lcom/vk/attachpicker/imageeditor/LutManager;->syncRawArray([I[I)V

    .line 125
    const/16 v5, 0x100

    new-array v4, v5, [I

    .line 126
    .local v4, "finalCurve":[I
    iget v5, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->brightness:F

    iget v6, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->contrast:F

    iget v7, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->fade:F

    iget v8, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->temperature:F

    iget v9, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->tint:F

    invoke-static/range {v0 .. v9}, Lcom/vk/attachpicker/jni/Native;->createCurve([I[I[I[I[IFFFFF)V

    .line 129
    return-object v4
.end method

.method public static declared-synchronized getBigLookupBitmap(Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "wrapper"    # Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;

    .prologue
    .line 107
    const-class v3, Lcom/vk/attachpicker/imageeditor/LutManager;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f020252

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 108
    .local v1, "mutableLut":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f020254

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    .local v0, "labLut":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;->filter:Lcom/vk/attachpicker/imageeditor/json/ApiFilter;

    invoke-static {v2}, Lcom/vk/attachpicker/imageeditor/LutManager;->createCurve(Lcom/vk/attachpicker/imageeditor/json/ApiFilter;)[I

    move-result-object v2

    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;->filter:Lcom/vk/attachpicker/imageeditor/json/ApiFilter;

    iget v4, v4, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->saturation:F

    invoke-static {v1, v2, v4}, Lcom/vk/attachpicker/jni/Native;->applyCurveAndSaturationBitmap(Landroid/graphics/Bitmap;[IF)V

    .line 110
    iget-object v2, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;->filter:Lcom/vk/attachpicker/imageeditor/json/ApiFilter;

    iget-object v2, v2, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->colors:Ljava/util/ArrayList;

    invoke-static {v1, v0, v2}, Lcom/vk/attachpicker/jni/Native;->colorCorrectionBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/util/List;)V

    .line 111
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit v3

    return-object v1

    .line 107
    .end local v0    # "labLut":Landroid/graphics/Bitmap;
    .end local v1    # "mutableLut":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getHeapSizeInBytes(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const-string/jumbo v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 37
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 38
    .local v1, "largeHeap":Z
    :goto_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    .line 39
    .local v2, "memoryClass":I
    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v2

    .line 42
    :cond_0
    mul-int/lit16 v3, v2, 0x400

    mul-int/lit16 v2, v3, 0x400

    .line 43
    return v2

    .line 37
    .end local v1    # "largeHeap":Z
    .end local v2    # "memoryClass":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getLabLookupBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 60
    const-class v2, Lcom/vk/attachpicker/imageeditor/LutManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/vk/attachpicker/imageeditor/LutManager;->labLookupBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/vk/attachpicker/imageeditor/LutManager;->labLookupBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 62
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 63
    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020253

    invoke-static {v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/vk/attachpicker/imageeditor/LutManager;->labLookupBitmap:Landroid/graphics/Bitmap;

    .line 65
    :cond_1
    sget-object v1, Lcom/vk/attachpicker/imageeditor/LutManager;->labLookupBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 60
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static declared-synchronized getLookupBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 56
    const-class v1, Lcom/vk/attachpicker/imageeditor/LutManager;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/vk/attachpicker/imageeditor/LutManager;->getOriginalLookupBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getLookupBitmap(Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "wrapper"    # Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;

    .prologue
    .line 75
    const-class v4, Lcom/vk/attachpicker/imageeditor/LutManager;

    monitor-enter v4

    :try_start_0
    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;->id:Ljava/lang/String;

    .line 76
    .local v1, "id":Ljava/lang/String;
    const-string/jumbo v3, "FILTER_ID_ORIGINAL"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    invoke-static {}, Lcom/vk/attachpicker/imageeditor/LutManager;->getOriginalLookupBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 89
    :cond_0
    :goto_0
    monitor-exit v4

    return-object v0

    .line 80
    :cond_1
    :try_start_1
    sget-object v3, Lcom/vk/attachpicker/imageeditor/LutManager;->bitmapLruCache:Lcom/vk/attachpicker/imageeditor/LutManager$BitmapLruCache;

    invoke-virtual {v3, v1}, Lcom/vk/attachpicker/imageeditor/LutManager$BitmapLruCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 81
    .local v0, "cachedLut":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    :cond_2
    invoke-static {}, Lcom/vk/attachpicker/imageeditor/LutManager;->getLookupBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 85
    .local v2, "mutableLut":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;->filter:Lcom/vk/attachpicker/imageeditor/json/ApiFilter;

    invoke-static {v3}, Lcom/vk/attachpicker/imageeditor/LutManager;->createCurve(Lcom/vk/attachpicker/imageeditor/json/ApiFilter;)[I

    move-result-object v3

    iget-object v5, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;->filter:Lcom/vk/attachpicker/imageeditor/json/ApiFilter;

    iget v5, v5, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->saturation:F

    invoke-static {v2, v3, v5}, Lcom/vk/attachpicker/jni/Native;->applyCurveAndSaturationBitmap(Landroid/graphics/Bitmap;[IF)V

    .line 86
    invoke-static {}, Lcom/vk/attachpicker/imageeditor/LutManager;->getLabLookupBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v5, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;->filter:Lcom/vk/attachpicker/imageeditor/json/ApiFilter;

    iget-object v5, v5, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->colors:Ljava/util/ArrayList;

    invoke-static {v2, v3, v5}, Lcom/vk/attachpicker/jni/Native;->colorCorrectionBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/util/List;)V

    .line 88
    sget-object v3, Lcom/vk/attachpicker/imageeditor/LutManager;->bitmapLruCache:Lcom/vk/attachpicker/imageeditor/LutManager$BitmapLruCache;

    invoke-virtual {v3, v1, v2}, Lcom/vk/attachpicker/imageeditor/LutManager$BitmapLruCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 89
    goto :goto_0

    .line 75
    .end local v0    # "cachedLut":Landroid/graphics/Bitmap;
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "mutableLut":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized getLookupBitmap(Ljava/util/List;)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "colors":Ljava/util/List;, "Ljava/util/List<Lcom/vk/attachpicker/imageeditor/json/ApiColorPreference;>;"
    const-class v2, Lcom/vk/attachpicker/imageeditor/LutManager;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/vk/attachpicker/imageeditor/LutManager;->getLookupBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 70
    .local v0, "mutableLut":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/vk/attachpicker/imageeditor/LutManager;->getLabLookupBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/vk/attachpicker/jni/Native;->colorCorrectionBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit v2

    return-object v0

    .line 69
    .end local v0    # "mutableLut":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static declared-synchronized getOriginalLookupBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 47
    const-class v2, Lcom/vk/attachpicker/imageeditor/LutManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/vk/attachpicker/imageeditor/LutManager;->lookupBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/vk/attachpicker/imageeditor/LutManager;->lookupBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 49
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 50
    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020251

    invoke-static {v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/vk/attachpicker/imageeditor/LutManager;->lookupBitmap:Landroid/graphics/Bitmap;

    .line 52
    :cond_1
    sget-object v1, Lcom/vk/attachpicker/imageeditor/LutManager;->lookupBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static synthetic lambda$populateBitmap$75(Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;)V
    .locals 5

    .prologue
    .line 95
    iget-object v1, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;->id:Ljava/lang/String;

    .line 96
    .local v1, "id":Ljava/lang/String;
    sget-object v3, Lcom/vk/attachpicker/imageeditor/LutManager;->bitmapLruCache:Lcom/vk/attachpicker/imageeditor/LutManager$BitmapLruCache;

    invoke-virtual {v3, v1}, Lcom/vk/attachpicker/imageeditor/LutManager$BitmapLruCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    .local v0, "cachedLut":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    :cond_0
    invoke-static {}, Lcom/vk/attachpicker/imageeditor/LutManager;->getLookupBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 99
    .local v2, "mutableLut":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;->filter:Lcom/vk/attachpicker/imageeditor/json/ApiFilter;

    invoke-static {v3}, Lcom/vk/attachpicker/imageeditor/LutManager;->createCurve(Lcom/vk/attachpicker/imageeditor/json/ApiFilter;)[I

    move-result-object v3

    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;->filter:Lcom/vk/attachpicker/imageeditor/json/ApiFilter;

    iget v4, v4, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->saturation:F

    invoke-static {v2, v3, v4}, Lcom/vk/attachpicker/jni/Native;->applyCurveAndSaturationBitmap(Landroid/graphics/Bitmap;[IF)V

    .line 100
    invoke-static {}, Lcom/vk/attachpicker/imageeditor/LutManager;->getLabLookupBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;->filter:Lcom/vk/attachpicker/imageeditor/json/ApiFilter;

    iget-object v4, v4, Lcom/vk/attachpicker/imageeditor/json/ApiFilter;->colors:Ljava/util/ArrayList;

    invoke-static {v2, v3, v4}, Lcom/vk/attachpicker/jni/Native;->colorCorrectionBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/util/List;)V

    .line 101
    sget-object v3, Lcom/vk/attachpicker/imageeditor/LutManager;->bitmapLruCache:Lcom/vk/attachpicker/imageeditor/LutManager$BitmapLruCache;

    invoke-virtual {v3, v1, v2}, Lcom/vk/attachpicker/imageeditor/LutManager$BitmapLruCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 103
    .end local v2    # "mutableLut":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method public static declared-synchronized populateBitmap(Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;)V
    .locals 3
    .param p0, "wrapper"    # Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;

    .prologue
    .line 94
    const-class v1, Lcom/vk/attachpicker/imageeditor/LutManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/vk/attachpicker/imageeditor/LutManager;->colorCorrectionExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0}, Lcom/vk/attachpicker/imageeditor/LutManager$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/imageeditor/json/ApiFilterWrapper;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit v1

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static syncRawArray([I[I)V
    .locals 5
    .param p0, "raw"    # [I
    .param p1, "array"    # [I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 133
    aput v0, p0, v0

    .line 134
    aget v0, p1, v0

    aput v0, p0, v1

    .line 135
    const/16 v0, 0x40

    aput v0, p0, v2

    .line 136
    aget v0, p1, v1

    aput v0, p0, v3

    .line 137
    const/16 v0, 0x80

    aput v0, p0, v4

    .line 138
    const/4 v0, 0x5

    aget v1, p1, v2

    aput v1, p0, v0

    .line 139
    const/4 v0, 0x6

    const/16 v1, 0xc0

    aput v1, p0, v0

    .line 140
    const/4 v0, 0x7

    aget v1, p1, v3

    aput v1, p0, v0

    .line 141
    const/16 v0, 0x8

    const/16 v1, 0xff

    aput v1, p0, v0

    .line 142
    const/16 v0, 0x9

    aget v1, p1, v4

    aput v1, p0, v0

    .line 143
    return-void
.end method

.class public Lcom/vk/attachpicker/Picker;
.super Ljava/lang/Object;
.source "Picker.java"


# static fields
.field private static appContext:Landroid/content/Context;

.field private static final backgroundExecutor:Ljava/util/concurrent/ExecutorService;

.field private static final handler:Landroid/os/Handler;

.field public static final imageCache:Lcom/vk/attachpicker/util/ImageCache;

.field private static final photoExecutorService:Ljava/util/concurrent/ExecutorService;

.field private static picasso:Lcom/squareup/picasso/Picasso;

.field private static final timer:Ljava/util/Timer;

.field private static final videoExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/vk/attachpicker/util/ImageCache;

    invoke-direct {v0}, Lcom/vk/attachpicker/util/ImageCache;-><init>()V

    sput-object v0, Lcom/vk/attachpicker/Picker;->imageCache:Lcom/vk/attachpicker/util/ImageCache;

    .line 23
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/vk/attachpicker/Picker;->photoExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 24
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/vk/attachpicker/Picker;->videoExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 61
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/vk/attachpicker/Picker;->timer:Ljava/util/Timer;

    .line 62
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/vk/attachpicker/Picker;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/vk/attachpicker/Picker;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/vk/attachpicker/Picker;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static color(I)I
    .locals 1
    .param p0, "colorResId"    # I

    .prologue
    .line 54
    sget-object v0, Lcom/vk/attachpicker/Picker;->appContext:Landroid/content/Context;

    invoke-static {v0, p0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static executor(Z)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "forVideo"    # Z

    .prologue
    .line 58
    if-eqz p0, :cond_0

    sget-object v0, Lcom/vk/attachpicker/Picker;->videoExecutorService:Ljava/util/concurrent/ExecutorService;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/vk/attachpicker/Picker;->photoExecutorService:Ljava/util/concurrent/ExecutorService;

    goto :goto_0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/vk/attachpicker/Picker;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getHeapSizeInBytes(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    const-string/jumbo v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 92
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 93
    .local v1, "largeHeap":Z
    :goto_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    .line 94
    .local v2, "memoryClass":I
    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v2

    .line 97
    :cond_0
    mul-int/lit16 v3, v2, 0x400

    mul-int/lit16 v2, v3, 0x400

    .line 98
    return v2

    .line 92
    .end local v1    # "largeHeap":Z
    .end local v2    # "memoryClass":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vk/attachpicker/Picker;->init(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    sput-object p0, Lcom/vk/attachpicker/Picker;->appContext:Landroid/content/Context;

    .line 37
    invoke-static {p0}, Lcom/vk/attachpicker/Picker;->getHeapSizeInBytes(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 38
    .local v1, "memoryCacheSize":I
    new-instance v0, Lcom/squareup/picasso/LruCache;

    invoke-direct {v0, v1}, Lcom/squareup/picasso/LruCache;-><init>(I)V

    .line 39
    .local v0, "memoryCache":Lcom/squareup/picasso/LruCache;
    new-instance v2, Lcom/squareup/picasso/Picasso$Builder;

    invoke-direct {v2, p0}, Lcom/squareup/picasso/Picasso$Builder;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {v2, v0}, Lcom/squareup/picasso/Picasso$Builder;->memoryCache(Lcom/squareup/picasso/Cache;)Lcom/squareup/picasso/Picasso$Builder;

    move-result-object v2

    new-instance v3, Lcom/squareup/picasso/OkHttpDownloader;

    sget-object v4, Lcom/vk/attachpicker/Picker;->appContext:Landroid/content/Context;

    const-wide/32 v6, 0x6400000

    invoke-direct {v3, v4, v6, v7}, Lcom/squareup/picasso/OkHttpDownloader;-><init>(Landroid/content/Context;J)V

    .line 41
    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso$Builder;->downloader(Lcom/squareup/picasso/Downloader;)Lcom/squareup/picasso/Picasso$Builder;

    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lcom/squareup/picasso/Picasso$Builder;->build()Lcom/squareup/picasso/Picasso;

    move-result-object v2

    sput-object v2, Lcom/vk/attachpicker/Picker;->picasso:Lcom/squareup/picasso/Picasso;

    .line 43
    return-void
.end method

.method public static picasso()Lcom/squareup/picasso/Picasso;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/vk/attachpicker/Picker;->picasso:Lcom/squareup/picasso/Picasso;

    return-object v0
.end method

.method public static removeTasks(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 87
    sget-object v0, Lcom/vk/attachpicker/Picker;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method

.method public static run(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 79
    sget-object v0, Lcom/vk/attachpicker/Picker;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    return-void
.end method

.method public static runBackground(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 66
    sget-object v0, Lcom/vk/attachpicker/Picker;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 67
    return-void
.end method

.method public static runBackground(Ljava/lang/Runnable;J)V
    .locals 3
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J

    .prologue
    .line 70
    sget-object v0, Lcom/vk/attachpicker/Picker;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/vk/attachpicker/Picker$1;

    invoke-direct {v1, p0}, Lcom/vk/attachpicker/Picker$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 76
    return-void
.end method

.method public static runDelayed(Ljava/lang/Runnable;J)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J

    .prologue
    .line 83
    sget-object v0, Lcom/vk/attachpicker/Picker;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    return-void
.end method

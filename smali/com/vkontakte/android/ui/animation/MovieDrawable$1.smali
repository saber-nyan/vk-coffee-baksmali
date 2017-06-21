.class Lcom/vkontakte/android/ui/animation/MovieDrawable$1;
.super Ljava/lang/Object;
.source "MovieDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ui/animation/MovieDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastRenderTime:J

.field final synthetic this$0:Lcom/vkontakte/android/ui/animation/MovieDrawable;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/animation/MovieDrawable;)V
    .locals 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable$1;->lastRenderTime:J

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/animation/MovieDrawable$1;)Lcom/vkontakte/android/ui/animation/MovieDrawable;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 30
    iget-object v7, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    iget-boolean v7, v7, Lcom/vkontakte/android/ui/animation/MovieDrawable;->isRecycled:Z

    if-eqz v7, :cond_1

    .line 31
    iget-object v7, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/animation/MovieDrawable;->releaseInternal()V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    const/4 v3, 0x0

    .line 36
    .local v3, "sizeReady":Z
    :try_start_0
    iget-object v7, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    iget-wide v8, v7, Lcom/vkontakte/android/ui/animation/MovieDrawable;->nativePtr:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    .line 37
    iget-object v7, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    iget-object v8, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    iget-object v8, v8, Lcom/vkontakte/android/ui/animation/MovieDrawable;->path:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/vkontakte/android/ui/animation/MovieDrawable;->nativeCreate(Ljava/lang/String;Z)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/vkontakte/android/ui/animation/MovieDrawable;->nativePtr:J

    .line 38
    iget-object v7, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    iget-wide v8, v7, Lcom/vkontakte/android/ui/animation/MovieDrawable;->nativePtr:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_2

    .line 39
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "Native Pointer is null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :catch_0
    move-exception v6

    .line 71
    .local v6, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/vkontakte/android/ui/animation/MovieDrawable;->access$0()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Decoding error"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 41
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    iget-wide v8, v7, Lcom/vkontakte/android/ui/animation/MovieDrawable;->nativePtr:J

    invoke-static {v8, v9}, Lcom/vkontakte/android/ui/animation/MovieDrawable;->nativeGetSize(J)I

    move-result v2

    .line 45
    .local v2, "size":I
    iget-object v7, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    shr-int/lit8 v8, v2, 0x10

    iput v8, v7, Lcom/vkontakte/android/ui/animation/MovieDrawable;->width:I

    .line 46
    iget-object v7, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    int-to-short v8, v2

    iput v8, v7, Lcom/vkontakte/android/ui/animation/MovieDrawable;->height:I

    .line 47
    const/4 v3, 0x1

    .line 49
    .end local v2    # "size":I
    :cond_3
    iget-object v7, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    iget-wide v8, v7, Lcom/vkontakte/android/ui/animation/MovieDrawable;->nativePtr:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    .line 50
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "Native Pointer is null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 52
    :cond_4
    iget-object v7, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    iget-object v7, v7, Lcom/vkontakte/android/ui/animation/MovieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_5

    .line 53
    iget-object v7, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    iget-object v8, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    iget v8, v8, Lcom/vkontakte/android/ui/animation/MovieDrawable;->width:I

    iget-object v9, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    iget v9, v9, Lcom/vkontakte/android/ui/animation/MovieDrawable;->height:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v7, Lcom/vkontakte/android/ui/animation/MovieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    .line 55
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 56
    .local v4, "start":J
    const-wide v8, 0x408f400000000000L    # 1000.0

    iget-object v7, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    iget-wide v10, v7, Lcom/vkontakte/android/ui/animation/MovieDrawable;->nativePtr:J

    invoke-static {v10, v11}, Lcom/vkontakte/android/ui/animation/MovieDrawable;->nativeDecode(J)D

    move-result-wide v10

    div-double v0, v8, v10

    .line 57
    .local v0, "frameTime":D
    iget-object v7, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    iget-boolean v7, v7, Lcom/vkontakte/android/ui/animation/MovieDrawable;->isRunning:Z

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    iget-boolean v7, v7, Lcom/vkontakte/android/ui/animation/MovieDrawable;->isRecycled:Z

    if-eqz v7, :cond_0

    .line 58
    :cond_6
    iget-object v7, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    iget-object v7, v7, Lcom/vkontakte/android/ui/animation/MovieDrawable;->mWorkerThread:Lcom/vkcoffee/android/background/WorkerThread;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    long-to-double v8, v8

    sub-double v8, v0, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v10

    double-to-long v8, v8

    invoke-virtual {v7, p0, v8, v9}, Lcom/vkcoffee/android/background/WorkerThread;->postRunnable(Ljava/lang/Runnable;J)V

    .line 59
    iget-object v7, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    iget-boolean v7, v7, Lcom/vkontakte/android/ui/animation/MovieDrawable;->isRunning:Z

    if-eqz v7, :cond_0

    .line 60
    if-eqz v3, :cond_7

    iget-object v7, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    iget-object v7, v7, Lcom/vkontakte/android/ui/animation/MovieDrawable;->mReadyCallback:Lcom/vkcoffee/android/functions/VoidF1;

    if-eqz v7, :cond_7

    .line 61
    new-instance v7, Lcom/vkontakte/android/ui/animation/MovieDrawable$1$1;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/ui/animation/MovieDrawable$1$1;-><init>(Lcom/vkontakte/android/ui/animation/MovieDrawable$1;)V

    invoke-static {v7}, Lcom/vkcoffee/android/ViewUtils;->post(Ljava/lang/Runnable;)V

    .line 67
    :cond_7
    iget-object v7, p0, Lcom/vkontakte/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    iget-object v7, v7, Lcom/vkontakte/android/ui/animation/MovieDrawable;->mInvalidateAction:Ljava/lang/Runnable;

    invoke-static {v7}, Lcom/vkcoffee/android/ViewUtils;->post(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

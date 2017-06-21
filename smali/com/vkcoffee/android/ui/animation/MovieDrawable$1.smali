.class Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;
.super Ljava/lang/Object;
.source "MovieDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/animation/MovieDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastRenderTime:J

.field final synthetic this$0:Lcom/vkcoffee/android/ui/animation/MovieDrawable;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/animation/MovieDrawable;)V
    .locals 2
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/animation/MovieDrawable;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkcoffee/android/ui/animation/MovieDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;->lastRenderTime:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 49
    invoke-static {}, Lcom/vkcoffee/android/ui/animation/MovieDrawable;->access$000()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 50
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 51
    .local v8, "now":J
    invoke-static {}, Lcom/vkcoffee/android/ui/animation/MovieDrawable;->access$100()Ljava/lang/String;

    move-result-object v15

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Time between frames: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;->lastRenderTime:J

    move-wide/from16 v20, v0

    sub-long v20, v8, v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;->lastRenderTime:J

    .line 54
    .end local v8    # "now":J
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkcoffee/android/ui/animation/MovieDrawable;

    iget-boolean v15, v15, Lcom/vkcoffee/android/ui/animation/MovieDrawable;->isRecycled:Z

    if-eqz v15, :cond_2

    .line 55
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkcoffee/android/ui/animation/MovieDrawable;

    invoke-virtual {v15}, Lcom/vkcoffee/android/ui/animation/MovieDrawable;->releaseInternal()V

    .line 101
    :cond_1
    :goto_0
    return-void

    .line 58
    :cond_2
    const/4 v11, 0x0

    .line 60
    .local v11, "sizeReady":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkcoffee/android/ui/animation/MovieDrawable;

    iget-wide v0, v15, Lcom/vkcoffee/android/ui/animation/MovieDrawable;->nativePtr:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v15, v18, v20

    if-nez v15, :cond_5

    .line 61
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkcoffee/android/ui/animation/MovieDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkcoffee/android/ui/animation/MovieDrawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkcoffee/android/ui/animation/MovieDrawable;->path:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/vkcoffee/android/ui/animation/MovieDrawable;->access$000()Z

    move-result v19

    invoke-static/range {v18 .. v19}, Lcom/vkcoffee/android/ui/animation/MovieDrawable;->nativeCreate(Ljava/lang/String;Z)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v15, Lcom/vkcoffee/android/ui/animation/MovieDrawable;->nativePtr:J

    .line 62
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkcoffee/android/ui/animation/MovieDrawable;

    iget-wide v0, v15, Lcom/vkcoffee/android/ui/animation/MovieDrawable;->nativePtr:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v15, v18, v20

    if-nez v15, :cond_3

    .line 63
    new-instance v15, Ljava/lang/NullPointerException;

    const-string/jumbo v18, "Native Pointer is null"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :catch_0
    move-exception v14

    .line 98
    .local v14, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/vkcoffee/android/ui/animation/MovieDrawable;->access$100()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v18, "Decoding error"

    move-object/from16 v0, v18

    invoke-static {v15, v0, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 65
    .end local v14    # "t":Ljava/lang/Throwable;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkcoffee/android/ui/animation/MovieDrawable;

    iget-wide v0, v15, Lcom/vkcoffee/android/ui/animation/MovieDrawable;->nativePtr:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lcom/vkcoffee/android/ui/animation/MovieDrawable;->nativeGetSize(J)I

    move-result v10

    .line 66
    .local v10, "size":I
    invoke-static {}, Lcom/vkcoffee/android/ui/animation/MovieDrawable;->access$000()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 67
    invoke-static {}, Lcom/vkcoffee/android/ui/animation/MovieDrawable;->access$100()Ljava/lang/String;

    move-result-object v15

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "nativeCreate() #"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkcoffee/android/ui/animation/MovieDrawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->hashCode()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkcoffee/android/ui/animation/MovieDrawable;

    shr-int/lit8 v18, v10, 0x10

    move/from16 v0, v18

    iput v0, v15, Lcom/vkcoffee/android/ui/animation/MovieDrawable;->width:I

    .line 70
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkcoffee/android/ui/animation/MovieDrawable;

    int-to-short v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v15, Lcom/vkcoffee/android/ui/animation/MovieDrawable;->height:I

    .line 71
    const/4 v11, 0x1

    .line 73
    .end local v10    # "size":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkcoffee/android/ui/animation/MovieDrawable;

    iget-wide v0, v15, Lcom/vkcoffee/android/ui/animation/MovieDrawable;->nativePtr:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v15, v18, v20

    if-nez v15, :cond_6

    .line 74
    new-instance v15, Ljava/lang/NullPointerException;

    const-string/jumbo v18, "Native Pointer is null"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 76
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkcoffee/android/ui/animation/MovieDrawable;

    iget-object v15, v15, Lcom/vkcoffee/android/ui/animation/MovieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    if-nez v15, :cond_7

    .line 77
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkcoffee/android/ui/animation/MovieDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkcoffee/android/ui/animation/MovieDrawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkcoffee/android/ui/animation/MovieDrawable;->width:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkcoffee/android/ui/animation/MovieDrawable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkcoffee/android/ui/animation/MovieDrawable;->height:I

    move/from16 v19, v0

    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v18 .. v20}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/vkcoffee/android/ui/animation/MovieDrawable;->renderingBitmap:Landroid/graphics/Bitmap;

    .line 79
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 80
    .local v12, "start":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkcoffee/android/ui/animation/MovieDrawable;

    iget-wide v0, v15, Lcom/vkcoffee/android/ui/animation/MovieDrawable;->nativePtr:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lcom/vkcoffee/android/ui/animation/MovieDrawable;->nativeDecode(J)D

    move-result-wide v4

    .line 81
    .local v4, "fps":D
    const-wide v18, 0x408f400000000000L    # 1000.0

    div-double v6, v18, v4

    .line 82
    .local v6, "frameTime":D
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkcoffee/android/ui/animation/MovieDrawable;

    iget-boolean v15, v15, Lcom/vkcoffee/android/ui/animation/MovieDrawable;->isRunning:Z

    if-nez v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkcoffee/android/ui/animation/MovieDrawable;

    iget-boolean v15, v15, Lcom/vkcoffee/android/ui/animation/MovieDrawable;->isRecycled:Z

    if-eqz v15, :cond_1

    .line 83
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    sub-long v16, v18, v12

    .line 84
    .local v16, "time":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkcoffee/android/ui/animation/MovieDrawable;

    iget-object v15, v15, Lcom/vkcoffee/android/ui/animation/MovieDrawable;->mWorkerThread:Lcom/vkcoffee/android/background/WorkerThread;

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v18, v0

    sub-double v18, v6, v18

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v15, v0, v1, v2}, Lcom/vkcoffee/android/background/WorkerThread;->postRunnable(Ljava/lang/Runnable;J)V

    .line 85
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkcoffee/android/ui/animation/MovieDrawable;

    iget-boolean v15, v15, Lcom/vkcoffee/android/ui/animation/MovieDrawable;->isRunning:Z

    if-eqz v15, :cond_1

    .line 86
    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkcoffee/android/ui/animation/MovieDrawable;

    iget-object v15, v15, Lcom/vkcoffee/android/ui/animation/MovieDrawable;->mReadyCallback:Lcom/vkcoffee/android/functions/VoidF1;

    if-eqz v15, :cond_9

    .line 87
    new-instance v15, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1$1;-><init>(Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;)V

    invoke-static {v15}, Lcom/vkcoffee/android/ViewUtils;->post(Ljava/lang/Runnable;)V

    .line 94
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/animation/MovieDrawable$1;->this$0:Lcom/vkcoffee/android/ui/animation/MovieDrawable;

    iget-object v15, v15, Lcom/vkcoffee/android/ui/animation/MovieDrawable;->mInvalidateAction:Ljava/lang/Runnable;

    invoke-static {v15}, Lcom/vkcoffee/android/ViewUtils;->post(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

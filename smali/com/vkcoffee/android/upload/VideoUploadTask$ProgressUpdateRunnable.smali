.class Lcom/vkcoffee/android/upload/VideoUploadTask$ProgressUpdateRunnable;
.super Ljava/lang/Object;
.source "VideoUploadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/upload/VideoUploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressUpdateRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/upload/VideoUploadTask;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/upload/VideoUploadTask;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/vkcoffee/android/upload/VideoUploadTask$ProgressUpdateRunnable;->this$0:Lcom/vkcoffee/android/upload/VideoUploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/upload/VideoUploadTask;Lcom/vkcoffee/android/upload/VideoUploadTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/upload/VideoUploadTask;
    .param p2, "x1"    # Lcom/vkcoffee/android/upload/VideoUploadTask$1;

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/upload/VideoUploadTask$ProgressUpdateRunnable;-><init>(Lcom/vkcoffee/android/upload/VideoUploadTask;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 356
    iget-object v0, p0, Lcom/vkcoffee/android/upload/VideoUploadTask$ProgressUpdateRunnable;->this$0:Lcom/vkcoffee/android/upload/VideoUploadTask;

    invoke-static {}, Lcom/vkcoffee/android/upload/VideoUploadTask;->nativeGetProgress()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/vkcoffee/android/upload/VideoUploadTask;->access$500(Lcom/vkcoffee/android/upload/VideoUploadTask;D)V

    .line 357
    iget-object v0, p0, Lcom/vkcoffee/android/upload/VideoUploadTask$ProgressUpdateRunnable;->this$0:Lcom/vkcoffee/android/upload/VideoUploadTask;

    invoke-static {v0}, Lcom/vkcoffee/android/upload/VideoUploadTask;->access$600(Lcom/vkcoffee/android/upload/VideoUploadTask;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 358
    return-void
.end method

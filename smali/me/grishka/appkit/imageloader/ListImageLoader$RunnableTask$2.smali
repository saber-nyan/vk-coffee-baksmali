.class Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask$2;
.super Ljava/lang/Object;
.source "ListImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    .prologue
    .line 308
    iput-object p1, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask$2;->this$1:Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    iput-object p2, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask$2;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 311
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask$2;->this$1:Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    iget-object v0, v0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->this$0:Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-static {v0}, Lme/grishka/appkit/imageloader/ListImageLoader;->access$200(Lme/grishka/appkit/imageloader/ListImageLoader;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask$2;->this$1:Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask$2;->this$1:Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    iget-object v0, v0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->this$0:Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-static {v0}, Lme/grishka/appkit/imageloader/ListImageLoader;->access$200(Lme/grishka/appkit/imageloader/ListImageLoader;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask$2;->this$1:Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_0
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask$2;->this$1:Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    iget-boolean v0, v0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->set:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask$2;->this$1:Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    iget-boolean v0, v0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->canceled:Z

    if-nez v0, :cond_1

    .line 315
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask$2;->this$1:Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    iget-object v0, v0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->this$0:Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-static {v0}, Lme/grishka/appkit/imageloader/ListImageLoader;->access$300(Lme/grishka/appkit/imageloader/ListImageLoader;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 317
    :try_start_0
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask$2;->this$1:Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    iget-object v0, v0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->this$0:Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-static {v0}, Lme/grishka/appkit/imageloader/ListImageLoader;->access$500(Lme/grishka/appkit/imageloader/ListImageLoader;)Landroid/support/v4/util/LongSparseArray;

    move-result-object v0

    iget-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask$2;->this$1:Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    iget v1, v1, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->item:I

    iget-object v2, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask$2;->this$1:Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    iget v2, v2, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->image:I

    invoke-static {v1, v2}, Lme/grishka/appkit/imageloader/ListImageLoader;->access$400(II)J

    move-result-wide v2

    iget-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask$2;->this$1:Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    iget-object v1, v1, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask$2;->this$1:Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    iget-object v0, v0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->this$0:Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-static {v0}, Lme/grishka/appkit/imageloader/ListImageLoader;->access$300(Lme/grishka/appkit/imageloader/ListImageLoader;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 322
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask$2;->this$1:Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    iget-object v0, v0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->this$0:Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-static {v0}, Lme/grishka/appkit/imageloader/ListImageLoader;->access$600(Lme/grishka/appkit/imageloader/ListImageLoader;)Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;

    move-result-object v0

    iget-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask$2;->this$1:Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    iget v1, v1, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->item:I

    iget-object v2, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask$2;->this$1:Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    iget v2, v2, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->image:I

    iget-object v3, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask$2;->val$bmp:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2, v3}, Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V

    .line 324
    :cond_1
    return-void

    .line 319
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask$2;->this$1:Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;

    iget-object v1, v1, Lme/grishka/appkit/imageloader/ListImageLoader$RunnableTask;->this$0:Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-static {v1}, Lme/grishka/appkit/imageloader/ListImageLoader;->access$300(Lme/grishka/appkit/imageloader/ListImageLoader;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

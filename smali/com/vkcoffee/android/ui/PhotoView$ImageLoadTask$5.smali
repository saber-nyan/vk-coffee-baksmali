.class Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$5;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;

    .prologue
    .line 1658
    iput-object p1, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$5;->this$1:Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$5;->this$1:Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;

    iget v0, v0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->index:I

    iget-object v1, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$5;->this$1:Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;

    iget-object v1, v1, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/PhotoView;->access$3900(Lcom/vkcoffee/android/ui/PhotoView;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1673
    :cond_0
    :goto_0
    return-void

    .line 1663
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$5;->this$1:Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->canceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$5;->this$1:Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->loader:Lcom/vkcoffee/android/ui/PhotoView$RunnableFuture;

    invoke-interface {v0}, Lcom/vkcoffee/android/ui/PhotoView$RunnableFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1666
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$5;->this$1:Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/PhotoView;->access$4000(Lcom/vkcoffee/android/ui/PhotoView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1667
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$5;->this$1:Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$5;->this$1:Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;

    iget-object v1, v1, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/PhotoView;->access$4000(Lcom/vkcoffee/android/ui/PhotoView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/PhotoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1669
    :cond_2
    const-string/jumbo v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Showing error view for photo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$5;->this$1:Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;

    iget v2, v2, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", canceled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$5;->this$1:Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;

    iget-boolean v2, v2, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->canceled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", loader canceled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$5;->this$1:Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->loader:Lcom/vkcoffee/android/ui/PhotoView$RunnableFuture;

    invoke-interface {v2}, Lcom/vkcoffee/android/ui/PhotoView$RunnableFuture;->isCancelled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$5;->this$1:Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/PhotoView;->access$1500(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/CircularProgressBar;

    move-result-object v0

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->cancelVisibilityAnimation(Landroid/view/View;)V

    .line 1671
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$5;->this$1:Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/PhotoView;->access$1500(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/CircularProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/CircularProgressBar;->setVisibility(I)V

    .line 1672
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$5;->this$1:Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/PhotoView;->access$1600(Lcom/vkcoffee/android/ui/PhotoView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

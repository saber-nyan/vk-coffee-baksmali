.class Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$1;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->cancel()V
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
    .line 1521
    iput-object p1, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$1;->this$1:Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$1;->this$1:Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->loader:Lcom/vkcoffee/android/ui/PhotoView$RunnableFuture;

    if-eqz v0, :cond_0

    .line 1525
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$1;->this$1:Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->loader:Lcom/vkcoffee/android/ui/PhotoView$RunnableFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/ui/PhotoView$RunnableFuture;->cancel(Z)Z

    .line 1527
    :cond_0
    return-void
.end method

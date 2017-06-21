.class Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$3$1;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$3;->onProgressChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$3;

.field final synthetic val$progress:I

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$3;II)V
    .locals 0
    .param p1, "this$2"    # Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$3;

    .prologue
    .line 1611
    iput-object p1, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$3$1;->this$2:Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$3;

    iput p2, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$3$1;->val$progress:I

    iput p3, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$3$1;->val$total:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$3$1;->this$2:Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$3;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$3;->this$1:Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/PhotoView;->access$1500(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/CircularProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$3$1;->val$progress:I

    int-to-double v2, v1

    iget v1, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$3$1;->val$total:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/vkcoffee/android/ui/CircularProgressBar;->setProgress(D)V

    .line 1614
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$3$1;->this$2:Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$3;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$3;->this$1:Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/PhotoView;->access$1600(Lcom/vkcoffee/android/ui/PhotoView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1615
    return-void
.end method

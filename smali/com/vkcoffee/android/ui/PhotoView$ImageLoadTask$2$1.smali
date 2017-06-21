.class Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$2$1;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$2;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$2;

    .prologue
    .line 1578
    iput-object p1, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$2$1;->this$2:Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$2$1;->this$2:Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$2;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$2;->this$1:Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/PhotoView;->access$1500(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/CircularProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 1582
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$2$1;->this$2:Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$2;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask$2;->this$1:Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$ImageLoadTask;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/PhotoView;->access$4002(Lcom/vkcoffee/android/ui/PhotoView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1583
    return-void
.end method

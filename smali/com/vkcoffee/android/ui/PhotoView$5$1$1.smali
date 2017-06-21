.class Lcom/vkcoffee/android/ui/PhotoView$5$1$1;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/PhotoView$5$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkcoffee/android/ui/PhotoView$5$1;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/PhotoView$5$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/vkcoffee/android/ui/PhotoView$5$1;

    .prologue
    .line 864
    iput-object p1, p0, Lcom/vkcoffee/android/ui/PhotoView$5$1$1;->this$2:Lcom/vkcoffee/android/ui/PhotoView$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 866
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$5$1$1;->this$2:Lcom/vkcoffee/android/ui/PhotoView$5$1;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5$1;->this$1:Lcom/vkcoffee/android/ui/PhotoView$5;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/PhotoView;->access$2800(Lcom/vkcoffee/android/ui/PhotoView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 867
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$5$1$1;->this$2:Lcom/vkcoffee/android/ui/PhotoView$5$1;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5$1;->this$1:Lcom/vkcoffee/android/ui/PhotoView$5;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/PhotoView;->access$2600(Lcom/vkcoffee/android/ui/PhotoView;)Lcom/vkcoffee/android/ui/ClippingImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/ClippingImageView;->setVisibility(I)V

    .line 868
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$5$1$1;->this$2:Lcom/vkcoffee/android/ui/PhotoView$5$1;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5$1;->this$1:Lcom/vkcoffee/android/ui/PhotoView$5;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/PhotoView;->access$1702(Lcom/vkcoffee/android/ui/PhotoView;Z)Z

    .line 869
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$5$1$1;->this$2:Lcom/vkcoffee/android/ui/PhotoView$5$1;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5$1;->this$1:Lcom/vkcoffee/android/ui/PhotoView$5;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/PhotoView;->invalidate()V

    .line 870
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$5$1$1;->this$2:Lcom/vkcoffee/android/ui/PhotoView$5$1;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5$1;->this$1:Lcom/vkcoffee/android/ui/PhotoView$5;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->val$after:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$5$1$1;->this$2:Lcom/vkcoffee/android/ui/PhotoView$5$1;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5$1;->this$1:Lcom/vkcoffee/android/ui/PhotoView$5;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$5;->val$after:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 873
    :cond_0
    return-void
.end method

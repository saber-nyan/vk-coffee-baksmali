.class Lcom/vkcoffee/android/ui/PhotoView$4$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/PhotoView$4;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/ui/PhotoView$4;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/PhotoView$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/ui/PhotoView$4;

    .prologue
    .line 791
    iput-object p1, p0, Lcom/vkcoffee/android/ui/PhotoView$4$1;->this$1:Lcom/vkcoffee/android/ui/PhotoView$4;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 793
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$4$1;->this$1:Lcom/vkcoffee/android/ui/PhotoView$4;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$4;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/PhotoView;->access$2800(Lcom/vkcoffee/android/ui/PhotoView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 794
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$4$1;->this$1:Lcom/vkcoffee/android/ui/PhotoView$4;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$4;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/PhotoView;->access$1702(Lcom/vkcoffee/android/ui/PhotoView;Z)Z

    .line 795
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoView$4$1;->this$1:Lcom/vkcoffee/android/ui/PhotoView$4;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/PhotoView$4;->this$0:Lcom/vkcoffee/android/ui/PhotoView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/PhotoView;->invalidate()V

    .line 796
    return-void
.end method

.class Lcom/vkcoffee/android/fragments/PostViewFragment$17;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PostViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/PostViewFragment;->animateLikePhotos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$17;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    .line 1775
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$17;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$43(Lcom/vkcoffee/android/fragments/PostViewFragment;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1778
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$17;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$44(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/animation/ObjectAnimator;)V

    .line 1780
    :cond_0
    return-void
.end method

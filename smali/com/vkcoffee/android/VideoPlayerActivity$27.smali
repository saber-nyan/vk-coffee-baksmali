.class Lcom/vkcoffee/android/VideoPlayerActivity$27;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/VideoPlayerActivity;->setUIVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 890
    iput-object p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$27;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 893
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$27;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$3902(Lcom/vkcoffee/android/VideoPlayerActivity;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 894
    return-void
.end method

.class Lcom/vkcoffee/android/AudioPlayerActivity$21$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AudioPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity$21$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field canceled:Z

.field final synthetic this$2:Lcom/vkcoffee/android/AudioPlayerActivity$21$1;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity$21$1;)V
    .locals 1
    .param p1, "this$2"    # Lcom/vkcoffee/android/AudioPlayerActivity$21$1;

    .prologue
    .line 929
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$21$1$1;->this$2:Lcom/vkcoffee/android/AudioPlayerActivity$21$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 930
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$21$1$1;->canceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 933
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$21$1$1;->canceled:Z

    .line 934
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 937
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 938
    iget-boolean v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$21$1$1;->canceled:Z

    if-eqz v0, :cond_0

    .line 942
    :goto_0
    return-void

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$21$1$1;->this$2:Lcom/vkcoffee/android/AudioPlayerActivity$21$1;

    iget-object v0, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21$1;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$21;

    iget-object v0, v0, Lcom/vkcoffee/android/AudioPlayerActivity$21;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$1500(Lcom/vkcoffee/android/AudioPlayerActivity;)V

    goto :goto_0
.end method

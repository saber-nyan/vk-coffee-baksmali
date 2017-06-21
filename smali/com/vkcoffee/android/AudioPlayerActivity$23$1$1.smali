.class Lcom/vkcoffee/android/AudioPlayerActivity$23$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AudioPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity$23$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field canceled:Z

.field final synthetic this$2:Lcom/vkcoffee/android/AudioPlayerActivity$23$1;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity$23$1;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$23$1$1;->this$2:Lcom/vkcoffee/android/AudioPlayerActivity$23$1;

    .line 936
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 937
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$23$1$1;->canceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 940
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$23$1$1;->canceled:Z

    .line 941
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 944
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 945
    iget-boolean v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$23$1$1;->canceled:Z

    if-nez v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$23$1$1;->this$2:Lcom/vkcoffee/android/AudioPlayerActivity$23$1;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerActivity$23$1;->access$0(Lcom/vkcoffee/android/AudioPlayerActivity$23$1;)Lcom/vkcoffee/android/AudioPlayerActivity$23;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerActivity$23;->access$0(Lcom/vkcoffee/android/AudioPlayerActivity$23;)Lcom/vkcoffee/android/AudioPlayerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$22(Lcom/vkcoffee/android/AudioPlayerActivity;)V

    .line 948
    :cond_0
    return-void
.end method

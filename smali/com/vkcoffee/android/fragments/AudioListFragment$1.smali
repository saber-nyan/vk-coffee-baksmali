.class Lcom/vkcoffee/android/fragments/AudioListFragment$1;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferProgressChanged(III)V
    .locals 1
    .param p1, "oid"    # I
    .param p2, "aid"    # I
    .param p3, "buffered"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 114
    return-void
.end method

.method public onPlayProgressChanged(IIII)V
    .locals 1
    .param p1, "oid"    # I
    .param p2, "aid"    # I
    .param p3, "played"    # I
    .param p4, "pos"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 107
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$1(Lcom/vkcoffee/android/fragments/AudioListFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$1(Lcom/vkcoffee/android/fragments/AudioListFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 110
    :cond_0
    return-void
.end method

.class Lcom/vkcoffee/android/fragments/AudioListFragment$21$1;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment$21;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$21;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment$21;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$21$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$21;

    .line 1477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$21$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$21;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$21;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$21;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->updateList()V

    .line 1480
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$21$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$21;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$21;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$21;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$39(Lcom/vkcoffee/android/fragments/AudioListFragment;)V

    .line 1481
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$21$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$21;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$21;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$21;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$42(Lcom/vkcoffee/android/fragments/AudioListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$21$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$21;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$21;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$21;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->refreshDone()V

    .line 1484
    :cond_0
    return-void
.end method

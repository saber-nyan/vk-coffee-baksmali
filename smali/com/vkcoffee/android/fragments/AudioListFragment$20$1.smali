.class Lcom/vkcoffee/android/fragments/AudioListFragment$20$1;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$20;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment$20;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$20$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$20;

    .line 1421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$20$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$20;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$20;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$20;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->updateList()V

    .line 1424
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$20$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$20;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$20;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$20;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$38(Lcom/vkcoffee/android/fragments/AudioListFragment;)V

    .line 1425
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$20$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$20;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$20;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$20;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$36(Lcom/vkcoffee/android/fragments/AudioListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$20$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$20;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$20;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$20;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->refreshDone()V

    .line 1428
    :cond_0
    return-void
.end method

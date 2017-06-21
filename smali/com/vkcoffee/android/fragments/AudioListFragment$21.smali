.class Lcom/vkcoffee/android/fragments/AudioListFragment$21;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment;->loadSaved()V
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
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$21;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    .line 1470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$21;)Lcom/vkcoffee/android/fragments/AudioListFragment;
    .locals 1

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$21;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1472
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$21;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/cache/AudioCache;->refillIDs(Landroid/content/Context;)V

    .line 1473
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$21;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/cache/AudioCache;->getCachedList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1474
    .local v0, "cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$21;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$12(Lcom/vkcoffee/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1475
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$21;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$12(Lcom/vkcoffee/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1476
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$21;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1477
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$21;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/fragments/AudioListFragment$21$1;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/AudioListFragment$21$1;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment$21;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1487
    :cond_0
    return-void
.end method

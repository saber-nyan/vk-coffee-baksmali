.class public Lcom/vkcoffee/android/fragments/AudioListFragment$ShuffleAllAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "AudioListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ShuffleAllAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lcom/vkcoffee/android/fragments/AudioListFragment$ShuffleAllViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment;)V
    .locals 1

    .prologue
    .line 450
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$ShuffleAllAdapter;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 451
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$ShuffleAllAdapter;->setHasStableIds(Z)V

    .line 452
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$ShuffleAllAdapter;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$17(Lcom/vkcoffee/android/fragments/AudioListFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$ShuffleAllAdapter;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$12(Lcom/vkcoffee/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 470
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 466
    const/4 v0, 0x3

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/fragments/AudioListFragment$ShuffleAllViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/AudioListFragment$ShuffleAllAdapter;->onBindViewHolder(Lcom/vkcoffee/android/fragments/AudioListFragment$ShuffleAllViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/fragments/AudioListFragment$ShuffleAllViewHolder;I)V
    .locals 0
    .param p1, "holder"    # Lcom/vkcoffee/android/fragments/AudioListFragment$ShuffleAllViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 459
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/AudioListFragment$ShuffleAllAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/AudioListFragment$ShuffleAllViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/AudioListFragment$ShuffleAllViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 455
    new-instance v0, Lcom/vkcoffee/android/fragments/AudioListFragment$ShuffleAllViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$ShuffleAllAdapter;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/AudioListFragment$ShuffleAllViewHolder;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;)V

    return-object v0
.end method

.class Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "AudioListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabletPlaylistsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment;)V
    .locals 1

    .prologue
    .line 507
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsAdapter;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 508
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsAdapter;->setHasStableIds(Z)V

    .line 509
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsAdapter;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$24(Lcom/vkcoffee/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 524
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsAdapter;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$24(Lcom/vkcoffee/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/AudioPlaylist;

    iget v0, v0, Lcom/vkcoffee/android/AudioPlaylist;->id:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsAdapter;->onBindViewHolder(Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsItemViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsItemViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 516
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsAdapter;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$24(Lcom/vkcoffee/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/AudioPlaylist;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsItemViewHolder;->bind(Ljava/lang/Object;)V

    .line 517
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsItemViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsItemViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 512
    new-instance v0, Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsItemViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsAdapter;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsItemViewHolder;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;)V

    return-object v0
.end method

.class Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "AudioPlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)V
    .locals 1

    .prologue
    .line 350
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 351
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;->setHasStableIds(Z)V

    .line 352
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->access$600(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 376
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->access$600(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/AudioFile;

    .line 377
    .local v0, "af":Lcom/vkcoffee/android/AudioFile;
    iget v1, v0, Lcom/vkcoffee/android/AudioFile;->oid:I

    int-to-long v2, v1

    const/16 v1, 0x20

    shl-long/2addr v2, v1

    iget v1, v0, Lcom/vkcoffee/android/AudioFile;->aid:I

    int-to-long v4, v1

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 347
    check-cast p1, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;->onBindViewHolder(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 361
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->access$600(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;->bind(Ljava/lang/Object;)V

    .line 362
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 356
    new-instance v0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioListAdapter;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$AudioViewHolder;-><init>(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)V

    return-object v0
.end method

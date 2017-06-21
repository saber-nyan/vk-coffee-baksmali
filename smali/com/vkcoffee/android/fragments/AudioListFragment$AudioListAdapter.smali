.class Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "AudioListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private section:I

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment;I)V
    .locals 1
    .param p2, "section"    # I

    .prologue
    .line 245
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 246
    iput p2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListAdapter;->section:I

    .line 247
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListAdapter;->setHasStableIds(Z)V

    .line 248
    return-void
.end method

.method private getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/AudioFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$17(Lcom/vkcoffee/android/fragments/AudioListFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    iget v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListAdapter;->section:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$12(Lcom/vkcoffee/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    .line 261
    :goto_0
    return-object v0

    .line 256
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 258
    :cond_1
    iget v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListAdapter;->section:I

    if-nez v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$18(Lcom/vkcoffee/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$19(Lcom/vkcoffee/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListAdapter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/AudioFile;

    .line 279
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
    .line 274
    iget v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListAdapter;->section:I

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListAdapter;->onBindViewHolder(Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/AudioFile;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;->bind(Ljava/lang/Object;)V

    .line 267
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 251
    new-instance v0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListAdapter;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    iget v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioListAdapter;->section:I

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/AudioListFragment$AudioViewHolder;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment;I)V

    return-object v0
.end method

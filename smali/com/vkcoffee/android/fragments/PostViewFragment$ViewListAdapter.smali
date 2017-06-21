.class Lcom/vkcoffee/android/fragments/PostViewFragment$ViewListAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "PostViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/PostViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lcom/vkcoffee/android/fragments/PostViewFragment$DummyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private positionMap:Landroid/util/SparseIntArray;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;)V
    .locals 2

    .prologue
    .line 390
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$ViewListAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 391
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$ViewListAdapter;->positionMap:Landroid/util/SparseIntArray;

    .line 392
    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Lcom/vkcoffee/android/fragments/PostViewFragment$ViewListAdapter;)V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment$ViewListAdapter;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 411
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$ViewListAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$12(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 415
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$ViewListAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$12(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$ViewListAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$11(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 406
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$ViewListAdapter;->positionMap:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$ViewListAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$11(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 407
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$ViewListAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$11(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/fragments/PostViewFragment$DummyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/PostViewFragment$ViewListAdapter;->onBindViewHolder(Lcom/vkcoffee/android/fragments/PostViewFragment$DummyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/fragments/PostViewFragment$DummyViewHolder;I)V
    .locals 0
    .param p1, "holder"    # Lcom/vkcoffee/android/fragments/PostViewFragment$DummyViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 399
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/PostViewFragment$ViewListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/PostViewFragment$DummyViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/PostViewFragment$DummyViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 395
    new-instance v1, Lcom/vkcoffee/android/fragments/PostViewFragment$DummyViewHolder;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$ViewListAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$ViewListAdapter;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$11(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$ViewListAdapter;->positionMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {v1, v2, v0}, Lcom/vkcoffee/android/fragments/PostViewFragment$DummyViewHolder;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/view/View;)V

    return-object v1
.end method

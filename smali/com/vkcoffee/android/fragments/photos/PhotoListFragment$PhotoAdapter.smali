.class public Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "PhotoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PhotoAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private count:I

.field private offset:I

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;II)V
    .locals 0
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 189
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 190
    iput p2, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;->offset:I

    .line 191
    iput p3, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;->count:I

    .line 192
    return-void
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;)I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;->offset:I

    return v0
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 210
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 7
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    const/4 v4, 0x0

    .line 216
    iget v5, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;->offset:I

    add-int v1, v5, p1

    .line 217
    .local v1, "index":I
    if-ltz v1, :cond_0

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->access$0(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_3

    .line 218
    :cond_0
    const/4 v3, 0x0

    .line 222
    .local v3, "photo":Lcom/vkcoffee/android/Photo;
    :goto_0
    if-ltz v1, :cond_1

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    iget-object v5, v5, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->layout:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_4

    .line 223
    :cond_1
    const/4 v2, 0x0

    .line 227
    .local v2, "layoutInfo":Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;
    :goto_1
    if-eqz v3, :cond_2

    if-nez v2, :cond_5

    .line 231
    :cond_2
    :goto_2
    return-object v4

    .line 220
    .end local v2    # "layoutInfo":Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;
    .end local v3    # "photo":Lcom/vkcoffee/android/Photo;
    :cond_3
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->access$0(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/Photo;

    .restart local v3    # "photo":Lcom/vkcoffee/android/Photo;
    goto :goto_0

    .line 225
    :cond_4
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    iget-object v5, v5, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->layout:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;

    .restart local v2    # "layoutInfo":Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;
    goto :goto_1

    .line 230
    :cond_5
    const/16 v5, 0x140

    iget v6, v2, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;->height:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/vkcoffee/android/Photo;->getImageByHeight(I)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v0

    .line 231
    .local v0, "image1":Lcom/vkcoffee/android/Photo$Image;
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    goto :goto_2
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->access$0(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;->offset:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;->count:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 235
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;->onBindViewHolder(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->access$0(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;->offset:I

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/Photo;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoViewHolder;->bind(Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->layout:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->layout:Ljava/util/ArrayList;

    iget v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;->offset:I

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoViewHolder;->bindLayout(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;)V

    .line 203
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 195
    new-instance v0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoAdapter;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoViewHolder;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)V

    return-object v0
.end method

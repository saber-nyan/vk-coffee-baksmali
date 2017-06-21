.class Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "GraffitiFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/fragment/GraffitiFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GraffitiAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final TYPE_GRAFFITI:I

.field private final TYPE_HEADER:I

.field private final context:Landroid/content/Context;

.field private final graffities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/Document;",
            ">;"
        }
    .end annotation
.end field

.field private isEmpty:Z

.field final synthetic this$0:Lcom/vk/attachpicker/fragment/GraffitiFragment;


# direct methods
.method public constructor <init>(Lcom/vk/attachpicker/fragment/GraffitiFragment;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 163
    iput-object p1, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;->this$0:Lcom/vk/attachpicker/fragment/GraffitiFragment;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 156
    iput v1, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;->TYPE_HEADER:I

    .line 157
    iput v2, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;->TYPE_GRAFFITI:I

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;->graffities:Ljava/util/ArrayList;

    .line 161
    iput-boolean v1, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;->isEmpty:Z

    .line 164
    iput-object p2, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;->context:Landroid/content/Context;

    .line 165
    invoke-virtual {p0, v2}, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;->setHasStableIds(Z)V

    .line 166
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;->graffities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 203
    const-wide/16 v0, 0x0

    .line 205
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;->graffities:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/Document;

    iget v0, v0, Lcom/vkcoffee/android/api/Document;->did:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 193
    if-nez p1, :cond_0

    .line 194
    const/4 v0, 0x0

    .line 196
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method synthetic lambda$removeGraffiti$54()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;->graffities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;->isEmpty:Z

    .line 236
    invoke-virtual {p0}, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;->notifyDataSetChanged()V

    .line 237
    return-void

    .line 235
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 154
    check-cast p1, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;->onBindViewHolder(Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 179
    instance-of v0, p1, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder;

    if-eqz v0, :cond_1

    .line 180
    check-cast p1, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder;

    .end local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;->graffities:Ljava/util/ArrayList;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/Document;

    invoke-virtual {p1, v0}, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder;->bind(Lcom/vkcoffee/android/api/Document;)V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 181
    .restart local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    :cond_1
    instance-of v0, p1, Lcom/vk/attachpicker/fragment/GraffitiFragment$HeaderHolder;

    if-eqz v0, :cond_0

    .line 182
    check-cast p1, Lcom/vk/attachpicker/fragment/GraffitiFragment$HeaderHolder;

    .end local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    iget-boolean v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;->isEmpty:Z

    invoke-virtual {p1, v0}, Lcom/vk/attachpicker/fragment/GraffitiFragment$HeaderHolder;->setIsEmpty(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 170
    if-nez p2, :cond_0

    .line 171
    new-instance v0, Lcom/vk/attachpicker/fragment/GraffitiFragment$HeaderHolder;

    iget-object v1, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;->this$0:Lcom/vk/attachpicker/fragment/GraffitiFragment;

    invoke-direct {v0, v1}, Lcom/vk/attachpicker/fragment/GraffitiFragment$HeaderHolder;-><init>(Lcom/vk/attachpicker/fragment/GraffitiFragment;)V

    .line 173
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder;

    iget-object v1, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;->this$0:Lcom/vk/attachpicker/fragment/GraffitiFragment;

    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiHolder;-><init>(Lcom/vk/attachpicker/fragment/GraffitiFragment;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public removeGraffiti(Lcom/vkcoffee/android/api/Document;)V
    .locals 6
    .param p1, "document"    # Lcom/vkcoffee/android/api/Document;

    .prologue
    .line 220
    if-nez p1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget v0, p1, Lcom/vkcoffee/android/api/Document;->did:I

    .line 225
    .local v0, "did":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;->graffities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 226
    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;->graffities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/api/Document;

    iget v2, v2, Lcom/vkcoffee/android/api/Document;->did:I

    if-ne v2, v0, :cond_3

    .line 227
    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;->graffities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 228
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;->notifyItemRemoved(I)V

    .line 233
    :cond_2
    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;->graffities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 234
    invoke-static {p0}, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x12c

    invoke-static {v2, v4, v5}, Lcom/vk/attachpicker/Picker;->runDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 225
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/Document;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/Document;>;"
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;->graffities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 211
    if-eqz p1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;->graffities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;->notifyDataSetChanged()V

    .line 216
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;->graffities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$GraffitiAdapter;->isEmpty:Z

    .line 217
    return-void

    .line 216
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

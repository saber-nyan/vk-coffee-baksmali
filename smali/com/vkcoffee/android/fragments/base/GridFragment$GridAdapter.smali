.class public abstract Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "GridFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/base/GridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "GridAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder;",
        ">",
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<TVH;>;",
        "Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/base/GridFragment;


# direct methods
.method protected constructor <init>(Lcom/vkcoffee/android/fragments/base/GridFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/base/GridFragment;

    .prologue
    .line 127
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;, "Lcom/vkcoffee/android/fragments/base/GridFragment<TT;>.GridAdapter<TVH;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;->this$0:Lcom/vkcoffee/android/fragments/base/GridFragment;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlockType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 141
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;, "Lcom/vkcoffee/android/fragments/base/GridFragment<TT;>.GridAdapter<TVH;>;"
    const/4 v1, 0x0

    .line 142
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;->getItemCount()I

    move-result v0

    .line 143
    .local v0, "itemCount":I
    if-ne p1, v0, :cond_0

    move v2, v1

    .line 155
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 146
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    if-nez p1, :cond_1

    .line 147
    or-int/lit8 v1, v1, 0x2

    .line 149
    :cond_1
    add-int/lit8 v3, v0, -0x1

    if-ne p1, v3, :cond_2

    .line 150
    or-int/lit8 v1, v1, 0x4

    .line 152
    :cond_2
    if-nez v1, :cond_3

    .line 153
    or-int/lit8 v1, v1, 0x1

    :cond_3
    move v2, v1

    .line 155
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 136
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;, "Lcom/vkcoffee/android/fragments/base/GridFragment<TT;>.GridAdapter<TVH;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;->this$0:Lcom/vkcoffee/android/fragments/base/GridFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/base/GridFragment;->access$600(Lcom/vkcoffee/android/fragments/base/GridFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;->this$0:Lcom/vkcoffee/android/fragments/base/GridFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/base/GridFragment;->access$700(Lcom/vkcoffee/android/fragments/base/GridFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 127
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;, "Lcom/vkcoffee/android/fragments/base/GridFragment<TT;>.GridAdapter<TVH;>;"
    check-cast p1, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;->onBindViewHolder(Lcom/vkcoffee/android/ui/holder/RecyclerHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/ui/holder/RecyclerHolder;I)V
    .locals 1
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;, "Lcom/vkcoffee/android/fragments/base/GridFragment<TT;>.GridAdapter<TVH;>;"
    .local p1, "holder":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "TVH;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;->this$0:Lcom/vkcoffee/android/fragments/base/GridFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/base/GridFragment;->access$500(Lcom/vkcoffee/android/fragments/base/GridFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;->bind(Ljava/lang/Object;)V

    .line 132
    return-void
.end method

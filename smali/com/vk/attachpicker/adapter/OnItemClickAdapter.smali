.class public abstract Lcom/vk/attachpicker/adapter/OnItemClickAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "OnItemClickAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<TVH;>;"
    }
.end annotation


# instance fields
.field private itemClickListener:Lcom/vk/attachpicker/widget/OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/vk/attachpicker/adapter/OnItemClickAdapter;, "Lcom/vk/attachpicker/adapter/OnItemClickAdapter<TVH;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$wrapHolder$2(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/View;)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 14
    .local p0, "this":Lcom/vk/attachpicker/adapter/OnItemClickAdapter;, "Lcom/vk/attachpicker/adapter/OnItemClickAdapter<TVH;>;"
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/OnItemClickAdapter;->itemClickListener:Lcom/vk/attachpicker/widget/OnItemClickListener;

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/vk/attachpicker/adapter/OnItemClickAdapter;->itemClickListener:Lcom/vk/attachpicker/widget/OnItemClickListener;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/vk/attachpicker/widget/OnItemClickListener;->onItemClickListener(I)V

    .line 17
    :cond_0
    return-void
.end method

.method public setItemClickListener(Lcom/vk/attachpicker/widget/OnItemClickListener;)V
    .locals 0
    .param p1, "itemClickListener"    # Lcom/vk/attachpicker/widget/OnItemClickListener;

    .prologue
    .line 23
    .local p0, "this":Lcom/vk/attachpicker/adapter/OnItemClickAdapter;, "Lcom/vk/attachpicker/adapter/OnItemClickAdapter<TVH;>;"
    iput-object p1, p0, Lcom/vk/attachpicker/adapter/OnItemClickAdapter;->itemClickListener:Lcom/vk/attachpicker/widget/OnItemClickListener;

    .line 24
    return-void
.end method

.method wrapHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)TVH;"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Lcom/vk/attachpicker/adapter/OnItemClickAdapter;, "Lcom/vk/attachpicker/adapter/OnItemClickAdapter<TVH;>;"
    .local p1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/vk/attachpicker/adapter/OnItemClickAdapter$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/adapter/OnItemClickAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    return-object p1
.end method

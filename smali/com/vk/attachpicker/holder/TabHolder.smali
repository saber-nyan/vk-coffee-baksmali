.class public Lcom/vk/attachpicker/holder/TabHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TabHolder.java"


# instance fields
.field private currentSelectionProvider:Lcom/vk/attachpicker/adapter/TabsAdapter$CurrentSelectionProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vk/attachpicker/adapter/TabsAdapter$CurrentSelectionProvider;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentSelectionProvider"    # Lcom/vk/attachpicker/adapter/TabsAdapter$CurrentSelectionProvider;

    .prologue
    .line 13
    new-instance v0, Lcom/vk/attachpicker/widget/TabView;

    invoke-direct {v0, p1}, Lcom/vk/attachpicker/widget/TabView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 14
    iput-object p2, p0, Lcom/vk/attachpicker/holder/TabHolder;->currentSelectionProvider:Lcom/vk/attachpicker/adapter/TabsAdapter$CurrentSelectionProvider;

    .line 15
    return-void
.end method


# virtual methods
.method public update(Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;)V
    .locals 4
    .param p1, "tabInfo"    # Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vk/attachpicker/holder/TabHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/vk/attachpicker/widget/TabView;

    invoke-virtual {p0}, Lcom/vk/attachpicker/holder/TabHolder;->getAdapterPosition()I

    move-result v1

    iget-object v2, p0, Lcom/vk/attachpicker/holder/TabHolder;->currentSelectionProvider:Lcom/vk/attachpicker/adapter/TabsAdapter$CurrentSelectionProvider;

    invoke-interface {v2}, Lcom/vk/attachpicker/adapter/TabsAdapter$CurrentSelectionProvider;->position()I

    move-result v2

    iget-object v3, p0, Lcom/vk/attachpicker/holder/TabHolder;->currentSelectionProvider:Lcom/vk/attachpicker/adapter/TabsAdapter$CurrentSelectionProvider;

    invoke-interface {v3}, Lcom/vk/attachpicker/adapter/TabsAdapter$CurrentSelectionProvider;->positionOffset()F

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/vk/attachpicker/widget/TabView;->update(Lcom/vk/attachpicker/adapter/TabsAdapter$TabInfo;IIF)V

    .line 19
    return-void
.end method

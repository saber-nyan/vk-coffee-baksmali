.class Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;
.super Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
.source "StickerManagerFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/base/GridFragment",
        "<",
        "Lcom/vkcoffee/android/data/orm/StickerStockItem;",
        ">.GridAdapter<",
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder;",
        ">;",
        "Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration$Provider;"
    }
.end annotation


# static fields
.field static final TYPE_HEADER:I = 0x0

.field static final TYPE_ITEM:I = 0x1

.field static final TYPE_SETTING:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    .line 60
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;-><init>(Lcom/vkcoffee/android/fragments/base/GridFragment;)V

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;)V

    return-void
.end method

.method private get(I)Lcom/vkcoffee/android/data/orm/StickerStockItem;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->listActivePositionToCollectionIndex(I)I

    move-result p1

    .line 65
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mActive:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mActive:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .line 68
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mInactive:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mActive:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    goto :goto_0
.end method


# virtual methods
.method public drawAfter(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBlockType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 133
    const/4 v1, 0x0

    .line 134
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;->getItemCount()I

    move-result v0

    .line 135
    .local v0, "itemCount":I
    if-ne p1, v0, :cond_0

    .line 136
    const/4 v2, 0x0

    .line 153
    :goto_0
    return v2

    .line 138
    :cond_0
    if-nez p1, :cond_1

    .line 139
    const/4 v1, 0x6

    .line 141
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 142
    or-int/lit8 v1, v1, 0x2

    .line 144
    :cond_2
    add-int/lit8 v2, v0, -0x1

    if-ne p1, v2, :cond_4

    .line 145
    if-nez v1, :cond_3

    .line 146
    or-int/lit8 v1, v1, 0x1

    :cond_3
    move v2, v1

    .line 148
    goto :goto_0

    .line 150
    :cond_4
    if-nez v1, :cond_5

    .line 151
    or-int/lit8 v1, v1, 0x1

    :cond_5
    move v2, v1

    .line 153
    goto :goto_0
.end method

.method public getImageCountForItem(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 94
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;->getItemViewType(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;->get(I)Lcom/vkcoffee/android/data/orm/StickerStockItem;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    iget v1, v1, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mPhotoSize:I

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getPhoto(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 5

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "i":I
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mInactive:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mInactive:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    iget-object v4, v4, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mActive:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    add-int v1, v2, v3

    .line 74
    .local v1, "size":I
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mActive:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    const/4 v0, 0x1

    .line 77
    :cond_0
    add-int v2, v1, v0

    return v2

    .line 73
    .end local v1    # "size":I
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 81
    if-nez p1, :cond_1

    .line 82
    const/4 v0, 0x2

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    if-ne p1, v1, :cond_2

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mActive:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    invoke-virtual {v2, p1}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->listActivePositionToCollectionIndex(I)I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mActive:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mInactive:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 88
    goto :goto_0
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/ui/holder/RecyclerHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
    .param p2, "position"    # I

    .prologue
    .line 115
    invoke-virtual {p0, p2}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;->getItemViewType(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 128
    .end local p1    # "holder":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
    :goto_0
    return-void

    .restart local p1    # "holder":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
    :pswitch_0
    move-object v0, p1

    .line 117
    check-cast v0, Lcom/vkcoffee/android/fragments/friends/HeaderHolder;

    .line 118
    .local v0, "headerHolder":Lcom/vkcoffee/android/fragments/friends/HeaderHolder;
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->mActive:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const v1, 0x7f080519

    .line 119
    .local v1, "i":I
    :goto_1
    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/fragments/friends/HeaderHolder;->bind(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 118
    .end local v1    # "i":I
    :cond_1
    const v1, 0x7f080516

    goto :goto_1

    .line 122
    .end local v0    # "headerHolder":Lcom/vkcoffee/android/fragments/friends/HeaderHolder;
    :pswitch_1
    check-cast p1, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;

    .end local p1    # "holder":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;->get(I)Lcom/vkcoffee/android/data/orm/StickerStockItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;->bind(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V

    goto :goto_0

    .line 125
    .restart local p1    # "holder":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
    :pswitch_2
    check-cast p1, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$SettingHolder;

    .end local p1    # "holder":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/stickers/Stickers;->get(Landroid/content/Context;)Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/stickers/Stickers;->isSuggestsEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$SettingHolder;->bind(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 102
    packed-switch p2, :pswitch_data_0

    .line 110
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 104
    :pswitch_0
    new-instance v0, Lcom/vkcoffee/android/fragments/friends/HeaderHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/fragments/friends/HeaderHolder;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 106
    :pswitch_1
    new-instance v0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    invoke-direct {v0, v1, p1}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;-><init>(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 108
    :pswitch_2
    new-instance v0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$SettingHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    invoke-direct {v0, v1, p1}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$SettingHolder;-><init>(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.class final Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$Adapter;
.super Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
.source "GiftSendFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/base/GridFragment",
        "<",
        "Ljava/lang/Object;",
        ">.GridAdapter<",
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<*>;>;",
        "Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration$Provider;"
    }
.end annotation


# static fields
.field static final TYPE_ADD:I = 0x3

.field static final TYPE_GIFT:I = 0x0

.field static final TYPE_HEADER:I = 0x1

.field static final TYPE_MESSAGE:I = 0x4

.field static final TYPE_PRIVACY:I = 0x5

.field static final TYPE_SEND:I = 0x6

.field static final TYPE_USER:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    .line 109
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;-><init>(Lcom/vkcoffee/android/fragments/base/GridFragment;)V

    .line 110
    return-void
.end method


# virtual methods
.method public drawAfter(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$Adapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

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
    .line 219
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$Adapter;->getItemViewType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 230
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 222
    :pswitch_0
    const/16 v1, 0x1a

    goto :goto_0

    .line 224
    :pswitch_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    iget-boolean v1, v1, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mAddVisibility:Z

    if-nez v1, :cond_0

    add-int/lit8 v1, p1, -0x2

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mRecipients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 225
    .local v0, "i":I
    :goto_1
    or-int/lit8 v1, v0, 0x18

    goto :goto_0

    .line 224
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    .line 228
    :pswitch_2
    const/16 v1, 0x1c

    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getImageCountForItem(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$Adapter;->getItemViewType(I)I

    move-result v0

    .line 215
    .local v0, "viewType":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$Adapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 241
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 237
    :pswitch_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mGift:Lcom/vkcoffee/android/api/models/CatalogedGift;

    iget-object v0, v0, Lcom/vkcoffee/android/api/models/CatalogedGift;->gift:Lcom/vkcoffee/android/api/models/Gift;

    iget-object v0, v0, Lcom/vkcoffee/android/api/models/Gift;->thumb_256:Ljava/lang/String;

    goto :goto_0

    .line 239
    :pswitch_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mRecipients:Ljava/util/List;

    add-int/lit8 v1, p1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 162
    const/4 v0, 0x5

    .line 163
    .local v0, "i":I
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mRecipients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    const/4 v1, 0x5

    .line 169
    :goto_0
    return v1

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    iget-boolean v1, v1, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mAddVisibility:Z

    if-eqz v1, :cond_1

    .line 167
    const/4 v0, 0x6

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mRecipients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x0

    const/4 v4, 0x2

    .line 173
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    iget-object v5, v5, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mRecipients:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 174
    packed-switch p1, :pswitch_data_0

    move v0, v4

    .line 208
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 178
    goto :goto_0

    :pswitch_2
    move v0, v2

    .line 180
    goto :goto_0

    :pswitch_3
    move v0, v3

    .line 182
    goto :goto_0

    .line 184
    :pswitch_4
    const/4 v0, 0x6

    goto :goto_0

    .line 189
    :cond_0
    packed-switch p1, :pswitch_data_1

    .line 195
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$Adapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, p1

    packed-switch v0, :pswitch_data_2

    move v0, v4

    .line 208
    goto :goto_0

    .line 193
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_0

    .line 197
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_7
    move v0, v3

    .line 199
    goto :goto_0

    :pswitch_8
    move v0, v2

    .line 201
    goto :goto_0

    .line 203
    :pswitch_9
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    iget-boolean v0, v0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mAddVisibility:Z

    if-eqz v0, :cond_1

    move v0, v1

    .line 204
    goto :goto_0

    :cond_1
    move v0, v4

    .line 206
    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 189
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 195
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/ui/holder/RecyclerHolder;I)V
    .locals 2
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .local p1, "holder":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<*>;"
    const/4 v1, 0x0

    .line 134
    invoke-virtual {p0, p2}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$Adapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 157
    .end local p1    # "holder":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<*>;"
    :goto_0
    return-void

    .line 136
    .restart local p1    # "holder":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<*>;"
    :pswitch_0
    check-cast p1, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$GiftHolder;

    .end local p1    # "holder":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<*>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mGift:Lcom/vkcoffee/android/api/models/CatalogedGift;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$GiftHolder;->bind(Lcom/vkcoffee/android/api/models/CatalogedGift;)V

    goto :goto_0

    .line 139
    .restart local p1    # "holder":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<*>;"
    :pswitch_1
    check-cast p1, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$HeaderHolder;

    .end local p1    # "holder":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<*>;"
    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$HeaderHolder;->bind(Ljava/lang/Void;)V

    goto :goto_0

    .line 142
    .restart local p1    # "holder":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<*>;"
    :pswitch_2
    check-cast p1, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$UserHolder;

    .end local p1    # "holder":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<*>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mRecipients:Ljava/util/List;

    add-int/lit8 v1, p2, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$UserHolder;->bind(Lcom/vkcoffee/android/UserProfile;)V

    goto :goto_0

    .line 145
    .restart local p1    # "holder":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<*>;"
    :pswitch_3
    check-cast p1, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$AddHolder;

    .end local p1    # "holder":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<*>;"
    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$AddHolder;->bind(Ljava/lang/Void;)V

    goto :goto_0

    .line 148
    .restart local p1    # "holder":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<*>;"
    :pswitch_4
    check-cast p1, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$MessageHolder;

    .end local p1    # "holder":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<*>;"
    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$MessageHolder;->bind(Ljava/lang/Void;)V

    goto :goto_0

    .line 151
    .restart local p1    # "holder":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<*>;"
    :pswitch_5
    check-cast p1, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$PrivacyHolder;

    .end local p1    # "holder":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<*>;"
    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$PrivacyHolder;->bind(Ljava/lang/Void;)V

    goto :goto_0

    .line 154
    .restart local p1    # "holder":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<*>;"
    :pswitch_6
    check-cast p1, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$SendHolder;

    .end local p1    # "holder":Lcom/vkcoffee/android/ui/holder/RecyclerHolder;, "Lcom/vkcoffee/android/ui/holder/RecyclerHolder<*>;"
    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$SendHolder;->bind(Ljava/lang/Void;)V

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 113
    packed-switch p2, :pswitch_data_0

    .line 129
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 115
    :pswitch_0
    new-instance v0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$GiftHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    invoke-direct {v0, v1, p1}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$GiftHolder;-><init>(Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 117
    :pswitch_1
    new-instance v0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$HeaderHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    invoke-direct {v0, v1, p1}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$HeaderHolder;-><init>(Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 119
    :pswitch_2
    new-instance v0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$UserHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    invoke-direct {v0, v1, p1}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$UserHolder;-><init>(Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 121
    :pswitch_3
    new-instance v0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$AddHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    invoke-direct {v0, v1, p1}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$AddHolder;-><init>(Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 123
    :pswitch_4
    new-instance v0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$MessageHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    invoke-direct {v0, v1, p1}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$MessageHolder;-><init>(Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 125
    :pswitch_5
    new-instance v0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$PrivacyHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    invoke-direct {v0, v1, p1}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$PrivacyHolder;-><init>(Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 127
    :pswitch_6
    new-instance v0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$SendHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    invoke-direct {v0, v1, p1}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$SendHolder;-><init>(Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

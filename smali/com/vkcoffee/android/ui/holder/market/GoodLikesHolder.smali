.class public Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "GoodLikesHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/data/Good;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field lastGood:Lcom/vkcoffee/android/data/Good;

.field final likes:Landroid/widget/TextView;

.field final photoStripView:Lcom/vkcoffee/android/ui/PhotoStripView;

.field final repost:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 37
    const v0, 0x7f030138

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 38
    const v0, 0x7f100365

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->likes:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const v0, 0x7f100366

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/PhotoStripView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->photoStripView:Lcom/vkcoffee/android/ui/PhotoStripView;

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/ui/PhotoStripView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const v0, 0x7f100367

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->repost:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/data/Good;)V
    .locals 5
    .param p1, "item"    # Lcom/vkcoffee/android/data/Good;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 45
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->lastGood:Lcom/vkcoffee/android/data/Good;

    .line 46
    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->likes:Landroid/widget/TextView;

    iget v1, p1, Lcom/vkcoffee/android/data/Good;->likes_count:I

    if-lez v1, :cond_0

    iget v1, p1, Lcom/vkcoffee/android/data/Good;->likes_count:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->likes:Landroid/widget/TextView;

    iget v1, p1, Lcom/vkcoffee/android/data/Good;->user_likes:I

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 48
    iget-object v1, p1, Lcom/vkcoffee/android/data/Good;->likesPhoto:[Ljava/lang/String;

    if-nez v1, :cond_2

    move v0, v3

    .line 49
    .local v0, "likeCount":I
    :goto_2
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->photoStripView:Lcom/vkcoffee/android/ui/PhotoStripView;

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/ui/PhotoStripView;->setCount(I)V

    .line 50
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->photoStripView:Lcom/vkcoffee/android/ui/PhotoStripView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/PhotoStripView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v4, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder$1;

    invoke-direct {v4, p0, v0}, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder$1;-><init>(Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;I)V

    invoke-virtual {v1, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 59
    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->likes:Landroid/widget/TextView;

    iget v1, p1, Lcom/vkcoffee/android/data/Good;->availability:I

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    invoke-static {v4, v1}, Lcom/vkcoffee/android/ViewUtils;->setEnabled(Landroid/view/View;Z)V

    .line 60
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->repost:Landroid/widget/TextView;

    iget v4, p1, Lcom/vkcoffee/android/data/Good;->availability:I

    if-nez v4, :cond_4

    :goto_4
    invoke-static {v1, v2}, Lcom/vkcoffee/android/ViewUtils;->setEnabled(Landroid/view/View;Z)V

    .line 61
    return-void

    .line 46
    .end local v0    # "likeCount":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, v3

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    iget-object v1, p1, Lcom/vkcoffee/android/data/Good;->likesPhoto:[Ljava/lang/String;

    array-length v0, v1

    goto :goto_2

    .restart local v0    # "likeCount":I
    :cond_3
    move v1, v3

    .line 59
    goto :goto_3

    :cond_4
    move v2, v3

    .line 60
    goto :goto_4
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lcom/vkcoffee/android/data/Good;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->bind(Lcom/vkcoffee/android/data/Good;)V

    return-void
.end method

.method public clearImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->photoStripView:Lcom/vkcoffee/android/ui/PhotoStripView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/vkcoffee/android/ui/PhotoStripView;->setBitmap(ILandroid/graphics/Bitmap;)V

    .line 71
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 79
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-static {v4}, Lcom/vkcoffee/android/Auth;->ensureLoggedIn(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v6, Lcom/vkcoffee/android/RepostActivity;

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Lcom/vkcoffee/android/NewsEntry;

    invoke-direct {v1}, Lcom/vkcoffee/android/NewsEntry;-><init>()V

    .line 84
    .local v1, "e":Lcom/vkcoffee/android/NewsEntry;
    iget-object v4, v1, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v6, Lcom/vkcoffee/android/attachments/MarketAttachment;

    iget-object v7, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->lastGood:Lcom/vkcoffee/android/data/Good;

    invoke-direct {v6, v7}, Lcom/vkcoffee/android/attachments/MarketAttachment;-><init>(Lcom/vkcoffee/android/data/Good;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    const/16 v4, 0x12

    iput v4, v1, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 86
    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->lastGood:Lcom/vkcoffee/android/data/Good;

    iget-boolean v4, v4, Lcom/vkcoffee/android/data/Good;->can_repost:Z

    invoke-virtual {v1, v5, v4}, Lcom/vkcoffee/android/NewsEntry;->flag(IZ)V

    .line 87
    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->lastGood:Lcom/vkcoffee/android/data/Good;

    iget v4, v4, Lcom/vkcoffee/android/data/Good;->owner_id:I

    iput v4, v1, Lcom/vkcoffee/android/NewsEntry;->userID:I

    iput v4, v1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    .line 88
    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->lastGood:Lcom/vkcoffee/android/data/Good;

    iget v4, v4, Lcom/vkcoffee/android/data/Good;->id:I

    iput v4, v1, Lcom/vkcoffee/android/NewsEntry;->postID:I

    .line 89
    const-string/jumbo v4, "post"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 93
    .end local v1    # "e":Lcom/vkcoffee/android/NewsEntry;
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 94
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "title"

    const v5, 0x7f08028e

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 95
    const-string/jumbo v4, "ltype"

    const/4 v5, 0x6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    const-string/jumbo v4, "oid"

    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->lastGood:Lcom/vkcoffee/android/data/Good;

    iget v5, v5, Lcom/vkcoffee/android/data/Good;->owner_id:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    const-string/jumbo v4, "item_id"

    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->lastGood:Lcom/vkcoffee/android/data/Good;

    iget v5, v5, Lcom/vkcoffee/android/data/Good;->id:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    const-class v4, Lcom/vkcoffee/android/fragments/LikesListFragment;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 101
    .end local v0    # "args":Landroid/os/Bundle;
    :pswitch_2
    iget-object v6, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->lastGood:Lcom/vkcoffee/android/data/Good;

    iget v6, v6, Lcom/vkcoffee/android/data/Good;->user_likes:I

    if-nez v6, :cond_1

    move v3, v5

    .line 102
    .local v3, "isAdd":Z
    :goto_1
    if-nez v3, :cond_2

    .line 103
    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->lastGood:Lcom/vkcoffee/android/data/Good;

    iput v4, v5, Lcom/vkcoffee/android/data/Good;->user_likes:I

    .line 104
    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->lastGood:Lcom/vkcoffee/android/data/Good;

    iget v5, v4, Lcom/vkcoffee/android/data/Good;->likes_count:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/vkcoffee/android/data/Good;->likes_count:I

    .line 109
    :goto_2
    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->lastGood:Lcom/vkcoffee/android/data/Good;

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->bind(Lcom/vkcoffee/android/data/Good;)V

    .line 110
    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->lastGood:Lcom/vkcoffee/android/data/Good;

    invoke-static {v4}, Lcom/vkcoffee/android/api/wall/WallLike;->market(Lcom/vkcoffee/android/data/Good;)Lcom/vkcoffee/android/api/wall/WallLike;

    move-result-object v4

    new-instance v5, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder$2;

    invoke-direct {v5, p0, v3}, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder$2;-><init>(Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;Z)V

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/api/wall/WallLike;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->itemView:Landroid/view/View;

    .line 123
    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/view/View;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_0

    .end local v3    # "isAdd":Z
    :cond_1
    move v3, v4

    .line 101
    goto :goto_1

    .line 106
    .restart local v3    # "isAdd":Z
    :cond_2
    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->lastGood:Lcom/vkcoffee/android/data/Good;

    iput v5, v4, Lcom/vkcoffee/android/data/Good;->user_likes:I

    .line 107
    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->lastGood:Lcom/vkcoffee/android/data/Good;

    iget v5, v4, Lcom/vkcoffee/android/data/Good;->likes_count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/vkcoffee/android/data/Good;->likes_count:I

    goto :goto_2

    .line 77
    :pswitch_data_0
    .packed-switch 0x7f100365
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;->photoStripView:Lcom/vkcoffee/android/ui/PhotoStripView;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/ui/PhotoStripView;->setBitmap(ILandroid/graphics/Bitmap;)V

    .line 66
    return-void
.end method

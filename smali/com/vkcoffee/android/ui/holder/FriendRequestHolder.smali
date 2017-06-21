.class public Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "FriendRequestHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/api/FriendRequest;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mAcceptListener:Lcom/vkcoffee/android/functions/VoidF2Int;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF2Int",
            "<",
            "Lcom/vkcoffee/android/api/FriendRequest;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Lcom/vkcoffee/android/api/FriendRequest;

.field private final mInfo:Landroid/widget/TextView;

.field private final mMessage:Landroid/widget/TextView;

.field private final mNegativeButton:Landroid/widget/TextView;

.field private final mPhoto:Landroid/widget/ImageView;

.field private final mPositiveButton:Landroid/widget/TextView;

.field private final mSubtitle:Landroid/widget/TextView;

.field private final mTitle:Landroid/widget/TextView;

.field private mUserListener:Lcom/vkcoffee/android/functions/VoidF1;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsers:Lcom/vkcoffee/android/ui/PhotoStripView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    const v0, 0x7f03008f

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 44
    const v0, 0x7f1000dd

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mTitle:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f100169

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mSubtitle:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f100202

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mInfo:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f100146

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mPhoto:Landroid/widget/ImageView;

    .line 48
    const v0, 0x7f100203

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/PhotoStripView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mUsers:Lcom/vkcoffee/android/ui/PhotoStripView;

    .line 49
    const v0, 0x7f100204

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mPositiveButton:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f100205

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mNegativeButton:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f100206

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mMessage:Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mPositiveButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mNegativeButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method


# virtual methods
.method public attach(Lcom/vkcoffee/android/functions/VoidF1;Lcom/vkcoffee/android/functions/VoidF2Int;)Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;
    .locals 0
    .param p1    # Lcom/vkcoffee/android/functions/VoidF1;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/vkcoffee/android/functions/VoidF2Int;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;",
            "Lcom/vkcoffee/android/functions/VoidF2Int",
            "<",
            "Lcom/vkcoffee/android/api/FriendRequest;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "usersListener":Lcom/vkcoffee/android/functions/VoidF1;, "Lcom/vkcoffee/android/functions/VoidF1<Lcom/vkcoffee/android/UserProfile;>;"
    .local p2, "acceptListener":Lcom/vkcoffee/android/functions/VoidF2Int;, "Lcom/vkcoffee/android/functions/VoidF2Int<Lcom/vkcoffee/android/api/FriendRequest;Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mUserListener:Lcom/vkcoffee/android/functions/VoidF1;

    .line 60
    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mAcceptListener:Lcom/vkcoffee/android/functions/VoidF2Int;

    .line 61
    return-object p0
.end method

.method public bind(Lcom/vkcoffee/android/api/FriendRequest;)V
    .locals 8
    .param p1, "item"    # Lcom/vkcoffee/android/api/FriendRequest;

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 66
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mData:Lcom/vkcoffee/android/api/FriendRequest;

    .line 67
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mTitle:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/vkcoffee/android/api/FriendRequest;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v4, v4, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mSubtitle:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/vkcoffee/android/api/FriendRequest;->info:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mSubtitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/api/FriendRequest;->info:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget v1, p1, Lcom/vkcoffee/android/api/FriendRequest;->numMutualFriends:I

    if-lez v1, :cond_2

    .line 72
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mUsers:Lcom/vkcoffee/android/ui/PhotoStripView;

    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/ui/PhotoStripView;->setVisibility(I)V

    .line 74
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/FriendRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    .local v0, "info":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0e002e

    iget v5, p1, Lcom/vkcoffee/android/api/FriendRequest;->numMutualFriends:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p1, Lcom/vkcoffee/android/api/FriendRequest;->numMutualFriends:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/api/FriendRequest;->setTag(Ljava/lang/Object;)V

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mUsers:Lcom/vkcoffee/android/ui/PhotoStripView;

    iget-object v4, p1, Lcom/vkcoffee/android/api/FriendRequest;->mutualFriends:[Lcom/vkcoffee/android/UserProfile;

    array-length v4, v4

    invoke-virtual {v1, v4}, Lcom/vkcoffee/android/ui/PhotoStripView;->setCount(I)V

    .line 86
    .end local v0    # "info":Ljava/lang/String;
    :goto_1
    iget-object v1, p1, Lcom/vkcoffee/android/api/FriendRequest;->sent:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 87
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mPositiveButton:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mNegativeButton:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mMessage:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/api/FriendRequest;->sent:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f080191

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 96
    :goto_3
    return-void

    :cond_1
    move v1, v3

    .line 69
    goto :goto_0

    .line 82
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mUsers:Lcom/vkcoffee/android/ui/PhotoStripView;

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/PhotoStripView;->setVisibility(I)V

    goto :goto_1

    .line 90
    :cond_3
    const v1, 0x7f080192

    goto :goto_2

    .line 92
    :cond_4
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mPositiveButton:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mNegativeButton:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lcom/vkcoffee/android/api/FriendRequest;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->bind(Lcom/vkcoffee/android/api/FriendRequest;)V

    return-void
.end method

.method public clearImage(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const v2, 0x7f0202f2

    .line 109
    if-nez p1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mUsers:Lcom/vkcoffee/android/ui/PhotoStripView;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/vkcoffee/android/ui/PhotoStripView;->setBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->itemView:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mUserListener:Lcom/vkcoffee/android/functions/VoidF1;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mUserListener:Lcom/vkcoffee/android/functions/VoidF1;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mData:Lcom/vkcoffee/android/api/FriendRequest;

    iget-object v1, v1, Lcom/vkcoffee/android/api/FriendRequest;->profile:Lcom/vkcoffee/android/UserProfile;

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/functions/VoidF1;->f(Ljava/lang/Object;)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mPositiveButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mAcceptListener:Lcom/vkcoffee/android/functions/VoidF2Int;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mAcceptListener:Lcom/vkcoffee/android/functions/VoidF2Int;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mData:Lcom/vkcoffee/android/api/FriendRequest;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->getAdapterPosition()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/vkcoffee/android/functions/VoidF2Int;->f(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_0

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mNegativeButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mAcceptListener:Lcom/vkcoffee/android/functions/VoidF2Int;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mAcceptListener:Lcom/vkcoffee/android/functions/VoidF2Int;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mData:Lcom/vkcoffee/android/api/FriendRequest;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->getAdapterPosition()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/vkcoffee/android/functions/VoidF2Int;->f(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/FriendRequestHolder;->mUsers:Lcom/vkcoffee/android/ui/PhotoStripView;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/ui/PhotoStripView;->setBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0
.end method

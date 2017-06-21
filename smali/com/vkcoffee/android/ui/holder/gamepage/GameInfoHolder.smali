.class public Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "GameInfoHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter;,
        Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$SpacesItemDecoration;,
        Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final IMAGE_IDS:[I


# instance fields
.field private final adapter:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

.field private appAdapter:Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter;

.field private friendsBlock:Landroid/view/View;

.field private imageViews:[Landroid/widget/ImageView;

.field private lastData:Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;

.field private textDescription:Landroid/widget/TextView;

.field private textViewPlayingFriends:Landroid/widget/TextView;

.field private viewDivider:Landroid/view/View;

.field private viewExpandText:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->IMAGE_IDS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f10012c
        0x7f10012b
        0x7f10012a
        0x7f100129
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "adapter"    # Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    .prologue
    const v6, 0x7f100127

    const/4 v5, 0x0

    .line 69
    const v3, 0x7f03002c

    invoke-direct {p0, v3, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/content/Context;)V

    .line 58
    new-instance v3, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter;-><init>(Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;)V

    iput-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->appAdapter:Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter;

    .line 61
    sget-object v3, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->IMAGE_IDS:[I

    array-length v3, v3

    new-array v3, v3, [Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->imageViews:[Landroid/widget/ImageView;

    .line 70
    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->adapter:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    .line 72
    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->$(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v3, 0x7f100128

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->$(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->textViewPlayingFriends:Landroid/widget/TextView;

    .line 74
    const v3, 0x7f10012d

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->$(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->viewDivider:Landroid/view/View;

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->IMAGE_IDS:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 76
    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->imageViews:[Landroid/widget/ImageView;

    sget-object v3, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->IMAGE_IDS:[I

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->$(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v5, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 79
    .local v1, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    const v3, 0x7f100124

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->$(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    .line 80
    .local v2, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 81
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 82
    new-instance v3, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$SpacesItemDecoration;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$SpacesItemDecoration;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 83
    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->appAdapter:Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 84
    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->$(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->friendsBlock:Landroid/view/View;

    .line 85
    const v3, 0x7f10012e

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->$(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->textDescription:Landroid/widget/TextView;

    .line 86
    const v3, 0x7f10012f

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->$(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->viewExpandText:Landroid/view/View;

    .line 87
    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->textDescription:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->viewExpandText:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->IMAGE_IDS:[I

    return-object v0
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;)V
    .locals 10
    .param p1, "data"    # Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;

    .prologue
    const/4 v2, 0x1

    const/16 v9, 0x8

    const/4 v3, 0x0

    .line 93
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->lastData:Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;

    .line 95
    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->appAdapter:Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter;

    iget-object v5, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;->application:Lcom/vkcoffee/android/data/ApiApplication;

    iget-object v5, v5, Lcom/vkcoffee/android/data/ApiApplication;->screenshot:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter;->setUrls(Ljava/util/ArrayList;)V

    .line 97
    iget-object v4, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;->userProfiles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v2, :cond_0

    .line 98
    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->friendsBlock:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->viewDivider:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 105
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->imageViews:[Landroid/widget/ImageView;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 106
    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->imageViews:[Landroid/widget/ImageView;

    aget-object v1, v4, v0

    .line 107
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v4, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;->userProfiles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 108
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    .end local v0    # "i":I
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_0
    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->friendsBlock:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->viewDivider:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 110
    .restart local v0    # "i":I
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 114
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_2
    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->textViewPlayingFriends:Landroid/widget/TextView;

    const v5, 0x7f0e0011

    iget-object v6, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;->userProfiles:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;->userProfiles:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {p0, v5, v6, v7}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v4, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;->application:Lcom/vkcoffee/android/data/ApiApplication;

    iget-object v4, v4, Lcom/vkcoffee/android/data/ApiApplication;->description:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;->application:Lcom/vkcoffee/android/data/ApiApplication;

    iget-object v4, v4, Lcom/vkcoffee/android/data/ApiApplication;->shortDescription:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;->application:Lcom/vkcoffee/android/data/ApiApplication;

    iget-object v4, v4, Lcom/vkcoffee/android/data/ApiApplication;->description:Ljava/lang/String;

    .line 118
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;->application:Lcom/vkcoffee/android/data/ApiApplication;

    iget-object v5, v5, Lcom/vkcoffee/android/data/ApiApplication;->shortDescription:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-gt v4, v5, :cond_4

    .line 120
    .local v2, "isNeedExpand":Z
    :goto_3
    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->lastData:Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;

    iget-boolean v4, v4, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;->isExpand:Z

    if-nez v4, :cond_3

    if-eqz v2, :cond_5

    .line 121
    :cond_3
    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->textDescription:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;->application:Lcom/vkcoffee/android/data/ApiApplication;

    iget-object v4, v4, Lcom/vkcoffee/android/data/ApiApplication;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->viewExpandText:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 127
    :goto_4
    return-void

    .end local v2    # "isNeedExpand":Z
    :cond_4
    move v2, v3

    .line 118
    goto :goto_3

    .line 124
    .restart local v2    # "isNeedExpand":Z
    :cond_5
    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->textDescription:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;->application:Lcom/vkcoffee/android/data/ApiApplication;

    iget-object v5, v5, Lcom/vkcoffee/android/data/ApiApplication;->shortDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v4, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->viewExpandText:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->bind(Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;)V

    return-void
.end method

.method public clearImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->lastData:Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;->getUsersCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->imageViews:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    const v1, 0x7f0202c2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100127

    if-ne v0, v1, :cond_1

    .line 163
    new-instance v1, Lcom/vkcoffee/android/fragments/userlist/GamesFriendFragment$Builder;

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->lastData:Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;->userProfiles:Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Lcom/vkcoffee/android/fragments/userlist/GamesFriendFragment$Builder;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/userlist/GamesFriendFragment$Builder;->go(Landroid/content/Context;)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->lastData:Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;->isExpand:Z

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->lastData:Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;->isExpand:Z

    .line 166
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->adapter:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->lastData:Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$Ref;->getUsersCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;->imageViews:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 134
    :cond_0
    return-void
.end method

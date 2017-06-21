.class public Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;
.super Lcom/vkcoffee/android/fragments/base/GridFragment;
.source "GiftCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$GiftCategoryFragment$$Lambda$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/base/GridFragment",
        "<",
        "Lcom/vkcoffee/android/api/models/CatalogedGift;",
        ">;"
    }
.end annotation


# static fields
.field private static final ExtraBalance:Ljava/lang/String; = "balance"

.field private static final ExtraData:Ljava/lang/String; = "data"

.field private static final ExtraUser:Ljava/lang/String; = "uid"


# instance fields
.field private mBalance:I

.field private mData:Lcom/vkcoffee/android/api/models/GiftCategory;

.field private final mDecoration:Lcom/vkcoffee/android/ui/recyclerview/FitGridItemDecoration;

.field private final mGiftCardPadding:Landroid/graphics/Rect;

.field private final mGiftSender:Lcom/vkcoffee/android/functions/VoidF1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/api/models/CatalogedGift;",
            ">;"
        }
    .end annotation
.end field

.field private final mGiftsReceiver:Landroid/content/BroadcastReceiver;

.field private mItemMinSize:I

.field private mItemWidth:I

.field private mListPadding:I

.field private mTo:Lcom/vkcoffee/android/UserProfile;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/base/GridFragment;-><init>(I)V

    .line 38
    new-instance v0, Lcom/vkcoffee/android/ui/recyclerview/FitGridItemDecoration;

    invoke-direct {v0}, Lcom/vkcoffee/android/ui/recyclerview/FitGridItemDecoration;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mDecoration:Lcom/vkcoffee/android/ui/recyclerview/FitGridItemDecoration;

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mGiftCardPadding:Landroid/graphics/Rect;

    .line 40
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$GiftCategoryFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mGiftSender:Lcom/vkcoffee/android/functions/VoidF1;

    .line 41
    new-instance v0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$1;-><init>(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mGiftsReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    const v0, 0x7f0301a0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->setLayout(I)V

    .line 76
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;)Lcom/vkcoffee/android/api/models/GiftCategory;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mData:Lcom/vkcoffee/android/api/models/GiftCategory;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;)Lcom/vkcoffee/android/UserProfile;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mTo:Lcom/vkcoffee/android/UserProfile;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;)Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;Lcom/vkcoffee/android/api/models/GiftCategory;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mData:Lcom/vkcoffee/android/api/models/GiftCategory;

    return-void
.end method

.method static synthetic access$4(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$5(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->onDataLoaded(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$6(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;)Lcom/vkcoffee/android/functions/VoidF1;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mGiftSender:Lcom/vkcoffee/android/functions/VoidF1;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mItemWidth:I

    return v0
.end method

.method static synthetic access$8(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mItemMinSize:I

    return v0
.end method

.method public static start(Landroid/app/Activity;Lcom/vkcoffee/android/UserProfile;Lcom/vkcoffee/android/api/models/GiftCategory;I)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "to"    # Lcom/vkcoffee/android/UserProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "category"    # Lcom/vkcoffee/android/api/models/GiftCategory;
    .param p3, "balance"    # I

    .prologue
    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 80
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 81
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 82
    const-string v1, "balance"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    instance-of v1, p0, Lcom/vkcoffee/android/TabletDialogActivity;

    if-eqz v1, :cond_0

    .line 84
    check-cast p0, Lcom/vkcoffee/android/TabletDialogActivity;

    .end local p0    # "activity":Landroid/app/Activity;
    const-class v1, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;

    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/TabletDialogActivity;->start(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 88
    :goto_0
    return-void

    .line 86
    .restart local p0    # "activity":Landroid/app/Activity;
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/navigation/Navigator;

    const-class v2, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;

    new-instance v3, Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    invoke-direct {v3}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;-><init>()V

    const v4, 0x7f0f0056

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->windowBackgroundResource(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Lcom/vkcoffee/android/navigation/Navigator$ActivityNavigator;Landroid/os/Bundle;)V

    invoke-virtual {v1, p0}, Lcom/vkcoffee/android/navigation/Navigator;->go(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method protected createAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vkcoffee/android/fragments/base/GridFragment",
            "<",
            "Lcom/vkcoffee/android/api/models/CatalogedGift;",
            ">.GridAdapter<*>;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$3;

    invoke-direct {v0, p0, p0}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$3;-><init>(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;Lcom/vkcoffee/android/fragments/base/GridFragment;)V

    return-object v0
.end method

.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 125
    new-instance v0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$2;-><init>(Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;)V

    .line 135
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment$2;->execPool([Ljava/lang/Object;)Lcom/vkcoffee/android/background/AsyncTask;

    .line 136
    return-void
.end method

.method protected getColumnsCount()I
    .locals 10

    .prologue
    const v9, 0x3f19999a    # 0.6f

    .line 159
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v7}, Lme/grishka/appkit/views/UsableRecyclerView;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mListPadding:I

    sub-int v6, v7, v8

    .line 160
    .local v6, "screenHeight":I
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mGiftCardPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    const/high16 v8, 0x42200000    # 40.0f

    invoke-static {v8}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v8

    add-int v1, v7, v8

    .line 161
    .local v1, "heightExtra":I
    int-to-float v7, v6

    iget v8, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mItemMinSize:I

    add-int/2addr v8, v1

    int-to-float v8, v8

    div-float v2, v7, v8

    .line 162
    .local v2, "initialCount":F
    float-to-int v7, v2

    int-to-float v7, v7

    sub-float v5, v2, v7

    .line 163
    .local v5, "remains":F
    iget v7, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mItemMinSize:I

    iput v7, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mItemWidth:I

    .line 164
    const/high16 v7, 0x3e800000    # 0.25f

    cmpg-float v7, v5, v7

    if-lez v7, :cond_0

    cmpl-float v7, v5, v9

    if-lez v7, :cond_1

    .line 165
    :cond_0
    int-to-float v7, v6

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float v8, v2, v8

    float-to-int v8, v8

    int-to-float v8, v8

    add-float/2addr v8, v9

    div-float/2addr v7, v8

    int-to-float v8, v1

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mItemWidth:I

    .line 167
    :cond_1
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v7}, Lme/grishka/appkit/views/UsableRecyclerView;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mListPadding:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mListPadding:I

    sub-int v3, v7, v8

    .line 168
    .local v3, "listWidth":I
    iget v7, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mItemWidth:I

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mGiftCardPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mGiftCardPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int v0, v7, v8

    .line 169
    .local v0, "giftMinWidth":I
    div-int v4, v3, v0

    .line 170
    .local v4, "numColumns":I
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mDecoration:Lcom/vkcoffee/android/ui/recyclerview/FitGridItemDecoration;

    mul-int v8, v0, v4

    sub-int v8, v3, v8

    add-int/lit8 v9, v4, -0x1

    div-int/2addr v8, v9

    invoke-virtual {v7, v4, v8}, Lcom/vkcoffee/android/ui/recyclerview/FitGridItemDecoration;->set(II)Lcom/vkcoffee/android/ui/recyclerview/FitGridItemDecoration;

    .line 171
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;->notifyDataSetChanged()V

    .line 172
    return v4
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 119
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->loaded:Z

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->loadData()V

    .line 122
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 93
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mGiftCardPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mGiftCardPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mListPadding:I

    .line 97
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mItemMinSize:I

    .line 98
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "balance"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mBalance:I

    .line 99
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mTo:Lcom/vkcoffee/android/UserProfile;

    .line 100
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->setRefreshEnabled(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mGiftsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.vkcoffee.android.ACTION_GIFT_SENT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 102
    return-void
.end method

.method protected onCreateCardDecorator()Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mDecoration:Lcom/vkcoffee/android/ui/recyclerview/FitGridItemDecoration;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 106
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mDecoration:Lcom/vkcoffee/android/ui/recyclerview/FitGridItemDecoration;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onDestroy()V

    .line 177
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mGiftsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 178
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 112
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mListPadding:I

    iget v2, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mListPadding:I

    iget v3, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mListPadding:I

    iget v4, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mListPadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 113
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f020318

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->buildCounterDrawable(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 114
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void
.end method

.method sendGift(Lcom/vkcoffee/android/api/models/CatalogedGift;)V
    .locals 3
    .param p1, "gift"    # Lcom/vkcoffee/android/api/models/CatalogedGift;

    .prologue
    .line 181
    iget-boolean v0, p1, Lcom/vkcoffee/android/api/models/CatalogedGift;->disabled:Z

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p1, Lcom/vkcoffee/android/api/models/CatalogedGift;->gift:Lcom/vkcoffee/android/api/models/Gift;

    iget-object v0, v0, Lcom/vkcoffee/android/api/models/Gift;->stickers_product_id:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const v0, 0x7f0801eb

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 186
    :goto_1
    return-void

    .line 182
    :cond_0
    const v0, 0x7f0801ef

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/TabletDialogActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mTo:Lcom/vkcoffee/android/UserProfile;

    iget v2, p0, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->mBalance:I

    invoke-static {v0, v1, p1, v2}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->start(Landroid/app/Activity;Lcom/vkcoffee/android/UserProfile;Lcom/vkcoffee/android/api/models/CatalogedGift;I)V

    goto :goto_1
.end method

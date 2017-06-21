.class public Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;
.super Lcom/vkcoffee/android/fragments/base/GridFragment;
.source "GiftsCatalogFragment.java"

# interfaces
.implements Lcom/vk/attachpicker/SupportExternalToolbarContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$FooterHolder;,
        Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder;,
        Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$HeaderHolder;,
        Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/base/GridFragment",
        "<",
        "Lcom/vkcoffee/android/api/models/GiftCategory;",
        ">;",
        "Lcom/vk/attachpicker/SupportExternalToolbarContainer;"
    }
.end annotation


# static fields
.field public static final ExtraUser:Ljava/lang/String; = "user"

.field private static final GIFTS_DECORATION:Lcom/vkcoffee/android/ui/recyclerview/SpaceItemDecoration;

.field private static final GIFTS_SPACING:I


# instance fields
.field private mBalance:Landroid/widget/TextView;

.field private final mDecoration:Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

.field private final mGiftCardPadding:Landroid/graphics/Rect;

.field private mGiftMinSize:I

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

.field private mGiftsWidth:I

.field private mListHeight:I

.field private mListPadding:I

.field private mTo:Lcom/vkcoffee/android/UserProfile;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mVotes:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->GIFTS_SPACING:I

    .line 60
    new-instance v0, Lcom/vkcoffee/android/ui/recyclerview/SpaceItemDecoration;

    sget v1, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->GIFTS_SPACING:I

    invoke-direct {v0, v2, v2, v1, v2}, Lcom/vkcoffee/android/ui/recyclerview/SpaceItemDecoration;-><init>(IIII)V

    sput-object v0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->GIFTS_DECORATION:Lcom/vkcoffee/android/ui/recyclerview/SpaceItemDecoration;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 112
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/base/GridFragment;-><init>(I)V

    .line 62
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mGiftSender:Lcom/vkcoffee/android/functions/VoidF1;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mGiftCardPadding:Landroid/graphics/Rect;

    .line 64
    new-instance v1, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration$Provider;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const v3, -0x282727

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;-><init>(Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration$Provider;III)V

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mDecoration:Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

    .line 66
    new-instance v0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$1;-><init>(Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mGiftsReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    const v0, 0x7f0301a0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->setLayout(I)V

    .line 114
    const v0, 0x7f03009b

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->setListLayoutId(I)V

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;

    .prologue
    .line 56
    iget v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mListHeight:I

    return v0
.end method

.method static synthetic access$1100(Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;

    .prologue
    .line 56
    iget v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mGiftsWidth:I

    return v0
.end method

.method static synthetic access$1200(Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;)Lcom/vkcoffee/android/functions/VoidF1;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mGiftSender:Lcom/vkcoffee/android/functions/VoidF1;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;

    .prologue
    .line 56
    iget v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mGiftMinSize:I

    return v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;)Lcom/vkcoffee/android/UserProfile;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mTo:Lcom/vkcoffee/android/UserProfile;

    return-object v0
.end method

.method static synthetic access$302(Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mVotes:I

    return p1
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;

    .prologue
    .line 56
    iget v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mListPadding:I

    return v0
.end method

.method static synthetic access$900()Lcom/vkcoffee/android/ui/recyclerview/SpaceItemDecoration;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->GIFTS_DECORATION:Lcom/vkcoffee/android/ui/recyclerview/SpaceItemDecoration;

    return-object v0
.end method

.method private isInContextOfAttachActivity()Z
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/vk/attachpicker/AttachActivity;

    return v0
.end method

.method public static start(Landroid/app/Activity;Lcom/vkcoffee/android/UserProfile;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "to"    # Lcom/vkcoffee/android/UserProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 120
    new-instance v1, Lcom/vkcoffee/android/navigation/Navigator;

    const-class v2, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;

    new-instance v3, Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    invoke-direct {v3}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;-><init>()V

    const v4, 0x7f0f0056

    .line 122
    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->windowBackgroundResource(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Lcom/vkcoffee/android/navigation/Navigator$ActivityNavigator;Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {v1, p0}, Lcom/vkcoffee/android/navigation/Navigator;->go(Landroid/content/Context;)V

    .line 125
    return-void
.end method


# virtual methods
.method buildTitle()V
    .locals 6

    .prologue
    .line 254
    iget v2, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mVotes:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "votes":Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const v2, 0x7f0805c3

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 257
    .local v0, "sb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 258
    new-instance v2, Lcom/vkcoffee/android/ui/Font$TypefaceSpan;

    sget-object v3, Lcom/vkcoffee/android/ui/Font;->Medium:Lcom/vkcoffee/android/ui/Font;

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/ui/Font$TypefaceSpan;-><init>(Lcom/vkcoffee/android/ui/Font;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 259
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0004

    iget v4, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mVotes:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 261
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mBalance:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    return-void
.end method

.method protected canGoBack()Z
    .locals 1

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->isInContextOfAttachActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const/4 v0, 0x0

    .line 231
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/base/GridFragment;->canGoBack()Z

    move-result v0

    goto :goto_0
.end method

.method protected createAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vkcoffee/android/fragments/base/GridFragment",
            "<",
            "Lcom/vkcoffee/android/api/models/GiftCategory;",
            ">.GridAdapter<",
            "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
            "<",
            "Lcom/vkcoffee/android/api/models/GiftCategory;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 223
    new-instance v0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$1;)V

    return-object v0
.end method

.method public doLoadData(II)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 180
    new-instance v1, Lcom/vkcoffee/android/api/gifts/GiftsGetCatalog;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mTo:Lcom/vkcoffee/android/UserProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mTo:Lcom/vkcoffee/android/UserProfile;

    iget v0, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/vkcoffee/android/api/gifts/GiftsGetCatalog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$2;-><init>(Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;)V

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/api/gifts/GiftsGetCatalog;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 186
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 187
    return-void

    .line 180
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getColumnsCount()I
    .locals 8

    .prologue
    const/high16 v7, 0x3f400000    # 0.75f

    .line 197
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v4}, Lme/grishka/appkit/views/UsableRecyclerView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mListPadding:I

    sub-int v3, v4, v5

    .line 198
    .local v3, "screenWidth":I
    iget v4, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mGiftMinSize:I

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mGiftCardPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mGiftCardPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int v0, v4, v5

    .line 200
    .local v0, "giftMinWidth":I
    sget v4, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->GIFTS_SPACING:I

    add-int/2addr v4, v3

    int-to-float v4, v4

    int-to-float v5, v0

    sget v6, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->GIFTS_SPACING:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-float v1, v4, v5

    .line 201
    .local v1, "initialCount":F
    float-to-int v4, v1

    int-to-float v4, v4

    sub-float v2, v1, v4

    .line 203
    .local v2, "remains":F
    iget v4, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mGiftMinSize:I

    iput v4, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mGiftsWidth:I

    .line 205
    const/high16 v4, 0x3e800000    # 0.25f

    cmpg-float v4, v2, v4

    if-lez v4, :cond_0

    cmpl-float v4, v2, v7

    if-lez v4, :cond_1

    .line 206
    :cond_0
    const/high16 v4, 0x3f000000    # 0.5f

    sub-float v4, v1, v4

    float-to-int v4, v4

    int-to-float v4, v4

    add-float v1, v4, v7

    .line 207
    sget v4, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->GIFTS_SPACING:I

    add-int/2addr v4, v3

    int-to-float v4, v4

    div-float/2addr v4, v1

    sget v5, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->GIFTS_SPACING:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mGiftsWidth:I

    .line 209
    :cond_1
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mGiftCardPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mGiftsWidth:I

    add-int/2addr v4, v5

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mListHeight:I

    .line 210
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;->notifyDataSetChanged()V

    .line 211
    const/4 v4, 0x1

    return v4
.end method

.method public hasNavigationDrawer()Z
    .locals 1

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->isInContextOfAttachActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const/4 v0, 0x0

    .line 238
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/base/GridFragment;->hasNavigationDrawer()Z

    move-result v0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 171
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->loaded:Z

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->loadData()V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->buildTitle()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 132
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 133
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mGiftCardPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mGiftCardPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mListPadding:I

    .line 136
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mGiftMinSize:I

    .line 137
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->isInContextOfAttachActivity()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    const/high16 v1, 0x42c00000    # 96.0f

    invoke-static {v1}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mGiftMinSize:I

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mTo:Lcom/vkcoffee/android/UserProfile;

    .line 141
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->setRefreshEnabled(Z)V

    .line 142
    const v1, 0x7f080466

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->setTitle(I)V

    .line 143
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mGiftsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.vkcoffee.android.ACTION_GIFT_SENT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 144
    return-void
.end method

.method protected onCreateCardDecorator()Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    .locals 4

    .prologue
    .line 216
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mDecoration:Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 217
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mDecoration:Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

    sget-boolean v0, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mListPadding:I

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;->setPadding(II)Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

    move-result-object v0

    invoke-virtual {v1, v0}, Lme/grishka/appkit/views/UsableRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 218
    const/4 v0, 0x0

    return-object v0

    .line 217
    :cond_0
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    goto :goto_0
.end method

.method protected onDataLoaded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/api/models/GiftCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "d":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/api/models/GiftCategory;>;"
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onDataLoaded(Ljava/util/List;)V

    .line 192
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->buildTitle()V

    .line 193
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onDestroy()V

    .line 149
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mGiftsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 150
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 155
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 156
    const v1, 0x7f10021d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mBalance:Landroid/widget/TextView;

    .line 158
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 160
    .local v0, "activity":Landroid/app/Activity;
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->isInContextOfAttachActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 162
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 166
    :cond_0
    return-void
.end method

.method public provideToolbar(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    return-object v0
.end method

.method sendGift(Lcom/vkcoffee/android/api/models/CatalogedGift;)V
    .locals 3
    .param p1, "gift"    # Lcom/vkcoffee/android/api/models/CatalogedGift;

    .prologue
    .line 246
    iget-boolean v0, p1, Lcom/vkcoffee/android/api/models/CatalogedGift;->disabled:Z

    if-nez v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mTo:Lcom/vkcoffee/android/UserProfile;

    iget v2, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mVotes:I

    invoke-static {v0, v1, p1, v2}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->start(Landroid/app/Activity;Lcom/vkcoffee/android/UserProfile;Lcom/vkcoffee/android/api/models/CatalogedGift;I)V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p1, Lcom/vkcoffee/android/api/models/CatalogedGift;->gift:Lcom/vkcoffee/android/api/models/Gift;

    iget-object v0, v0, Lcom/vkcoffee/android/api/models/Gift;->stickers_product_id:Ljava/lang/Integer;

    if-nez v0, :cond_1

    const v0, 0x7f0801eb

    :goto_1
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const v0, 0x7f0801ef

    goto :goto_1
.end method

.method showCategory(Lcom/vkcoffee/android/api/models/GiftCategory;)V
    .locals 3
    .param p1, "category"    # Lcom/vkcoffee/android/api/models/GiftCategory;

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mTo:Lcom/vkcoffee/android/UserProfile;

    iget v2, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->mVotes:I

    invoke-static {v0, v1, p1, v2}, Lcom/vkcoffee/android/fragments/gifts/GiftCategoryFragment;->start(Landroid/app/Activity;Lcom/vkcoffee/android/UserProfile;Lcom/vkcoffee/android/api/models/GiftCategory;I)V

    .line 243
    return-void
.end method

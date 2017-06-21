.class public Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;
.super Lcom/vkcoffee/android/fragments/base/GridFragment;
.source "GiftSendFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$Adapter;,
        Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$AddHolder;,
        Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$GiftHolder;,
        Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$HeaderHolder;,
        Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$MessageHolder;,
        Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$PickerFragment;,
        Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$PrivacyHolder;,
        Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$SendHolder;,
        Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$UserHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/base/GridFragment",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION_GIFT_SENT:Ljava/lang/String; = "com.vkcoffee.android.ACTION_GIFT_SENT"

.field private static final ExtraBalance:Ljava/lang/String; = "balance"

.field private static final ExtraGift:Ljava/lang/String; = "gift"

.field private static final ExtraUser:Ljava/lang/String; = "to"

.field private static final REQUEST_ADD_RECIPIENT:I = 0x2a


# instance fields
.field mActive:Z

.field mAddVisibility:Z

.field mBalance:I

.field mCanSend:Z

.field final mDecoration:Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

.field mGift:Lcom/vkcoffee/android/api/models/CatalogedGift;

.field mMessage:Ljava/lang/CharSequence;

.field mPaymentRequired:Z

.field mPrivacyEnabled:Z

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field final mRecipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field mSendEnabled:Z

.field mSendText:Ljava/lang/CharSequence;

.field mSubTitleVisible:Z

.field mSubtitleText:Ljava/lang/CharSequence;

.field mTitleText:Ljava/lang/CharSequence;

.field mTotalPrice:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 402
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/base/GridFragment;-><init>(I)V

    .line 72
    new-instance v1, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration$Provider;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, 0x26000000

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;-><init>(Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration$Provider;III)V

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mDecoration:Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mMessage:Ljava/lang/CharSequence;

    .line 77
    new-instance v0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$1;-><init>(Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mRecipients:Ljava/util/List;

    .line 94
    iput-boolean v5, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mSubTitleVisible:Z

    .line 403
    const v0, 0x7f0301a0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->setLayout(I)V

    .line 404
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;)Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static start(Landroid/app/Activity;Lcom/vkcoffee/android/UserProfile;Lcom/vkcoffee/android/api/models/CatalogedGift;I)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "to"    # Lcom/vkcoffee/android/UserProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "gift"    # Lcom/vkcoffee/android/api/models/CatalogedGift;
    .param p3, "balance"    # I

    .prologue
    .line 390
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 391
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "to"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 392
    const-string v1, "gift"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 393
    const-string v1, "balance"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 394
    instance-of v1, p0, Lcom/vkcoffee/android/TabletDialogActivity;

    if-eqz v1, :cond_0

    .line 395
    check-cast p0, Lcom/vkcoffee/android/TabletDialogActivity;

    .end local p0    # "activity":Landroid/app/Activity;
    const-class v1, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/TabletDialogActivity;->start(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 399
    :goto_0
    return-void

    .line 397
    .restart local p0    # "activity":Landroid/app/Activity;
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/navigation/Navigator;

    const-class v2, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

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
.method addRecipient()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 621
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 622
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "select"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 623
    const-string v1, "title"

    const v2, 0x7f0801f1

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v1, "global_search"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 625
    const-string v1, "uid"

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 626
    const-string v1, "disable_spinner"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 627
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mGift:Lcom/vkcoffee/android/api/models/CatalogedGift;

    iget-object v1, v1, Lcom/vkcoffee/android/api/models/CatalogedGift;->gift:Lcom/vkcoffee/android/api/models/Gift;

    iget-object v1, v1, Lcom/vkcoffee/android/api/models/Gift;->stickers_product_id:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 628
    const-string v1, "product_id"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mGift:Lcom/vkcoffee/android/api/models/CatalogedGift;

    iget-object v2, v2, Lcom/vkcoffee/android/api/models/CatalogedGift;->gift:Lcom/vkcoffee/android/api/models/Gift;

    iget-object v2, v2, Lcom/vkcoffee/android/api/models/Gift;->stickers_product_id:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 630
    :cond_0
    new-instance v2, Lcom/vkcoffee/android/navigation/Navigator;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mGift:Lcom/vkcoffee/android/api/models/CatalogedGift;

    iget-object v1, v1, Lcom/vkcoffee/android/api/models/CatalogedGift;->gift:Lcom/vkcoffee/android/api/models/Gift;

    iget-object v1, v1, Lcom/vkcoffee/android/api/models/Gift;->stickers_product_id:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-class v1, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$PickerFragment;

    :goto_0
    invoke-direct {v2, v1, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    const/16 v1, 0x2a

    invoke-virtual {v2, p0, v1}, Lcom/vkcoffee/android/navigation/Navigator;->forResult(Landroid/app/Fragment;I)V

    .line 631
    return-void

    .line 630
    :cond_1
    const-class v1, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    goto :goto_0
.end method

.method addRecipient(Lcom/vkcoffee/android/UserProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 634
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mRecipients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mRecipients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->invalidatePrice()V

    .line 637
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;->notifyDataSetChanged()V

    .line 638
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->updateFinishOnTouchOutside()V

    .line 640
    :cond_0
    return-void
.end method

.method protected createAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vkcoffee/android/fragments/base/GridFragment",
            "<",
            "Ljava/lang/Object;",
            ">.GridAdapter<*>;"
        }
    .end annotation

    .prologue
    .line 487
    new-instance v0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$Adapter;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;)V

    return-object v0
.end method

.method deleteRecipient(Lcom/vkcoffee/android/UserProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 643
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mRecipients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 644
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->invalidatePrice()V

    .line 645
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;->notifyDataSetChanged()V

    .line 646
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->updateFinishOnTouchOutside()V

    .line 647
    return-void
.end method

.method protected doLoadData(II)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 480
    return-void
.end method

.method protected getColumnsCount()I
    .locals 1

    .prologue
    .line 491
    const/4 v0, 0x1

    return v0
.end method

.method invalidate()V
    .locals 1

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->invalidatePrice()V

    .line 518
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->invalidateBalance()V

    .line 519
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;->notifyDataSetChanged()V

    .line 520
    return-void
.end method

.method invalidateBalance()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 607
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mGift:Lcom/vkcoffee/android/api/models/CatalogedGift;

    iget-object v1, v1, Lcom/vkcoffee/android/api/models/CatalogedGift;->gifts_left:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mGift:Lcom/vkcoffee/android/api/models/CatalogedGift;

    iget-object v1, v1, Lcom/vkcoffee/android/api/models/CatalogedGift;->gifts_left:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    .line 608
    iput-boolean v4, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mSubTitleVisible:Z

    .line 609
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0018

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mGift:Lcom/vkcoffee/android/api/models/CatalogedGift;

    iget-object v3, v3, Lcom/vkcoffee/android/api/models/CatalogedGift;->gifts_left:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mGift:Lcom/vkcoffee/android/api/models/CatalogedGift;

    iget-object v5, v5, Lcom/vkcoffee/android/api/models/CatalogedGift;->gifts_left:Ljava/lang/Integer;

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mSubtitleText:Ljava/lang/CharSequence;

    .line 618
    :goto_0
    return-void

    .line 610
    :cond_0
    iget v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mBalance:I

    if-lez v1, :cond_1

    .line 611
    iput-boolean v4, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mSubTitleVisible:Z

    .line 612
    new-array v0, v4, [Ljava/lang/Object;

    .line 613
    .local v0, "objArr":[Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0003

    iget v3, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mBalance:I

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mBalance:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 614
    const v1, 0x7f080046

    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mSubtitleText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 616
    .end local v0    # "objArr":[Ljava/lang/Object;
    :cond_1
    iput-boolean v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mSubTitleVisible:Z

    goto :goto_0
.end method

.method invalidatePrice()V
    .locals 13

    .prologue
    const v8, 0x7f08046c

    const v7, 0x7f0803b8

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 527
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mGift:Lcom/vkcoffee/android/api/models/CatalogedGift;

    iget-object v6, v6, Lcom/vkcoffee/android/api/models/CatalogedGift;->gifts_left:Ljava/lang/Integer;

    if-nez v6, :cond_1

    .line 528
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mGift:Lcom/vkcoffee/android/api/models/CatalogedGift;

    iget v3, v6, Lcom/vkcoffee/android/api/models/CatalogedGift;->price:I

    .line 529
    .local v3, "price":I
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mGift:Lcom/vkcoffee/android/api/models/CatalogedGift;

    iget-object v2, v6, Lcom/vkcoffee/android/api/models/CatalogedGift;->price_str:Ljava/lang/String;

    .line 530
    .local v2, "cost":Ljava/lang/String;
    const/4 v1, 0x1

    .line 531
    .local v1, "canAddMore":Z
    iput-boolean v11, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mCanSend:Z

    .line 580
    :goto_0
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mRecipients:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    mul-int/2addr v6, v3

    iput v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mTotalPrice:I

    .line 581
    iput-object v2, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mTitleText:Ljava/lang/CharSequence;

    .line 582
    if-nez v1, :cond_0

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mRecipients:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 583
    :cond_0
    const/4 v5, 0x1

    .line 587
    .local v5, "z":Z
    :goto_1
    iput-boolean v5, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mAddVisibility:Z

    .line 588
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mRecipients:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 589
    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mSendText:Ljava/lang/CharSequence;

    .line 590
    iput-boolean v12, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mSendEnabled:Z

    .line 604
    :goto_2
    return-void

    .line 532
    .end local v1    # "canAddMore":Z
    .end local v2    # "cost":Ljava/lang/String;
    .end local v3    # "price":I
    .end local v5    # "z":Z
    :cond_1
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mGift:Lcom/vkcoffee/android/api/models/CatalogedGift;

    iget v6, v6, Lcom/vkcoffee/android/api/models/CatalogedGift;->price:I

    if-lez v6, :cond_4

    .line 533
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mGift:Lcom/vkcoffee/android/api/models/CatalogedGift;

    iget v3, v6, Lcom/vkcoffee/android/api/models/CatalogedGift;->price:I

    .line 534
    .restart local v3    # "price":I
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mGift:Lcom/vkcoffee/android/api/models/CatalogedGift;

    iget-object v2, v6, Lcom/vkcoffee/android/api/models/CatalogedGift;->price_str:Ljava/lang/String;

    .line 535
    .restart local v2    # "cost":Ljava/lang/String;
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mGift:Lcom/vkcoffee/android/api/models/CatalogedGift;

    iget-object v6, v6, Lcom/vkcoffee/android/api/models/CatalogedGift;->gifts_left:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mRecipients:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v6, v7

    if-ltz v6, :cond_2

    .line 536
    const/4 v5, 0x1

    .line 540
    .restart local v5    # "z":Z
    :goto_3
    iput-boolean v5, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mCanSend:Z

    .line 541
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mGift:Lcom/vkcoffee/android/api/models/CatalogedGift;

    iget-object v6, v6, Lcom/vkcoffee/android/api/models/CatalogedGift;->gifts_left:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mRecipients:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-lez v6, :cond_3

    .line 542
    const/4 v1, 0x1

    .line 543
    .restart local v1    # "canAddMore":Z
    goto :goto_0

    .line 538
    .end local v1    # "canAddMore":Z
    .end local v5    # "z":Z
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "z":Z
    goto :goto_3

    .line 544
    :cond_3
    const/4 v1, 0x0

    .line 546
    .restart local v1    # "canAddMore":Z
    goto :goto_0

    .end local v1    # "canAddMore":Z
    .end local v2    # "cost":Ljava/lang/String;
    .end local v3    # "price":I
    .end local v5    # "z":Z
    :cond_4
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mGift:Lcom/vkcoffee/android/api/models/CatalogedGift;

    iget v6, v6, Lcom/vkcoffee/android/api/models/CatalogedGift;->real_price:I

    if-gtz v6, :cond_7

    .line 547
    const/4 v3, 0x0

    .line 548
    .restart local v3    # "price":I
    invoke-virtual {p0, v7}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 549
    .restart local v2    # "cost":Ljava/lang/String;
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mGift:Lcom/vkcoffee/android/api/models/CatalogedGift;

    iget-object v6, v6, Lcom/vkcoffee/android/api/models/CatalogedGift;->gifts_left:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mRecipients:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v6, v7

    if-ltz v6, :cond_5

    .line 550
    const/4 v5, 0x1

    .line 554
    .restart local v5    # "z":Z
    :goto_4
    iput-boolean v5, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mCanSend:Z

    .line 555
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mGift:Lcom/vkcoffee/android/api/models/CatalogedGift;

    iget-object v6, v6, Lcom/vkcoffee/android/api/models/CatalogedGift;->gifts_left:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mRecipients:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-lez v6, :cond_6

    .line 556
    const/4 v1, 0x1

    .line 557
    .restart local v1    # "canAddMore":Z
    goto/16 :goto_0

    .line 552
    .end local v1    # "canAddMore":Z
    .end local v5    # "z":Z
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "z":Z
    goto :goto_4

    .line 558
    :cond_6
    const/4 v1, 0x0

    .line 560
    .restart local v1    # "canAddMore":Z
    goto/16 :goto_0

    .end local v1    # "canAddMore":Z
    .end local v2    # "cost":Ljava/lang/String;
    .end local v3    # "price":I
    .end local v5    # "z":Z
    :cond_7
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mGift:Lcom/vkcoffee/android/api/models/CatalogedGift;

    iget-object v6, v6, Lcom/vkcoffee/android/api/models/CatalogedGift;->gifts_left:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gtz v6, :cond_8

    .line 561
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mGift:Lcom/vkcoffee/android/api/models/CatalogedGift;

    iget v3, v6, Lcom/vkcoffee/android/api/models/CatalogedGift;->real_price:I

    .line 562
    .restart local v3    # "price":I
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mGift:Lcom/vkcoffee/android/api/models/CatalogedGift;

    iget-object v2, v6, Lcom/vkcoffee/android/api/models/CatalogedGift;->real_price_str:Ljava/lang/String;

    .line 563
    .restart local v2    # "cost":Ljava/lang/String;
    const/4 v1, 0x1

    .line 564
    .restart local v1    # "canAddMore":Z
    iput-boolean v11, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mCanSend:Z

    goto/16 :goto_0

    .line 566
    .end local v1    # "canAddMore":Z
    .end local v2    # "cost":Ljava/lang/String;
    .end local v3    # "price":I
    :cond_8
    const/4 v3, 0x0

    .line 567
    .restart local v3    # "price":I
    invoke-virtual {p0, v7}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 568
    .restart local v2    # "cost":Ljava/lang/String;
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mGift:Lcom/vkcoffee/android/api/models/CatalogedGift;

    iget-object v6, v6, Lcom/vkcoffee/android/api/models/CatalogedGift;->gifts_left:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mRecipients:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-lez v6, :cond_9

    .line 569
    const/4 v1, 0x1

    .line 573
    .restart local v1    # "canAddMore":Z
    :goto_5
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mGift:Lcom/vkcoffee/android/api/models/CatalogedGift;

    iget-object v6, v6, Lcom/vkcoffee/android/api/models/CatalogedGift;->gifts_left:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mRecipients:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v6, v7

    if-ltz v6, :cond_a

    .line 574
    const/4 v5, 0x1

    .line 578
    .restart local v5    # "z":Z
    :goto_6
    iput-boolean v5, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mCanSend:Z

    goto/16 :goto_0

    .line 571
    .end local v1    # "canAddMore":Z
    .end local v5    # "z":Z
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "canAddMore":Z
    goto :goto_5

    .line 576
    :cond_a
    const/4 v5, 0x0

    .restart local v5    # "z":Z
    goto :goto_6

    .line 585
    .end local v5    # "z":Z
    :cond_b
    const/4 v5, 0x0

    .restart local v5    # "z":Z
    goto/16 :goto_1

    .line 591
    :cond_c
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mRecipients:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v11, :cond_d

    .line 592
    const v6, 0x7f08046e

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mSendText:Ljava/lang/CharSequence;

    .line 593
    iput-boolean v11, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mSendEnabled:Z

    goto/16 :goto_2

    .line 595
    :cond_d
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 596
    .local v4, "sb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 597
    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 598
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0017

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mRecipients:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v9, v11, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mRecipients:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, "bold":Ljava/lang/String;
    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 600
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v4, v6, v7, v8, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 601
    iput-object v4, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mSendText:Ljava/lang/CharSequence;

    .line 602
    iput-boolean v11, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mSendEnabled:Z

    goto/16 :goto_2
.end method

.method notifyBalanceHasChanged(I)V
    .locals 2
    .param p1, "newBalance"    # I

    .prologue
    .line 681
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkcoffee.android.actions.BALANCE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 682
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "balance"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 683
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 684
    return-void
.end method

.method notifyGiftHasSent(Lcom/vkcoffee/android/api/models/CatalogedGift;[I)V
    .locals 3
    .param p1, "gift"    # Lcom/vkcoffee/android/api/models/CatalogedGift;
    .param p2, "user_ids"    # [I

    .prologue
    .line 693
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkcoffee.android.ACTION_GIFT_SENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 694
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "gift"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 695
    const-string v1, "user_ids"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 696
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 697
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 429
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 430
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->invalidate()V

    .line 433
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 510
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 511
    const/16 v0, 0x2a

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 512
    const-string v0, "user"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->addRecipient(Lcom/vkcoffee/android/UserProfile;)V

    .line 514
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 407
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onCreate(Landroid/os/Bundle;)V

    .line 408
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->setRefreshEnabled(Z)V

    .line 409
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "gift"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/api/models/CatalogedGift;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mGift:Lcom/vkcoffee/android/api/models/CatalogedGift;

    .line 410
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "balance"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mBalance:I

    .line 411
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "to"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .line 412
    .local v0, "user":Lcom/vkcoffee/android/UserProfile;
    if-eqz v0, :cond_0

    .line 413
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mRecipients:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.vkcoffee.android.actions.BALANCE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 416
    return-void
.end method

.method protected onCreateCardDecorator()Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    .locals 12

    .prologue
    const/high16 v11, 0x41800000    # 16.0f

    const/4 v10, 0x0

    const/high16 v9, 0x41000000    # 8.0f

    .line 452
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v0

    .line 453
    .local v0, "adapter":Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;
    iget-boolean v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->isTablet:Z

    if-eqz v6, :cond_0

    .line 454
    const/4 v5, 0x0

    .line 458
    .local v5, "z":Z
    :goto_0
    new-instance v1, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    invoke-direct {v1, v0, v5}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;-><init>(Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;Z)V

    .line 459
    .local v1, "decorator":Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    iget v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->scrW:I

    const/16 v7, 0x258

    if-lt v6, v7, :cond_1

    .line 460
    invoke-static {v11}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    .line 466
    .local v4, "padding":I
    :goto_1
    iget v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->scrW:I

    const/16 v7, 0x39c

    if-lt v6, v7, :cond_3

    .line 467
    const/16 v6, 0x10

    iget v7, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->scrW:I

    add-int/lit16 v7, v7, -0x348

    add-int/lit8 v7, v7, -0x54

    div-int/lit8 v7, v7, 0x2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v6}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    .line 471
    .local v3, "margin":I
    :goto_2
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    add-int v7, v3, v4

    add-int v8, v3, v4

    invoke-virtual {v6, v7, v10, v8, v10}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 472
    invoke-static {v9}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v6

    invoke-static {v9}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v7

    invoke-virtual {v1, v4, v6, v4, v7}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->setPadding(IIII)Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    .line 473
    add-int v6, v3, v4

    invoke-static {v11}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v7

    add-int v2, v6, v7

    .line 474
    .local v2, "dividerPadding":I
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mDecoration:Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

    invoke-virtual {v6, v7}, Lme/grishka/appkit/views/UsableRecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 475
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mDecoration:Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

    invoke-virtual {v7, v2, v2}, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;->setPadding(II)Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

    move-result-object v7

    invoke-virtual {v6, v7}, Lme/grishka/appkit/views/UsableRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 476
    const/high16 v6, 0x41c00000    # 24.0f

    invoke-static {v6}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->setCardsSpacing(I)Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->setBackgroundColor(I)Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    move-result-object v6

    return-object v6

    .line 456
    .end local v1    # "decorator":Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    .end local v2    # "dividerPadding":I
    .end local v3    # "margin":I
    .end local v4    # "padding":I
    .end local v5    # "z":Z
    :cond_0
    const/4 v5, 0x1

    .restart local v5    # "z":Z
    goto :goto_0

    .line 461
    .restart local v1    # "decorator":Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    :cond_1
    iget v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->scrW:I

    const/16 v7, 0x1e0

    if-lt v6, v7, :cond_2

    .line 462
    invoke-static {v9}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    .line 463
    .restart local v4    # "padding":I
    goto :goto_1

    .line 464
    .end local v4    # "padding":I
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "padding":I
    goto :goto_1

    .line 469
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "margin":I
    goto :goto_2
.end method

.method protected onCreateFooterView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 483
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 505
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onDestroy()V

    .line 506
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 507
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 500
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onDestroyView()V

    .line 501
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 502
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 441
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onResume()V

    .line 442
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mPaymentRequired:Z

    if-eqz v0, :cond_0

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mPaymentRequired:Z

    .line 444
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->sendGift()V

    .line 446
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 436
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onStart()V

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mActive:Z

    .line 438
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 495
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onStop()V

    .line 496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mActive:Z

    .line 497
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 419
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/base/GridFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 420
    const v0, 0x7f08046e

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->setTitle(I)V

    .line 421
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f020318

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->buildCounterDrawable(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 422
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->updateList()V

    .line 424
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->dataLoaded()V

    .line 425
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->updateFinishOnTouchOutside()V

    .line 426
    return-void
.end method

.method sendGift()V
    .locals 8

    .prologue
    .line 650
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mRecipients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0801f4

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mCanSend:Z

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mGift:Lcom/vkcoffee/android/api/models/CatalogedGift;

    invoke-virtual {v0}, Lcom/vkcoffee/android/api/models/CatalogedGift;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int v2, v0, v1

    .line 654
    .local v2, "guid":I
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mRecipients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 657
    new-instance v0, Lcom/vkcoffee/android/api/gifts/GiftsSend;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mRecipients:Ljava/util/List;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mGift:Lcom/vkcoffee/android/api/models/CatalogedGift;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mMessage:Ljava/lang/CharSequence;

    iget-boolean v6, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mPrivacyEnabled:Z

    invoke-direct/range {v0 .. v6}, Lcom/vkcoffee/android/api/gifts/GiftsSend;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/vkcoffee/android/api/models/CatalogedGift;Ljava/lang/CharSequence;Z)V

    new-instance v1, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$2;-><init>(Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/gifts/GiftsSend;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 676
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0

    .line 654
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/UserProfile;

    .line 655
    .local v7, "profile":Lcom/vkcoffee/android/UserProfile;
    invoke-virtual {v7}, Lcom/vkcoffee/android/UserProfile;->hashCode()I

    move-result v1

    xor-int/2addr v2, v1

    goto :goto_1
.end method

.method updateFinishOnTouchOutside()V
    .locals 3

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 688
    .local v0, "activity":Landroid/app/Activity;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mRecipients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 689
    .local v1, "z":Z
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 690
    return-void

    .line 688
    .end local v1    # "z":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

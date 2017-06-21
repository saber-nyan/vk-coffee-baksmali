.class public Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$PickerFragment;
.super Lcom/vkcoffee/android/fragments/friends/FriendsFragment;
.source "GiftSendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PickerFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected doLoadData()V
    .locals 3

    .prologue
    .line 337
    new-instance v0, Lcom/vkcoffee/android/api/store/StoreGetFriendsList;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$PickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "product_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/store/StoreGetFriendsList;-><init>(I)V

    new-instance v1, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$PickerFragment$1;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$PickerFragment$1;-><init>(Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$PickerFragment;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/store/StoreGetFriendsList;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 341
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$PickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 337
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$PickerFragment;->currentReq:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 342
    return-void
.end method

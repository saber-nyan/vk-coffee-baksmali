.class public Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment;
.super Lcom/vkcoffee/android/fragments/friends/FriendsFragment;
.source "SDKFriendPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PickerFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;-><init>()V

    return-void
.end method

.method static newInstance(Landroid/os/Bundle;)Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment;
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    .line 28
    new-instance v0, Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment;

    invoke-direct {v0}, Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment;-><init>()V

    .line 29
    .local v0, "result":Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment;
    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 30
    return-object v0
.end method


# virtual methods
.method protected doLoadData()V
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "com.vkcoffee.android.sdk.extra_ids"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment$1;-><init>(Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment;)V

    invoke-static {v0, v1}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V

    .line 46
    return-void
.end method

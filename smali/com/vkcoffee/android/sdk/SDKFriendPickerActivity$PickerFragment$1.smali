.class Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment$1;
.super Ljava/lang/Object;
.source "SDKFriendPickerActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/data/Friends$GetUsersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment;->doLoadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment$1;->this$0:Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment$1;->this$0:Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment$1$1;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment$1$1;-><init>(Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment$1;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 44
    return-void
.end method

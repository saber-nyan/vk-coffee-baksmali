.class Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment$1$1;
.super Ljava/lang/Object;
.source "SDKFriendPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment$1;->onUsersLoaded(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment$1;

.field final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment$1;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment$1;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment$1$1;->this$1:Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment$1;

    iput-object p2, p0, Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment$1$1;->val$users:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment$1$1;->this$1:Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment$1;

    iget-object v0, v0, Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment$1;->this$0:Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment$1$1;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/sdk/SDKFriendPickerActivity$PickerFragment;->setData(Ljava/util/List;)V

    .line 42
    return-void
.end method

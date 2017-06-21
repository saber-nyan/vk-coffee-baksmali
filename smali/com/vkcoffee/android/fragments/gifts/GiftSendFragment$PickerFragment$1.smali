.class Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$PickerFragment$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "GiftSendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$PickerFragment;->doLoadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/data/VKList",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$PickerFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$PickerFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Fragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$PickerFragment$1;->this$1:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$PickerFragment;

    .line 337
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/data/VKList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, "result":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/UserProfile;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$PickerFragment$1;->this$1:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$PickerFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$PickerFragment;->setData(Ljava/util/List;)V

    .line 340
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$PickerFragment$1;->success(Lcom/vkcoffee/android/data/VKList;)V

    return-void
.end method

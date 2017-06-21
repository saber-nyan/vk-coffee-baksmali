.class Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "ProfileGiftsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;->lambda$showGiftDeleteDialog$379(Lcom/vkcoffee/android/api/models/GiftItem;Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;

.field final synthetic val$cap$0:Lcom/vkcoffee/android/api/models/GiftItem;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;Lcom/vkcoffee/android/api/models/GiftItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$1;->val$cap$0:Lcom/vkcoffee/android/api/models/GiftItem;

    invoke-direct {p0}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 159
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;->access$600(Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$1;->val$cap$0:Lcom/vkcoffee/android/api/models/GiftItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;->updateList()V

    .line 162
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0801ea

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 164
    :cond_0
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 156
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$1;->success(Ljava/lang/Boolean;)V

    return-void
.end method

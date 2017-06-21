.class Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$2;
.super Ljava/lang/Object;
.source "GiftSendFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->sendGift()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Lcom/vkcoffee/android/api/gifts/GiftsSend$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 4

    .prologue
    .line 668
    .local p1, "error":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCodeValue()I

    move-result v1

    const/16 v2, 0x1f8

    if-ne v1, v2, :cond_0

    .line 669
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 670
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "requiredBalance"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    iget v2, v2, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mTotalPrice:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 671
    const-class v1, Lcom/vkcoffee/android/fragments/VotesFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 675
    .end local v0    # "args":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 674
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCode()I

    move-result v2

    iget-object v3, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/api/APIUtils;->showErrorToast(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public success(Lcom/vkcoffee/android/api/gifts/GiftsSend$Result;)V
    .locals 3
    .param p1, "result"    # Lcom/vkcoffee/android/api/gifts/GiftsSend$Result;

    .prologue
    .line 659
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mRecipients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    const v0, 0x7f0801fa

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 661
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    iget v1, v1, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mBalance:I

    iget v2, p1, Lcom/vkcoffee/android/api/gifts/GiftsSend$Result;->withdrawn_votes:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->notifyBalanceHasChanged(I)V

    .line 662
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mGift:Lcom/vkcoffee/android/api/models/CatalogedGift;

    iget-object v2, p1, Lcom/vkcoffee/android/api/gifts/GiftsSend$Result;->user_ids:[I

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->notifyGiftHasSent(Lcom/vkcoffee/android/api/models/CatalogedGift;[I)V

    .line 663
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$2;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 665
    :cond_0
    return-void

    .line 660
    :cond_1
    const v0, 0x7f0801ee

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/gifts/GiftsSend$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$2;->success(Lcom/vkcoffee/android/api/gifts/GiftsSend$Result;)V

    return-void
.end method

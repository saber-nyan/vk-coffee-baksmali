.class Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "GiftSendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$1;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    .line 77
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 79
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$1;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    const-string v1, "balance"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$1;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    iget v2, v2, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mBalance:I

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mBalance:I

    .line 80
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$1;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    const-string v1, "payment_required"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mPaymentRequired:Z

    .line 81
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$1;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    iget-boolean v0, v0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mPaymentRequired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$1;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    iget-boolean v0, v0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mActive:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$1;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    iput-boolean v3, v0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mPaymentRequired:Z

    .line 83
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$1;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->sendGift()V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$1;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->invalidateBalance()V

    .line 86
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$1;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->access$0(Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;)Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$1;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->access$0(Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;)Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;->notifyDataSetChanged()V

    .line 89
    :cond_1
    return-void
.end method

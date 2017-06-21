.class Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$7;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "ChatMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$7;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "mid"    # Ljava/lang/Integer;

    .prologue
    .line 490
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$7;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->access$700(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;->clearImage()V

    .line 491
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 487
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$7;->success(Ljava/lang/Integer;)V

    return-void
.end method

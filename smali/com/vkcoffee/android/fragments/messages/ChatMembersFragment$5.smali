.class Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$5;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "ChatMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->setChatTitle(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$5;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 3

    .prologue
    .line 423
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$5;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0800d4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 424
    return-void
.end method

.class Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$6;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "ChatMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->addUserToChat(Lcom/vkcoffee/android/UserProfile;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

.field final synthetic val$p:Lcom/vkcoffee/android/UserProfile;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;Landroid/content/Context;Lcom/vkcoffee/android/UserProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$6;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$6;->val$p:Lcom/vkcoffee/android/UserProfile;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 4
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 447
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCodeValue()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2

    .line 448
    const/4 v0, 0x0

    .line 449
    .local v0, "err":Ljava/lang/String;
    iget-object v1, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    const-string/jumbo v2, "already left"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 450
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$6;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    const v2, 0x7f0800c6

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 454
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 455
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$6;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080165

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08031e

    const/4 v3, 0x0

    .line 456
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 461
    .end local v0    # "err":Ljava/lang/String;
    :goto_1
    return-void

    .line 451
    .restart local v0    # "err":Ljava/lang/String;
    :cond_1
    iget-object v1, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    const-string/jumbo v2, "already in"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$6;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    const v2, 0x7f0800c5

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 460
    .end local v0    # "err":Ljava/lang/String;
    :cond_2
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/ResultlessCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    goto :goto_1
.end method

.method public success()V
    .locals 5

    .prologue
    .line 432
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$6;->val$p:Lcom/vkcoffee/android/UserProfile;

    if-nez v1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$6;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->reload()V

    .line 443
    :goto_0
    return-void

    .line 435
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/ChatUser;

    invoke-direct {v0}, Lcom/vkcoffee/android/ChatUser;-><init>()V

    .line 436
    .local v0, "cu":Lcom/vkcoffee/android/ChatUser;
    new-instance v1, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v1}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    iput-object v1, v0, Lcom/vkcoffee/android/ChatUser;->inviter:Lcom/vkcoffee/android/UserProfile;

    .line 437
    iget-object v1, v0, Lcom/vkcoffee/android/ChatUser;->inviter:Lcom/vkcoffee/android/UserProfile;

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    iput v2, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 438
    iget-object v1, v0, Lcom/vkcoffee/android/ChatUser;->inviter:Lcom/vkcoffee/android/UserProfile;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$6;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "username"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 439
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$6;->val$p:Lcom/vkcoffee/android/UserProfile;

    iput-object v1, v0, Lcom/vkcoffee/android/ChatUser;->user:Lcom/vkcoffee/android/UserProfile;

    .line 440
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$6;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->access$600(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->addChatUser(Lcom/vkcoffee/android/ChatUser;)V

    .line 441
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$6;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->updateList()V

    goto :goto_0
.end method

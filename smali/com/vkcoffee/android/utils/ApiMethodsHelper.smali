.class public Lcom/vkcoffee/android/utils/ApiMethodsHelper;
.super Ljava/lang/Object;
.source "ApiMethodsHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addUserToChat(Landroid/content/Context;ILcom/vkcoffee/android/UserProfile;ILcom/vkcoffee/android/api/Callback;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "p"    # Lcom/vkcoffee/android/UserProfile;
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/vkcoffee/android/UserProfile;",
            "I",
            "Lcom/vkcoffee/android/api/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p4, "callback":Lcom/vkcoffee/android/api/Callback;, "Lcom/vkcoffee/android/api/Callback<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/vkcoffee/android/api/messages/MessagesAddChatUser;

    if-nez p2, :cond_0

    .end local p3    # "uid":I
    :goto_0
    invoke-direct {v0, p1, p3}, Lcom/vkcoffee/android/api/messages/MessagesAddChatUser;-><init>(II)V

    invoke-virtual {v0, p4}, Lcom/vkcoffee/android/api/messages/MessagesAddChatUser;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 35
    return-void

    .line 34
    .restart local p3    # "uid":I
    :cond_0
    iget p3, p2, Lcom/vkcoffee/android/UserProfile;->uid:I

    goto :goto_0
.end method

.method public static clearHistory(Landroid/content/Context;ILjava/lang/Object;Lcom/vkcoffee/android/functions/VoidF2;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "ITT;",
            "Lcom/vkcoffee/android/functions/VoidF2",
            "<",
            "Ljava/lang/Integer;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "object":Ljava/lang/Object;, "TT;"
    .local p3, "f":Lcom/vkcoffee/android/functions/VoidF2;, "Lcom/vkcoffee/android/functions/VoidF2<Ljava/lang/Integer;TT;>;"
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800f4

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800dc

    .line 22
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805c0

    invoke-static {p1, p0, p3, p2}, Lcom/vkcoffee/android/utils/ApiMethodsHelper$$Lambda$1;->lambdaFactory$(ILandroid/content/Context;Lcom/vkcoffee/android/functions/VoidF2;Ljava/lang/Object;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802d7

    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 31
    return-void
.end method

.method static synthetic lambda$clearHistory$720(ILandroid/content/Context;Lcom/vkcoffee/android/functions/VoidF2;Ljava/lang/Object;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p4, "dialog"    # Landroid/content/DialogInterface;
    .param p5, "which"    # I

    .prologue
    .line 24
    new-instance v0, Lcom/vkcoffee/android/api/messages/MessagesDeleteDialog;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/api/messages/MessagesDeleteDialog;-><init>(I)V

    new-instance v1, Lcom/vkcoffee/android/utils/ApiMethodsHelper$1;

    invoke-direct {v1, p1, p2, p0, p3}, Lcom/vkcoffee/android/utils/ApiMethodsHelper$1;-><init>(Landroid/content/Context;Lcom/vkcoffee/android/functions/VoidF2;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/messages/MessagesDeleteDialog;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 29
    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 30
    return-void
.end method

.method static synthetic lambda$removeUserFromChat$721(IILandroid/content/Context;Lcom/vkcoffee/android/functions/VoidF1;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p4, "dialog"    # Landroid/content/DialogInterface;
    .param p5, "which"    # I

    .prologue
    .line 41
    new-instance v0, Lcom/vkcoffee/android/api/messages/MessagesRemoveChatUser;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/api/messages/MessagesRemoveChatUser;-><init>(II)V

    new-instance v1, Lcom/vkcoffee/android/utils/ApiMethodsHelper$2;

    invoke-direct {v1, p2, p3, p1}, Lcom/vkcoffee/android/utils/ApiMethodsHelper$2;-><init>(Landroid/content/Context;Lcom/vkcoffee/android/functions/VoidF1;I)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/messages/MessagesRemoveChatUser;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 48
    invoke-virtual {v0, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 49
    return-void
.end method

.method public static removeUserFromChat(Landroid/content/Context;IILcom/vkcoffee/android/functions/VoidF1;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "chatId"    # I
    .param p2, "uid"    # I
    .param p3    # Lcom/vkcoffee/android/functions/VoidF1;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p3, "f":Lcom/vkcoffee/android/functions/VoidF1;, "Lcom/vkcoffee/android/functions/VoidF1<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800f4

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v0, Lcom/vkcoffee/android/Global;->uid:I

    if-ne p2, v0, :cond_0

    const v0, 0x7f0800c8

    .line 39
    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805c0

    invoke-static {p1, p2, p0, p3}, Lcom/vkcoffee/android/utils/ApiMethodsHelper$$Lambda$2;->lambdaFactory$(IILandroid/content/Context;Lcom/vkcoffee/android/functions/VoidF1;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802d7

    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 51
    return-void

    .line 38
    :cond_0
    const v0, 0x7f08011e

    goto :goto_0
.end method

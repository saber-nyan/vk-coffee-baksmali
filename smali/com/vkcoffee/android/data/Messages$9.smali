.class final Lcom/vkcoffee/android/data/Messages$9;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/data/Messages;->uploadDone(ILcom/vkcoffee/android/attachments/Attachment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$m:Lcom/vkcoffee/android/Message;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/Message;)V
    .locals 0

    .prologue
    .line 973
    iput-object p1, p0, Lcom/vkcoffee/android/data/Messages$9;->val$m:Lcom/vkcoffee/android/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 7
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 989
    iget-object v1, p0, Lcom/vkcoffee/android/data/Messages$9;->val$m:Lcom/vkcoffee/android/Message;

    invoke-static {v1}, Lcom/vkcoffee/android/data/Messages;->access$100(Lcom/vkcoffee/android/Message;)V

    .line 990
    iget-object v1, p0, Lcom/vkcoffee/android/data/Messages$9;->val$m:Lcom/vkcoffee/android/Message;

    iput-boolean v5, v1, Lcom/vkcoffee/android/Message;->sendFailed:Z

    .line 991
    iget-object v1, p0, Lcom/vkcoffee/android/data/Messages$9;->val$m:Lcom/vkcoffee/android/Message;

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v6, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "userphoto"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v6, v2}, Lcom/vkcoffee/android/data/Messages;->add(Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/UserProfile;Ljava/lang/String;)V

    .line 992
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.MESSAGE_SEND_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 993
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/vkcoffee/android/data/Messages$9;->val$m:Lcom/vkcoffee/android/Message;

    iget v2, v2, Lcom/vkcoffee/android/Message;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 994
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCodeValue()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 995
    const-string/jumbo v1, "privacy"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 997
    :cond_0
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 998
    sget-object v1, Lcom/vkcoffee/android/data/Messages;->sendLock:Lcom/vkcoffee/android/background/CountingLock;

    invoke-virtual {v1}, Lcom/vkcoffee/android/background/CountingLock;->decrement()V

    .line 999
    return-void
.end method

.method public success(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "mid"    # Ljava/lang/Integer;

    .prologue
    .line 976
    iget-object v1, p0, Lcom/vkcoffee/android/data/Messages$9;->val$m:Lcom/vkcoffee/android/Message;

    iget v1, v1, Lcom/vkcoffee/android/Message;->id:I

    iget-object v2, p0, Lcom/vkcoffee/android/data/Messages$9;->val$m:Lcom/vkcoffee/android/Message;

    iget v2, v2, Lcom/vkcoffee/android/Message;->peer:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/cache/Cache;->setMessageID(III)V

    .line 977
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.MESSAGE_ID_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 978
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "oldID"

    iget-object v2, p0, Lcom/vkcoffee/android/data/Messages$9;->val$m:Lcom/vkcoffee/android/Message;

    iget v2, v2, Lcom/vkcoffee/android/Message;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 979
    const-string/jumbo v1, "newID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 980
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 981
    iget-object v1, p0, Lcom/vkcoffee/android/data/Messages$9;->val$m:Lcom/vkcoffee/android/Message;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/vkcoffee/android/Message;->id:I

    .line 982
    iget-object v1, p0, Lcom/vkcoffee/android/data/Messages$9;->val$m:Lcom/vkcoffee/android/Message;

    invoke-static {v1}, Lcom/vkcoffee/android/data/Messages;->access$100(Lcom/vkcoffee/android/Message;)V

    .line 983
    iget-object v1, p0, Lcom/vkcoffee/android/data/Messages$9;->val$m:Lcom/vkcoffee/android/Message;

    invoke-static {v1}, Lcom/vkcoffee/android/data/Messages;->access$200(Lcom/vkcoffee/android/Message;)V

    .line 984
    sget-object v1, Lcom/vkcoffee/android/data/Messages;->sendLock:Lcom/vkcoffee/android/background/CountingLock;

    invoke-virtual {v1}, Lcom/vkcoffee/android/background/CountingLock;->decrement()V

    .line 985
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 973
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/data/Messages$9;->success(Ljava/lang/Integer;)V

    return-void
.end method

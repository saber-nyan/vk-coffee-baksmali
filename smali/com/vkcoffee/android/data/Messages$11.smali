.class final Lcom/vkcoffee/android/data/Messages$11;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/data/Messages;->markAsRead(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/vkcoffee/android/data/Messages$11;->val$ids:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 5

    .prologue
    .line 1148
    iget-object v2, p0, Lcom/vkcoffee/android/data/Messages$11;->val$ids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1149
    .local v0, "id":I
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.vkcoffee.android.MESSAGE_RSTATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1150
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "msg_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1151
    const-string/jumbo v2, "read_state"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1152
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v4, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v2, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 1154
    .end local v0    # "id":I
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

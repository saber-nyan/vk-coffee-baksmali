.class Lcom/vkcoffee/android/ConfirmActionBroadcastReceiver$1;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "ConfirmActionBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ConfirmActionBroadcastReceiver;->sendRequest(ZLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ConfirmActionBroadcastReceiver;

.field final synthetic val$confirm:Z

.field final synthetic val$hash:Ljava/lang/String;

.field final synthetic val$retry:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ConfirmActionBroadcastReceiver;Landroid/content/Context;IZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ConfirmActionBroadcastReceiver;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/vkcoffee/android/ConfirmActionBroadcastReceiver$1;->this$0:Lcom/vkcoffee/android/ConfirmActionBroadcastReceiver;

    iput p3, p0, Lcom/vkcoffee/android/ConfirmActionBroadcastReceiver$1;->val$retry:I

    iput-boolean p4, p0, Lcom/vkcoffee/android/ConfirmActionBroadcastReceiver$1;->val$confirm:Z

    iput-object p5, p0, Lcom/vkcoffee/android/ConfirmActionBroadcastReceiver$1;->val$hash:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 5
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCodeValue()I

    move-result v0

    .line 66
    .local v0, "errorCode":I
    if-ltz v0, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/vkcoffee/android/ConfirmActionBroadcastReceiver$1;->val$retry:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 68
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/ConfirmActionBroadcastReceiver$1;->this$0:Lcom/vkcoffee/android/ConfirmActionBroadcastReceiver;

    iget-boolean v2, p0, Lcom/vkcoffee/android/ConfirmActionBroadcastReceiver$1;->val$confirm:Z

    iget-object v3, p0, Lcom/vkcoffee/android/ConfirmActionBroadcastReceiver$1;->val$hash:Ljava/lang/String;

    iget v4, p0, Lcom/vkcoffee/android/ConfirmActionBroadcastReceiver$1;->val$retry:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/vkcoffee/android/ConfirmActionBroadcastReceiver;->access$000(Lcom/vkcoffee/android/ConfirmActionBroadcastReceiver;ZLjava/lang/String;I)V

    .line 73
    :cond_1
    return-void

    .line 69
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public success()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.class Lcom/vkcoffee/android/background/AsyncTask$Handler;
.super Landroid/os/Handler;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/background/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Handler"
.end annotation


# static fields
.field static final MESSAGE_CANCEL:I = 0x4

.field static final MESSAGE_ERROR:I = 0x3

.field static final MESSAGE_POST_EXECUTE:I = 0x5

.field static final MESSAGE_PRE_EXECUTE:I = 0x1

.field static final MESSAGE_PROGRESS:I = 0x2


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 200
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 201
    return-void
.end method


# virtual methods
.method dispatchCancel(Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;)V
    .locals 1
    .param p1, "result"    # Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;

    .prologue
    .line 216
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/vkcoffee/android/background/AsyncTask$Handler;->sendMessage(Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;I)V

    .line 217
    return-void
.end method

.method dispatchError(Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;)V
    .locals 1
    .param p1, "result"    # Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;

    .prologue
    .line 212
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/vkcoffee/android/background/AsyncTask$Handler;->sendMessage(Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;I)V

    .line 213
    return-void
.end method

.method dispatchPostExecute(Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;)V
    .locals 1
    .param p1, "result"    # Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;

    .prologue
    .line 220
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/vkcoffee/android/background/AsyncTask$Handler;->sendMessage(Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;I)V

    .line 221
    return-void
.end method

.method dispatchPreExecute(Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;)V
    .locals 1
    .param p1, "result"    # Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;

    .prologue
    .line 204
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/vkcoffee/android/background/AsyncTask$Handler;->sendMessage(Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;I)V

    .line 205
    return-void
.end method

.method dispatchProgressUpdate(Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;)V
    .locals 1
    .param p1, "result"    # Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;

    .prologue
    .line 208
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/vkcoffee/android/background/AsyncTask$Handler;->sendMessage(Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;I)V

    .line 209
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 232
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;

    .line 233
    .local v0, "obj":Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;
    if-eqz v0, :cond_0

    .line 234
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 236
    :pswitch_0
    iget-object v1, v0, Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;->task:Lcom/vkcoffee/android/background/AsyncTask;

    invoke-virtual {v1}, Lcom/vkcoffee/android/background/AsyncTask;->onPreExecute()V

    goto :goto_0

    .line 239
    :pswitch_1
    iget-object v1, v0, Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;->task:Lcom/vkcoffee/android/background/AsyncTask;

    iget-object v2, v0, Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;->progress:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/background/AsyncTask;->onProgressUpdate(Ljava/lang/Object;)V

    goto :goto_0

    .line 242
    :pswitch_2
    iget-object v1, v0, Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;->task:Lcom/vkcoffee/android/background/AsyncTask;

    iget-object v2, v0, Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;->t:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/background/AsyncTask;->onError(Ljava/lang/Throwable;)V

    .line 243
    iget-object v1, v0, Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;->task:Lcom/vkcoffee/android/background/AsyncTask;

    invoke-static {v1}, Lcom/vkcoffee/android/background/AsyncTask;->access$000(Lcom/vkcoffee/android/background/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 246
    :pswitch_3
    iget-object v1, v0, Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;->task:Lcom/vkcoffee/android/background/AsyncTask;

    iget-object v2, v0, Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/background/AsyncTask;->onCanceled(Ljava/lang/Object;)V

    .line 247
    iget-object v1, v0, Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;->task:Lcom/vkcoffee/android/background/AsyncTask;

    invoke-static {v1}, Lcom/vkcoffee/android/background/AsyncTask;->access$000(Lcom/vkcoffee/android/background/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 250
    :pswitch_4
    iget-object v1, v0, Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;->task:Lcom/vkcoffee/android/background/AsyncTask;

    iget-object v2, v0, Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/background/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 251
    iget-object v1, v0, Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;->task:Lcom/vkcoffee/android/background/AsyncTask;

    invoke-static {v1}, Lcom/vkcoffee/android/background/AsyncTask;->access$000(Lcom/vkcoffee/android/background/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method sendMessage(Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;I)V
    .locals 1
    .param p1, "result"    # Lcom/vkcoffee/android/background/AsyncTask$AsyncResult;
    .param p2, "code"    # I

    .prologue
    .line 224
    invoke-virtual {p0, p2}, Lcom/vkcoffee/android/background/AsyncTask$Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 225
    .local v0, "m":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 226
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 227
    return-void
.end method

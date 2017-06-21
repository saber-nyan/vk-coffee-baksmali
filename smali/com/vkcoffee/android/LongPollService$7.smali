.class Lcom/vkcoffee/android/LongPollService$7;
.super Ljava/lang/Object;
.source "LongPollService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/LongPollService;->processTyping(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/LongPollService;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/LongPollService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/LongPollService;

    .prologue
    .line 877
    iput-object p1, p0, Lcom/vkcoffee/android/LongPollService$7;->this$0:Lcom/vkcoffee/android/LongPollService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 881
    :try_start_0
    iget-object v9, p0, Lcom/vkcoffee/android/LongPollService$7;->this$0:Lcom/vkcoffee/android/LongPollService;

    invoke-static {v9}, Lcom/vkcoffee/android/LongPollService;->access$500(Lcom/vkcoffee/android/LongPollService;)Ljava/util/concurrent/Semaphore;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    :goto_0
    iget-object v9, p0, Lcom/vkcoffee/android/LongPollService$7;->this$0:Lcom/vkcoffee/android/LongPollService;

    invoke-static {v9}, Lcom/vkcoffee/android/LongPollService;->access$600(Lcom/vkcoffee/android/LongPollService;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 886
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 887
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 888
    .local v2, "k":J
    iget-object v9, p0, Lcom/vkcoffee/android/LongPollService$7;->this$0:Lcom/vkcoffee/android/LongPollService;

    invoke-static {v9}, Lcom/vkcoffee/android/LongPollService;->access$600(Lcom/vkcoffee/android/LongPollService;)Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 889
    .local v6, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    const-wide/16 v12, 0x1b58

    cmp-long v9, v10, v12

    if-lez v9, :cond_0

    .line 890
    long-to-int v4, v2

    .line 891
    .local v4, "peerID":I
    const/16 v9, 0x20

    shr-long v10, v2, v9

    long-to-int v5, v10

    .line 892
    .local v5, "userID":I
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v9, "com.vkcoffee.android.TYPING"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 893
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v9, "uid"

    invoke-virtual {v0, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 894
    const-string/jumbo v9, "user"

    invoke-virtual {v0, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 895
    const-string/jumbo v9, "stop"

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 896
    iget-object v9, p0, Lcom/vkcoffee/android/LongPollService$7;->this$0:Lcom/vkcoffee/android/LongPollService;

    const-string/jumbo v10, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v9, v0, v10}, Lcom/vkcoffee/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 897
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 882
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v2    # "k":J
    .end local v4    # "peerID":I
    .end local v5    # "userID":I
    .end local v6    # "time":J
    :catch_0
    move-exception v8

    .line 883
    .local v8, "x":Ljava/lang/Exception;
    invoke-static {v8}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0

    .line 900
    .end local v8    # "x":Ljava/lang/Exception;
    .restart local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_1
    iget-object v9, p0, Lcom/vkcoffee/android/LongPollService$7;->this$0:Lcom/vkcoffee/android/LongPollService;

    invoke-static {v9}, Lcom/vkcoffee/android/LongPollService;->access$500(Lcom/vkcoffee/android/LongPollService;)Ljava/util/concurrent/Semaphore;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/Semaphore;->release()V

    .line 901
    return-void
.end method

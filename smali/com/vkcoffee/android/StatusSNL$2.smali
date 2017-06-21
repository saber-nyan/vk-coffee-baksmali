.class Lcom/vkcoffee/android/StatusSNL$2;
.super Ljava/lang/Object;
.source "StatusSNL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/StatusSNL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/StatusSNL;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/StatusSNL;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/StatusSNL$2;->this$0:Lcom/vkcoffee/android/StatusSNL;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 98
    monitor-enter p0

    .line 99
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/StatusSNL$2;->this$0:Lcom/vkcoffee/android/StatusSNL;

    invoke-static {v1}, Lcom/vkcoffee/android/StatusSNL;->access$0(Lcom/vkcoffee/android/StatusSNL;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    monitor-exit p0

    .line 128
    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/StatusSNL$2;->this$0:Lcom/vkcoffee/android/StatusSNL;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkcoffee/android/StatusSNL;->access$1(Lcom/vkcoffee/android/StatusSNL;Z)V

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u0412\u0440\u0435\u043c\u044f: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v2

    invoke-static {v2}, Lcom/vkcoffee/android/TimeUtils;->time(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "StatusSNL"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "status"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "StatusSNL"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "prevStatus"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/StatusSNL;->setStatus(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :try_start_1
    invoke-static {}, Lcom/vkcoffee/android/StatusSNL;->access$2()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/vkcoffee/android/StatusSNL$2;->this$0:Lcom/vkcoffee/android/StatusSNL;

    invoke-static {v1}, Lcom/vkcoffee/android/StatusSNL;->access$4(Lcom/vkcoffee/android/StatusSNL;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 116
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/vkcoffee/android/StatusSNL;->access$5(Z)V

    .line 117
    iget-object v1, p0, Lcom/vkcoffee/android/StatusSNL$2;->this$0:Lcom/vkcoffee/android/StatusSNL;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/vkcoffee/android/StatusSNL;->access$1(Lcom/vkcoffee/android/StatusSNL;Z)V

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 103
    :cond_1
    :try_start_3
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "StatusSNL"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "status"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    goto :goto_1

    .line 110
    :cond_2
    :try_start_4
    iget-object v1, p0, Lcom/vkcoffee/android/StatusSNL$2;->this$0:Lcom/vkcoffee/android/StatusSNL;

    invoke-static {v1}, Lcom/vkcoffee/android/StatusSNL;->access$3(Lcom/vkcoffee/android/StatusSNL;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_5
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "errTime"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 120
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_3
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/vkcoffee/android/StatusSNL;->access$5(Z)V

    .line 121
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v2, "StatusSNL"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "prevStatus"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/StatusSNL;->setStatus(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/vkcoffee/android/StatusSNL$2;->this$0:Lcom/vkcoffee/android/StatusSNL;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkcoffee/android/StatusSNL;->access$1(Lcom/vkcoffee/android/StatusSNL;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

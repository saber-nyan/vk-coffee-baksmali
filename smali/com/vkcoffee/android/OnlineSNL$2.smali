.class Lcom/vkcoffee/android/OnlineSNL$2;
.super Ljava/lang/Object;
.source "OnlineSNL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/OnlineSNL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/OnlineSNL;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/OnlineSNL;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/OnlineSNL$2;->this$0:Lcom/vkcoffee/android/OnlineSNL;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 70
    monitor-enter p0

    .line 71
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/OnlineSNL$2;->this$0:Lcom/vkcoffee/android/OnlineSNL;

    invoke-static {v1}, Lcom/vkcoffee/android/OnlineSNL;->access$0(Lcom/vkcoffee/android/OnlineSNL;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    monitor-exit p0

    .line 107
    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/OnlineSNL$2;->this$0:Lcom/vkcoffee/android/OnlineSNL;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkcoffee/android/OnlineSNL;->access$1(Lcom/vkcoffee/android/OnlineSNL;Z)V

    .line 75
    invoke-static {}, Lcom/vkcoffee/android/OnlineSNL;->access$2()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-static {}, Lcom/vkcoffee/android/OnlineSNL;->setOnline()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/vkcoffee/android/OnlineSNL;->access$2()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    const-wide/16 v2, 0x3a98

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/vkcoffee/android/OnlineSNL$2;->this$0:Lcom/vkcoffee/android/OnlineSNL;

    invoke-static {v1}, Lcom/vkcoffee/android/OnlineSNL;->access$4(Lcom/vkcoffee/android/OnlineSNL;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 97
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/vkcoffee/android/OnlineSNL;->access$5(Z)V

    .line 98
    iget-object v1, p0, Lcom/vkcoffee/android/OnlineSNL$2;->this$0:Lcom/vkcoffee/android/OnlineSNL;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/vkcoffee/android/OnlineSNL;->access$1(Lcom/vkcoffee/android/OnlineSNL;Z)V

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 79
    :cond_1
    :try_start_3
    invoke-static {}, Lcom/vkcoffee/android/OnlineSNL;->setOffline()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 86
    :cond_2
    :try_start_4
    invoke-static {}, Lcom/vkcoffee/android/OnlineSNL;->access$3()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 87
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 92
    :catch_0
    move-exception v0

    .line 93
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
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 89
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_3
    const-wide/16 v2, 0x1388

    :try_start_6
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 101
    :cond_4
    const/4 v1, 0x0

    :try_start_7
    invoke-static {v1}, Lcom/vkcoffee/android/OnlineSNL;->access$5(Z)V

    .line 102
    iget-object v1, p0, Lcom/vkcoffee/android/OnlineSNL$2;->this$0:Lcom/vkcoffee/android/OnlineSNL;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkcoffee/android/OnlineSNL;->access$1(Lcom/vkcoffee/android/OnlineSNL;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0
.end method

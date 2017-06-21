.class Lcom/vkcoffee/android/CrazyTypingSNL$2;
.super Ljava/lang/Object;
.source "CrazyTypingSNL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/CrazyTypingSNL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/CrazyTypingSNL;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/CrazyTypingSNL;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/CrazyTypingSNL$2;->this$0:Lcom/vkcoffee/android/CrazyTypingSNL;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 82
    monitor-enter p0

    .line 83
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/vkcoffee/android/CrazyTypingSNL$2;->this$0:Lcom/vkcoffee/android/CrazyTypingSNL;

    invoke-static {v3}, Lcom/vkcoffee/android/CrazyTypingSNL;->access$0(Lcom/vkcoffee/android/CrazyTypingSNL;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 82
    monitor-exit p0

    .line 122
    return-void

    .line 84
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/CrazyTypingSNL$2;->this$0:Lcom/vkcoffee/android/CrazyTypingSNL;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/vkcoffee/android/CrazyTypingSNL;->access$1(Lcom/vkcoffee/android/CrazyTypingSNL;Z)V

    .line 89
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "crazyTyping"

    const-string v6, ","

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v4

    :goto_1
    if-lt v3, v6, :cond_1

    .line 102
    :try_start_1
    invoke-static {}, Lcom/vkcoffee/android/CrazyTypingSNL;->access$2()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 103
    const-wide/16 v6, 0x3e8

    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :goto_2
    :try_start_2
    iget-object v3, p0, Lcom/vkcoffee/android/CrazyTypingSNL$2;->this$0:Lcom/vkcoffee/android/CrazyTypingSNL;

    invoke-static {v3}, Lcom/vkcoffee/android/CrazyTypingSNL;->access$3(Lcom/vkcoffee/android/CrazyTypingSNL;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 112
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/vkcoffee/android/CrazyTypingSNL;->access$4(Z)V

    .line 113
    iget-object v3, p0, Lcom/vkcoffee/android/CrazyTypingSNL$2;->this$0:Lcom/vkcoffee/android/CrazyTypingSNL;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/vkcoffee/android/CrazyTypingSNL;->access$1(Lcom/vkcoffee/android/CrazyTypingSNL;Z)V

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 89
    :cond_1
    :try_start_3
    aget-object v2, v5, v3

    .line 90
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 91
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Lcom/vkcoffee/android/CrazyTypingSNL;->goFuckingType(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    const-wide/16 v8, 0x3e8

    :try_start_4
    invoke-virtual {p0, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 94
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "REQ"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 89
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 95
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 105
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "s":Ljava/lang/String;
    :cond_3
    :try_start_6
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "WAIT"

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    const-wide/16 v6, 0x3e8

    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 108
    :catch_1
    move-exception v1

    .line 109
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_7
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "errTime"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 116
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :cond_4
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/vkcoffee/android/CrazyTypingSNL;->access$4(Z)V

    .line 117
    iget-object v3, p0, Lcom/vkcoffee/android/CrazyTypingSNL$2;->this$0:Lcom/vkcoffee/android/CrazyTypingSNL;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/vkcoffee/android/CrazyTypingSNL;->access$1(Lcom/vkcoffee/android/CrazyTypingSNL;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method

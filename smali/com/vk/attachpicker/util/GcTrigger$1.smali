.class final Lcom/vk/attachpicker/util/GcTrigger$1;
.super Ljava/lang/Object;
.source "GcTrigger.java"

# interfaces
.implements Lcom/vk/attachpicker/util/GcTrigger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/util/GcTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private enqueueReferences()V
    .locals 4

    .prologue
    .line 20
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method


# virtual methods
.method public runGc()V
    .locals 1

    .prologue
    .line 11
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 12
    invoke-direct {p0}, Lcom/vk/attachpicker/util/GcTrigger$1;->enqueueReferences()V

    .line 13
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 14
    return-void
.end method

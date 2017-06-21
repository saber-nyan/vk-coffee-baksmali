.class public Lcom/vkcoffee/android/GoogleNow;
.super Ljava/lang/Object;
.source "GoogleNow.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static revokeRetryCallback(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "res"    # Lorg/json/JSONObject;
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 53
    invoke-static {}, Lcom/vkcoffee/android/GoogleNow;->updateTokenAsync()V

    .line 54
    return-void
.end method

.method public static updateTokenAsync()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkcoffee/android/GoogleNow$1;

    invoke-direct {v1}, Lcom/vkcoffee/android/GoogleNow$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 49
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 50
    return-void
.end method

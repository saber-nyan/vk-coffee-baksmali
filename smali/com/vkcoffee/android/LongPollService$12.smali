.class Lcom/vkcoffee/android/LongPollService$12;
.super Ljava/lang/Object;
.source "LongPollService.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/LongPollService;->sendOffline()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/LongPollService;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/LongPollService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/LongPollService;

    .prologue
    .line 1763
    iput-object p1, p0, Lcom/vkcoffee/android/LongPollService$12;->this$0:Lcom/vkcoffee/android/LongPollService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 0
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 1770
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1763
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/LongPollService$12;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "j"    # Lorg/json/JSONObject;

    .prologue
    .line 1765
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vkcoffee/android/data/Analytics;->clear(Z)V

    .line 1766
    return-void
.end method

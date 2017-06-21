.class Lcom/vkcoffee/android/LongPollService$11;
.super Ljava/lang/Object;
.source "LongPollService.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/LongPollService;->sendOnline()V
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
    .line 1743
    iput-object p1, p0, Lcom/vkcoffee/android/LongPollService$11;->this$0:Lcom/vkcoffee/android/LongPollService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/vkcoffee/android/LongPollService$11;->this$0:Lcom/vkcoffee/android/LongPollService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/LongPollService;->access$902(Lcom/vkcoffee/android/LongPollService;Z)Z

    .line 1752
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1743
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/LongPollService$11;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "j"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 1745
    iget-object v0, p0, Lcom/vkcoffee/android/LongPollService$11;->this$0:Lcom/vkcoffee/android/LongPollService;

    invoke-static {v0, v2}, Lcom/vkcoffee/android/LongPollService;->access$902(Lcom/vkcoffee/android/LongPollService;Z)Z

    .line 1746
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "push_counter"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1747
    invoke-static {v2}, Lcom/vkcoffee/android/data/Analytics;->clear(Z)V

    .line 1748
    return-void
.end method

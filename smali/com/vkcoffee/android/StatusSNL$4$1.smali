.class Lcom/vkcoffee/android/StatusSNL$4$1;
.super Ljava/lang/Object;
.source "StatusSNL.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/StatusSNL$4;->run()V
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
        "Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/StatusSNL$4;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/StatusSNL$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/StatusSNL$4$1;->this$1:Lcom/vkcoffee/android/StatusSNL$4;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2

    .prologue
    .line 292
    .local p1, "err":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    const-string v0, "vk"

    const-string v1, "Get user info FAILED!"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;)V
    .locals 3
    .param p1, "r"    # Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;

    .prologue
    .line 283
    const-string v0, "GET_PREV_STATUS"

    iget-object v1, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->status:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "StatusSNL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 285
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 286
    const-string v1, "prevStatus"

    iget-object v2, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->status:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 287
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 289
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/StatusSNL$4$1;->success(Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;)V

    return-void
.end method

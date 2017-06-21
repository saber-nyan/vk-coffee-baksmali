.class Lcom/vkcoffee/android/MainActivity$2$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/MainActivity$2;->run()V
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
.field final synthetic this$1:Lcom/vkcoffee/android/MainActivity$2;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/MainActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/MainActivity$2$1;->this$1:Lcom/vkcoffee/android/MainActivity$2;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2

    .prologue
    .line 189
    .local p1, "err":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    const-string v0, "vk"

    const-string v1, "Get user info FAILED!"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;)V
    .locals 2
    .param p1, "r"    # Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;

    .prologue
    .line 179
    const-string v0, "GET_PREV_STATUS"

    iget-object v1, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->status:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->status:Ljava/lang/String;

    const-string v1, "\u0412\u0440\u0435\u043c\u044f: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-static {}, Lcom/vkcoffee/android/StatusSNL;->returnPrevStatus()V

    .line 186
    :cond_0
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/MainActivity$2$1;->success(Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;)V

    return-void
.end method

.class public Lcom/vkcoffee/android/api/account/AccountSetSilenceMode;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "AccountSetSilenceMode.java"


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "peer"    # I
    .param p2, "time"    # I

    .prologue
    .line 15
    const-string/jumbo v0, "account.setSilenceMode"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    const-string/jumbo v0, "time"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7fffffff

    if-ne p2, v2, :cond_0

    const/4 p2, -0x1

    .end local p2    # "time":I
    :cond_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/account/AccountSetSilenceMode;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    const-string/jumbo v0, "peer_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/account/AccountSetSilenceMode;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 18
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 3
    .param p1, "peer"    # I
    .param p2, "time"    # I
    .param p3, "mute"    # Z

    .prologue
    .line 8
    const-string/jumbo v0, "account.setSilenceMode"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 9
    const-string/jumbo v0, "time"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7fffffff

    if-ne p2, v2, :cond_0

    const/4 p2, -0x1

    .end local p2    # "time":I
    :cond_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/account/AccountSetSilenceMode;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 10
    const-string/jumbo v1, "sound"

    if-eqz p3, :cond_1

    const-string/jumbo v0, "0"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/api/account/AccountSetSilenceMode;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 11
    const-string/jumbo v0, "peer_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/account/AccountSetSilenceMode;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 12
    return-void

    .line 10
    :cond_1
    const-string/jumbo v0, "1"

    goto :goto_0
.end method

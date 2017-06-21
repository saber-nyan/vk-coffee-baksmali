.class public Lcom/vkcoffee/android/apicoffee/CoffeeMarkAsImp;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "CoffeeMarkAsImp.java"


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "param"    # I
    .param p2, "imp"    # I

    .prologue
    .line 7
    const-string v0, "messages.markAsImportant"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v0, "message_ids"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/apicoffee/CoffeeMarkAsImp;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string v1, "important"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 9
    return-void
.end method

.class public Lcom/vkcoffee/android/api/apps/AppsDeleteRequest;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "AppsDeleteRequest.java"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v0, "apps.deleteRequest"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    const-string/jumbo v0, "request_ids"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/apps/AppsDeleteRequest;->params(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    return-void
.end method

.method public constructor <init>([I)V
    .locals 1
    .param p1, "ids"    # [I

    .prologue
    .line 10
    const-string/jumbo v0, "apps.deleteRequest"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 11
    const-string/jumbo v0, "request_ids"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/apps/AppsDeleteRequest;->params(Ljava/lang/CharSequence;[I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 12
    return-void
.end method

.class public Lcom/vkcoffee/android/api/store/StoreReorderProducts;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "StoreReorderProducts.java"


# direct methods
.method public constructor <init>(III)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "before"    # I
    .param p3, "after"    # I

    .prologue
    const/4 v2, -0x1

    .line 8
    const-string/jumbo v0, "store.reorderProducts"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 9
    const-string/jumbo v0, "product_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/store/StoreReorderProducts;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 10
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "stickers"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/store/StoreReorderProducts;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 11
    if-eq p2, v2, :cond_0

    .line 12
    const-string/jumbo v0, "before"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/store/StoreReorderProducts;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    :cond_0
    if-eq p3, v2, :cond_1

    .line 15
    const-string/jumbo v0, "after"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/store/StoreReorderProducts;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    :cond_1
    return-void
.end method

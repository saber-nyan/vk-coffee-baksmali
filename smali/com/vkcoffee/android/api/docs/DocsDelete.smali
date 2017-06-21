.class public Lcom/vkcoffee/android/api/docs/DocsDelete;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "DocsDelete.java"


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "did"    # I

    .prologue
    .line 8
    const-string/jumbo v0, "docs.delete"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 9
    const-string/jumbo v0, "oid"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/docs/DocsDelete;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "owner_id"

    invoke-virtual {v0, v1, p1}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 10
    const-string/jumbo v0, "did"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/docs/DocsDelete;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "doc_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 11
    return-void
.end method

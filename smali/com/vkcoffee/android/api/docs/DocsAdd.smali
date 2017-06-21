.class public Lcom/vkcoffee/android/api/docs/DocsAdd;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "DocsAdd.java"


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "did"    # I
    .param p3, "accessKey"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 11
    const-string/jumbo v0, "docs.add"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string/jumbo v0, "oid"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/docs/DocsAdd;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "owner_id"

    invoke-virtual {v0, v1, p1}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    const-string/jumbo v0, "did"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/docs/DocsAdd;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "doc_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    const-string/jumbo v0, "access_key"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/docs/DocsAdd;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    :cond_0
    return-void
.end method

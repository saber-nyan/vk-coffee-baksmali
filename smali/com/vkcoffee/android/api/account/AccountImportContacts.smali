.class public Lcom/vkcoffee/android/api/account/AccountImportContacts;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "AccountImportContacts.java"


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p2, "myId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 12
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "account.importContacts"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 13
    const-string/jumbo v0, "contacts"

    const-string/jumbo v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/account/AccountImportContacts;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 14
    if-eqz p2, :cond_0

    .line 15
    const-string/jumbo v0, "my_contact"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/account/AccountImportContacts;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    :cond_0
    return-void
.end method

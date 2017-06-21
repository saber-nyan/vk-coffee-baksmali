.class public Lcom/vkcoffee/android/api/groups/GroupsEdit;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "GroupsEdit.java"


# direct methods
.method public constructor <init>(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "groupID"    # I
    .param p2, "fields"    # Landroid/os/Bundle;

    .prologue
    .line 15
    const-string/jumbo v3, "execute.editGroupWithPlace"

    invoke-direct {p0, v3}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    const-string/jumbo v3, "group_id"

    invoke-virtual {p0, v3, p1}, Lcom/vkcoffee/android/api/groups/GroupsEdit;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 18
    .local v1, "ks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 19
    .local v0, "k":Ljava/lang/String;
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 20
    .local v2, "o":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/vkcoffee/android/api/groups/GroupsEdit;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0

    .line 24
    .end local v0    # "k":Ljava/lang/String;
    .end local v2    # "o":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.class Lcom/vkcoffee/android/api/groups/GroupsGetManagers$1;
.super Lcom/vkcoffee/android/data/Parser;
.source "GroupsGetManagers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/api/groups/GroupsGetManagers;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/data/VKList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/data/Parser",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/api/groups/GroupsGetManagers;

.field final synthetic val$contacts:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/api/groups/GroupsGetManagers;Landroid/util/SparseArray;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/api/groups/GroupsGetManagers;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/vkcoffee/android/api/groups/GroupsGetManagers$1;->this$0:Lcom/vkcoffee/android/api/groups/GroupsGetManagers;

    iput-object p2, p0, Lcom/vkcoffee/android/api/groups/GroupsGetManagers$1;->val$contacts:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/vkcoffee/android/data/Parser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/UserProfile;
    .locals 5
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/UserProfile;-><init>(Lorg/json/JSONObject;)V

    .line 46
    .local v0, "p":Lcom/vkcoffee/android/UserProfile;
    iget-object v1, v0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v2, "role"

    const-string/jumbo v3, "role"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/vkcoffee/android/api/groups/GroupsGetManagers$1;->val$contacts:Landroid/util/SparseArray;

    iget v2, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v1, v2}, Lcom/vkcoffee/android/utils/Utils;->containsKey(Landroid/util/SparseArray;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v2, v0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v3, "contact_title"

    iget-object v1, p0, Lcom/vkcoffee/android/api/groups/GroupsGetManagers$1;->val$contacts:Landroid/util/SparseArray;

    iget v4, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    return-object v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/groups/GroupsGetManagers$1;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/UserProfile;

    move-result-object v0

    return-object v0
.end method

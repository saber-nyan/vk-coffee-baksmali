.class Lcom/vkcoffee/android/api/groups/GroupsGetInvites$1;
.super Lcom/vkcoffee/android/data/Parser;
.source "GroupsGetInvites.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/api/groups/GroupsGetInvites;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/data/Parser",
        "<",
        "Lcom/vkcoffee/android/api/GroupInvitation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/api/groups/GroupsGetInvites;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/api/groups/GroupsGetInvites;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/api/groups/GroupsGetInvites;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/vkcoffee/android/api/groups/GroupsGetInvites$1;->this$0:Lcom/vkcoffee/android/api/groups/GroupsGetInvites;

    invoke-direct {p0}, Lcom/vkcoffee/android/data/Parser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/GroupInvitation;
    .locals 3
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lcom/vkcoffee/android/api/GroupInvitation;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/GroupInvitation;-><init>()V

    .line 30
    .local v0, "inv":Lcom/vkcoffee/android/api/GroupInvitation;
    new-instance v1, Lcom/vkcoffee/android/api/Group;

    invoke-direct {v1, p1}, Lcom/vkcoffee/android/api/Group;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, v0, Lcom/vkcoffee/android/api/GroupInvitation;->group:Lcom/vkcoffee/android/api/Group;

    .line 31
    const-string/jumbo v1, "members_count"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkcoffee/android/api/GroupInvitation;->size:I

    .line 32
    iget-object v1, p0, Lcom/vkcoffee/android/api/groups/GroupsGetInvites$1;->this$0:Lcom/vkcoffee/android/api/groups/GroupsGetInvites;

    invoke-static {v1}, Lcom/vkcoffee/android/api/groups/GroupsGetInvites;->access$000(Lcom/vkcoffee/android/api/groups/GroupsGetInvites;)Landroid/util/SparseArray;

    move-result-object v1

    const-string/jumbo v2, "invited_by"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    iput-object v1, v0, Lcom/vkcoffee/android/api/GroupInvitation;->inviter:Lcom/vkcoffee/android/UserProfile;

    .line 33
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
    .line 26
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/groups/GroupsGetInvites$1;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/GroupInvitation;

    move-result-object v0

    return-object v0
.end method

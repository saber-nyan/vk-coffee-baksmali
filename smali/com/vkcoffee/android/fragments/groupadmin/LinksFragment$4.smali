.class Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$4;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "LinksFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->addLink(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$desc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$4;->val$address:Ljava/lang/String;

    iput-object p4, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$4;->val$desc:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 217
    new-instance v0, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v0}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 218
    .local v0, "l":Lcom/vkcoffee/android/UserProfile;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$4;->val$address:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/UserProfile;->bdate:Ljava/lang/String;

    .line 219
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$4;->val$desc:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 220
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->access$000(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;Lcom/vkcoffee/android/UserProfile;Z)V

    .line 221
    return-void
.end method

.method public success(Lcom/vkcoffee/android/UserProfile;)V
    .locals 2
    .param p1, "link"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->access$500(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->updateList()V

    .line 211
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->access$602(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;Z)Z

    .line 212
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 206
    check-cast p1, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$4;->success(Lcom/vkcoffee/android/UserProfile;)V

    return-void
.end method

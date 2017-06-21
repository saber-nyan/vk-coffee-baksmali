.class Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$5;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "LinksFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->editLink(Lcom/vkcoffee/android/UserProfile;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

.field final synthetic val$descr:Ljava/lang/String;

.field final synthetic val$link:Lcom/vkcoffee/android/UserProfile;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;Landroid/content/Context;Lcom/vkcoffee/android/UserProfile;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$5;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$5;->val$link:Lcom/vkcoffee/android/UserProfile;

    iput-object p4, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$5;->val$descr:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    const/4 v2, 0x1

    .line 248
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/ResultlessCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 249
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$5;->val$link:Lcom/vkcoffee/android/UserProfile;

    iget v0, v0, Lcom/vkcoffee/android/UserProfile;->online:I

    if-ne v0, v2, :cond_0

    .line 250
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$5;->val$link:Lcom/vkcoffee/android/UserProfile;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$5;->val$descr:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$5;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$5;->val$link:Lcom/vkcoffee/android/UserProfile;

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->access$000(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;Lcom/vkcoffee/android/UserProfile;Z)V

    .line 255
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$5;->val$link:Lcom/vkcoffee/android/UserProfile;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$5;->val$descr:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    goto :goto_0
.end method

.method public success()V
    .locals 3

    .prologue
    .line 232
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$5;->val$link:Lcom/vkcoffee/android/UserProfile;

    iget v1, v1, Lcom/vkcoffee/android/UserProfile;->online:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 233
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$5;->val$link:Lcom/vkcoffee/android/UserProfile;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$5;->val$descr:Ljava/lang/String;

    iput-object v2, v1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 237
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$5;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->access$700(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$5;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->access$800(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    iget v1, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$5;->val$link:Lcom/vkcoffee/android/UserProfile;

    iget v2, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ne v1, v2, :cond_2

    .line 239
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$5;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->access$900(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$5;->val$link:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$5;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->updateList()V

    .line 244
    return-void

    .line 235
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$5;->val$link:Lcom/vkcoffee/android/UserProfile;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$5;->val$descr:Ljava/lang/String;

    iput-object v2, v1, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    goto :goto_0

    .line 237
    .restart local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

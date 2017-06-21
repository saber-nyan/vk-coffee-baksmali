.class Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$8;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "LinksFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->sendReorder(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$8;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    iput p3, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$8;->val$id:I

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 5
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 306
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/ResultlessCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 307
    const/4 v2, -0x1

    .line 308
    .local v2, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$8;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->access$1200(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 309
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$8;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->access$1300(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/UserProfile;

    iget v3, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    iget v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$8;->val$id:I

    if-ne v3, v4, :cond_1

    .line 310
    move v2, v0

    .line 314
    :cond_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 320
    :goto_1
    return-void

    .line 308
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_2
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$8;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->access$1400(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    .line 318
    .local v1, "link":Lcom/vkcoffee/android/UserProfile;
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$8;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->access$1600(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$8;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->access$1500(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;)I

    move-result v4

    invoke-virtual {v3, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 319
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$8;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->updateList()V

    goto :goto_1
.end method

.method public success()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment$8;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;->access$602(Lcom/vkcoffee/android/fragments/groupadmin/LinksFragment;Z)Z

    .line 302
    return-void
.end method

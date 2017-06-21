.class Lcom/vkcoffee/android/fragments/groups/GroupsFragment$4;
.super Ljava/lang/Object;
.source "GroupsFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->doLoadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/vkcoffee/android/api/Group;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2

    .prologue
    .line 318
    .local p1, "error":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->onError(Lme/grishka/appkit/api/ErrorResponse;)V

    .line 319
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$15(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 320
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$13(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 321
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$14(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;Lcom/vkcoffee/android/api/VKAPIRequest;)V

    .line 322
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$4;->success(Ljava/util/ArrayList;)V

    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/Group;>;"
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$6(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 296
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$6(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 297
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$8(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 298
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$9(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 299
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 300
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 308
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$5(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$8(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->setData(Ljava/util/ArrayList;)V

    .line 309
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$10(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Lcom/vkcoffee/android/fragments/groups/EventsFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$9(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$11(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->setData(Ljava/util/ArrayList;Z)V

    .line 310
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$2(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)V

    .line 311
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$12(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 312
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$13(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 313
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$14(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;Lcom/vkcoffee/android/api/VKAPIRequest;)V

    .line 314
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->dataLoaded()V

    .line 315
    return-void

    .line 301
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/Group;

    .line 302
    .local v0, "g":Lcom/vkcoffee/android/api/Group;
    iget v2, v0, Lcom/vkcoffee/android/api/Group;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 303
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$9(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 305
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groups/GroupsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment;->access$8(Lcom/vkcoffee/android/fragments/groups/GroupsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

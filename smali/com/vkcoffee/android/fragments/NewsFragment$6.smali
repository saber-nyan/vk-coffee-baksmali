.class Lcom/vkcoffee/android/fragments/NewsFragment$6;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "NewsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/NewsFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

.field final synthetic val$listId:I

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/NewsFragment;Landroid/app/Fragment;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/NewsFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 943
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/NewsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    iput p3, p0, Lcom/vkcoffee/android/fragments/NewsFragment$6;->val$offset:I

    iput p4, p0, Lcom/vkcoffee/android/fragments/NewsFragment$6;->val$listId:I

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 0
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 967
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 969
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;)V
    .locals 5
    .param p1, "news"    # Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 946
    iget v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment$6;->val$offset:I

    if-nez v2, :cond_1

    .line 947
    iget-object v2, p1, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->notifications:Ljava/util/List;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment$6;->val$listId:I

    if-nez v2, :cond_0

    .line 948
    iget-object v2, p1, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->notifications:Ljava/util/List;

    invoke-virtual {p1, v1, v2}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->addAll(ILjava/util/Collection;)Z

    .line 950
    :cond_0
    invoke-static {p1}, Lcom/vkcoffee/android/cache/NewsfeedCache;->replace(Ljava/util/List;)V

    .line 952
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-virtual {p1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->from()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/cache/NewsfeedCache;->saveFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$4202(Lcom/vkcoffee/android/fragments/NewsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 953
    iget-object v2, p1, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->lists:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/vkcoffee/android/cache/NewsfeedCache;->setLists(Ljava/util/List;Z)V

    .line 954
    iget v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment$6;->val$listId:I

    if-nez v2, :cond_2

    .line 955
    iget-object v2, p1, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->isSmartNews:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/vkcoffee/android/cache/NewsfeedCache;->setNewsfeedTop(Ljava/lang/Boolean;)V

    .line 957
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    iget-object v3, p1, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;->lists:Ljava/util/List;

    invoke-static {}, Lcom/vkcoffee/android/cache/NewsfeedCache;->isNewsfeedTop()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$1500(Lcom/vkcoffee/android/fragments/NewsFragment;Ljava/util/List;Z)V

    .line 958
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/NewsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/NewsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$4200(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/NewsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$4200(Lcom/vkcoffee/android/fragments/NewsFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v0, :cond_4

    :goto_0
    invoke-virtual {v2, p1, v0}, Lcom/vkcoffee/android/fragments/NewsFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 959
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$4300(Lcom/vkcoffee/android/fragments/NewsFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$4400(Lcom/vkcoffee/android/fragments/NewsFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 960
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$4500(Lcom/vkcoffee/android/fragments/NewsFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->scrollToPosition(I)V

    .line 961
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment$6;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$4302(Lcom/vkcoffee/android/fragments/NewsFragment;Z)Z

    .line 963
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 958
    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 943
    check-cast p1, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/NewsFragment$6;->success(Lcom/vkcoffee/android/api/newsfeed/NewsfeedGet$Response;)V

    return-void
.end method

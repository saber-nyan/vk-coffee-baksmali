.class Lcom/vkcoffee/android/fragments/AudioListFragment$13;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment;->updateNavItems()V
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
        "Lcom/vkcoffee/android/data/VKList",
        "<",
        "Lcom/vkcoffee/android/AudioPlaylist;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

.field private final synthetic val$navItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$13;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$13;->val$navItems:Ljava/util/ArrayList;

    .line 1059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 0

    .prologue
    .line 1078
    .local p1, "error":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    return-void
.end method

.method public success(Lcom/vkcoffee/android/data/VKList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/AudioPlaylist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1061
    .local p1, "lists":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/AudioPlaylist;>;"
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$13;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$24(Lcom/vkcoffee/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1062
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$13;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$16(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1063
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$13;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$36(Lcom/vkcoffee/android/fragments/AudioListFragment;)V

    .line 1065
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$13;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$24(Lcom/vkcoffee/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1066
    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1067
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1070
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$13;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$16(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1071
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$13;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$16(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1075
    :goto_1
    return-void

    .line 1068
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$13;->val$navItems:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/AudioPlaylist;

    iget-object v1, v1, Lcom/vkcoffee/android/AudioPlaylist;->title:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1073
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$13;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$13;->val$navItems:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$37(Lcom/vkcoffee/android/fragments/AudioListFragment;Ljava/util/List;)V

    goto :goto_1
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/AudioListFragment$13;->success(Lcom/vkcoffee/android/data/VKList;)V

    return-void
.end method

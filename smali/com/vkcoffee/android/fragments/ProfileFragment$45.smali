.class Lcom/vkcoffee/android/fragments/ProfileFragment$45;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;->loadPlaylistAndPlay(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/data/VKList",
        "<",
        "Lcom/vkcoffee/android/AudioFile;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$45;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 5893
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 4

    .prologue
    .line 5903
    .local p1, "error":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$45;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$53(Lcom/vkcoffee/android/fragments/ProfileFragment;Lme/grishka/appkit/api/APIRequest;)V

    .line 5904
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 5905
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$45;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$45;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/vkcoffee/android/AudioPlayerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 5906
    return-void
.end method

.method public success(Lcom/vkcoffee/android/data/VKList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/AudioFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5895
    .local p1, "result":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/AudioFile;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$45;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$53(Lcom/vkcoffee/android/fragments/ProfileFragment;Lme/grishka/appkit/api/APIRequest;)V

    .line 5896
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$45;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$54(Lcom/vkcoffee/android/fragments/ProfileFragment;Ljava/util/ArrayList;)V

    .line 5897
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$45;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$16(Lcom/vkcoffee/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5898
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$45;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$45;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$15(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$18(Lcom/vkcoffee/android/fragments/ProfileFragment;I)V

    .line 5899
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$45;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$55(Lcom/vkcoffee/android/fragments/ProfileFragment;I)V

    .line 5900
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$45;->success(Lcom/vkcoffee/android/data/VKList;)V

    return-void
.end method

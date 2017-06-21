.class Lcom/vkcoffee/android/fragments/AudioListFragment$18;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "AudioListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment;->doLoadData(II)V
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
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Fragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$18;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    .line 1338
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2

    .prologue
    .line 1354
    .local p1, "error":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$18;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$18;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$44(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/api/APIRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$45(Lcom/vkcoffee/android/fragments/AudioListFragment;Lme/grishka/appkit/api/APIRequest;)V

    .line 1355
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$18;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$40(Lcom/vkcoffee/android/fragments/AudioListFragment;Lme/grishka/appkit/api/APIRequest;)V

    .line 1356
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 1357
    return-void
.end method

.method public success(Lcom/vkcoffee/android/data/VKList;)V
    .locals 3
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
    .local p1, "files":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/AudioFile;>;"
    const/4 v2, 0x0

    .line 1340
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$18;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$40(Lcom/vkcoffee/android/fragments/AudioListFragment;Lme/grishka/appkit/api/APIRequest;)V

    .line 1341
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$18;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v0, p1, v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$46(Lcom/vkcoffee/android/fragments/AudioListFragment;Ljava/util/List;Z)V

    .line 1342
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v0, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$18;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$7(Lcom/vkcoffee/android/fragments/AudioListFragment;Lcom/vkcoffee/android/AudioFile;)V

    .line 1345
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$18;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$11(Lcom/vkcoffee/android/fragments/AudioListFragment;)I

    move-result v0

    if-gez v0, :cond_1

    .line 1346
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$18;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v0, v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$41(Lcom/vkcoffee/android/fragments/AudioListFragment;I)V

    .line 1348
    :cond_1
    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1349
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$18;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$18;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$11(Lcom/vkcoffee/android/fragments/AudioListFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$47(Lcom/vkcoffee/android/fragments/AudioListFragment;I)V

    .line 1351
    :cond_2
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/AudioListFragment$18;->success(Lcom/vkcoffee/android/data/VKList;)V

    return-void
.end method

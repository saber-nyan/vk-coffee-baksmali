.class Lcom/vkcoffee/android/fragments/GameCardFragment$9;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "GameCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/GameCardFragment;->loadInitial(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/GameCardFragment;Landroid/app/Fragment;Landroid/app/Activity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/GameCardFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$9;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$9;->val$activity:Landroid/app/Activity;

    iput p4, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$9;->val$count:I

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;)V
    .locals 6
    .param p1, "res"    # Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;

    .prologue
    const/4 v1, 0x0

    .line 417
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$9;->val$activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/vkcoffee/android/GameCardActivity;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$9;->val$activity:Landroid/app/Activity;

    check-cast v0, Lcom/vkcoffee/android/GameCardActivity;

    iget-object v2, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->application:Lcom/vkcoffee/android/data/ApiApplication;

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/GameCardActivity;->updateApiAppItem(Lcom/vkcoffee/android/data/ApiApplication;)V

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$9;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    iget-object v2, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->application:Lcom/vkcoffee/android/data/ApiApplication;

    invoke-static {v0, v2}, Lcom/vkcoffee/android/fragments/GameCardFragment;->access$502(Lcom/vkcoffee/android/fragments/GameCardFragment;Lcom/vkcoffee/android/data/ApiApplication;)Lcom/vkcoffee/android/data/ApiApplication;

    .line 422
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$9;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->access$600(Lcom/vkcoffee/android/fragments/GameCardFragment;)V

    .line 424
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$9;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->access$000(Lcom/vkcoffee/android/fragments/GameCardFragment;)Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;

    move-result-object v0

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$9;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$9;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/GameCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "visitSource"

    const-string/jumbo v5, "direct"

    invoke-static {v3, v4, v5}, Lcom/vkcoffee/android/utils/Utils;->readString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v2, v3}, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->access$700(Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;Landroid/app/Activity;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$9;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->access$000(Lcom/vkcoffee/android/fragments/GameCardFragment;)Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;

    move-result-object v2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$9;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/GameCardFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/fragments/GameCardFragment$Adapter;->build(Z)V

    .line 426
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$9;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->updateList()V

    .line 427
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$9;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/vkcoffee/android/fragments/GameCardFragment;->access$802(Lcom/vkcoffee/android/fragments/GameCardFragment;Lme/grishka/appkit/api/APIRequest;)Lme/grishka/appkit/api/APIRequest;

    .line 428
    iget-object v0, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->application:Lcom/vkcoffee/android/data/ApiApplication;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$9;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    iget-object v2, p1, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;->application:Lcom/vkcoffee/android/data/ApiApplication;

    iget v2, v2, Lcom/vkcoffee/android/data/ApiApplication;->author_group:I

    neg-int v2, v2

    invoke-static {v0, v2}, Lcom/vkcoffee/android/fragments/GameCardFragment;->access$902(Lcom/vkcoffee/android/fragments/GameCardFragment;I)I

    .line 430
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$9;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    iget v2, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$9;->val$count:I

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/fragments/GameCardFragment;->access$1000(Lcom/vkcoffee/android/fragments/GameCardFragment;II)V

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$9;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->dataLoaded()V

    .line 434
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/GameCardFragment$9;->this$0:Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/GameCardFragment;->access$1100(Lcom/vkcoffee/android/fragments/GameCardFragment;)V

    .line 435
    return-void

    :cond_2
    move v0, v1

    .line 425
    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 414
    check-cast p1, Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/GameCardFragment$9;->success(Lcom/vkcoffee/android/api/apps/AppsGetGamePage$Result;)V

    return-void
.end method

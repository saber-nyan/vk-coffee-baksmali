.class Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter$1;
.super Ljava/lang/Object;
.source "FriendsRecommPostDisplayItem.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;->loadData(II)V
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
        "Lcom/vkcoffee/android/data/VKFromList",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter$1;->this$1:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter$1;->this$1:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;->access$1602(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;Z)Z

    .line 285
    return-void
.end method

.method public success(Lcom/vkcoffee/android/data/VKFromList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/data/VKFromList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Lcom/vkcoffee/android/data/VKFromList;, "Lcom/vkcoffee/android/data/VKFromList<Lcom/vkcoffee/android/UserProfile;>;"
    const/4 v0, 0x0

    .line 276
    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter$1;->this$1:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;

    invoke-static {v1, v0}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;->access$1602(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;Z)Z

    .line 277
    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter$1;->this$1:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;

    iget-object v1, v1, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;->this$0:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;

    iget-object v1, v1, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;->att:Lcom/vkcoffee/android/attachments/FriendsRecommAttachment;

    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKFromList;->from()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vkcoffee/android/attachments/FriendsRecommAttachment;->nextFrom:Ljava/lang/String;

    .line 278
    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter$1;->this$1:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;

    iget-object v1, v1, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;->this$0:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;

    iget-object v1, v1, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;->att:Lcom/vkcoffee/android/attachments/FriendsRecommAttachment;

    iget-object v1, v1, Lcom/vkcoffee/android/attachments/FriendsRecommAttachment;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 279
    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter$1;->this$1:Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;->access$1500(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;)Lme/grishka/appkit/utils/Preloader;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKFromList;->from()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, p1, v0}, Lme/grishka/appkit/utils/Preloader;->onDataLoaded(Ljava/util/List;Z)V

    .line 280
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 273
    check-cast p1, Lcom/vkcoffee/android/data/VKFromList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter$1;->success(Lcom/vkcoffee/android/data/VKFromList;)V

    return-void
.end method

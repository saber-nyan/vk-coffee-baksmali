.class Lcom/vkcoffee/android/LinkRedirActivity$7;
.super Ljava/lang/Object;
.source "LinkRedirActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/LinkRedirActivity;->onCreate(Landroid/os/Bundle;)V
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
        "Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/LinkRedirActivity;

.field final synthetic val$oid:I

.field final synthetic val$tid:I

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/LinkRedirActivity;IILandroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/LinkRedirActivity;

    .prologue
    .line 841
    iput-object p1, p0, Lcom/vkcoffee/android/LinkRedirActivity$7;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    iput p2, p0, Lcom/vkcoffee/android/LinkRedirActivity$7;->val$tid:I

    iput p3, p0, Lcom/vkcoffee/android/LinkRedirActivity$7;->val$oid:I

    iput-object p4, p0, Lcom/vkcoffee/android/LinkRedirActivity$7;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 853
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$7;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 854
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$7;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/LinkRedirActivity$7;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/LinkRedirActivity;->access$000(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/net/Uri;)V

    .line 855
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;)V
    .locals 6
    .param p1, "res"    # Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;

    .prologue
    const/4 v1, 0x0

    .line 844
    iget-object v2, p0, Lcom/vkcoffee/android/LinkRedirActivity$7;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 845
    iget-object v2, p0, Lcom/vkcoffee/android/LinkRedirActivity$7;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v2}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 846
    iget-object v2, p1, Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;->topics:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/data/VKList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/BoardTopic;

    .line 847
    .local v0, "topic":Lcom/vkcoffee/android/api/BoardTopic;
    new-instance v2, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;

    iget v3, p0, Lcom/vkcoffee/android/LinkRedirActivity$7;->val$tid:I

    iget v4, p0, Lcom/vkcoffee/android/LinkRedirActivity$7;->val$oid:I

    iget-object v5, v0, Lcom/vkcoffee/android/api/BoardTopic;->title:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;-><init>(IILjava/lang/String;)V

    iget v3, v0, Lcom/vkcoffee/android/api/BoardTopic;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_0

    const/4 v1, 0x1

    .line 848
    :cond_0
    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;->setIsClosed(Z)Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/LinkRedirActivity$7;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;->go(Landroid/content/Context;)V

    .line 849
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 841
    check-cast p1, Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/LinkRedirActivity$7;->success(Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;)V

    return-void
.end method

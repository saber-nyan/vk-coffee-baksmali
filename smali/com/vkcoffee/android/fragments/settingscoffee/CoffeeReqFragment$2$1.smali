.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$2$1;
.super Ljava/lang/Object;
.source "CoffeeReqFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$2;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$2;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$2$1;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$2;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3

    .prologue
    .line 124
    .local p1, "var1":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$2$1;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$2;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$2;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$2;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Err: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 125
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;)V
    .locals 6
    .param p1, "var1"    # Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;

    .prologue
    .line 127
    iget-object v3, p1, Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;->topics:Lcom/vkcoffee/android/data/VKList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/data/VKList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/api/BoardTopic;

    .line 128
    .local v1, "var3":Lcom/vkcoffee/android/api/BoardTopic;
    const/4 v2, 0x0

    .line 129
    .local v2, "var3x":Z
    new-instance v0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;

    const v3, 0x1ef3ad1

    const v4, 0x4ad4ef2

    iget-object v5, v1, Lcom/vkcoffee/android/api/BoardTopic;->title:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;-><init>(IILjava/lang/String;)V

    .line 130
    .local v0, "var2":Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;
    iget v3, v1, Lcom/vkcoffee/android/api/BoardTopic;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_0

    .line 131
    const/4 v2, 0x1

    .line 133
    :cond_0
    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;->setIsClosed(Z)Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$2$1;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$2;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$2;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$2;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;->go(Landroid/content/Context;)V

    .line 134
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeReqFragment$2$1;->success(Lcom/vkcoffee/android/api/board/BoardGetTopics$Result;)V

    return-void
.end method

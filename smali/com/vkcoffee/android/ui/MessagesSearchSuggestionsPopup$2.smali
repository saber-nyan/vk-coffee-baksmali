.class Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$2;
.super Ljava/lang/Object;
.source "MessagesSearchSuggestionsPopup.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->searchOnServer(Ljava/lang/String;)V
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
        "Lcom/vkcoffee/android/UserProfile;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$2;->this$0:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    const/16 v0, 0x8

    .line 230
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$2;->this$0:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->access$202(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;Lcom/vkcoffee/android/api/VKAPIRequest;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 231
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$2;->this$0:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->access$500(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 232
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$2;->this$0:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->access$600(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$2;->this$0:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v2}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->access$100(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lme/grishka/appkit/views/UsableRecyclerView;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    return-void

    .line 232
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 210
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$2;->success(Ljava/util/ArrayList;)V

    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    const/16 v2, 0x8

    .line 213
    iget-object v3, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$2;->this$0:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->access$202(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;Lcom/vkcoffee/android/api/VKAPIRequest;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 214
    iget-object v3, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$2;->this$0:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->access$300(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .line 215
    .local v0, "u":Lcom/vkcoffee/android/UserProfile;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    .line 216
    .local v1, "u2":Lcom/vkcoffee/android/UserProfile;
    iget v5, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    iget v6, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ne v5, v6, :cond_1

    .line 217
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    .end local v0    # "u":Lcom/vkcoffee/android/UserProfile;
    .end local v1    # "u2":Lcom/vkcoffee/android/UserProfile;
    :cond_2
    iget-object v3, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$2;->this$0:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->access$300(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 223
    iget-object v3, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$2;->this$0:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->access$400(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)V

    .line 224
    iget-object v3, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$2;->this$0:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->access$500(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 225
    iget-object v3, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$2;->this$0:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v3}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->access$600(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$2;->this$0:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v4}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->access$100(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Lme/grishka/appkit/views/UsableRecyclerView;->getCount()I

    move-result v4

    if-lez v4, :cond_3

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    return-void

    .line 225
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

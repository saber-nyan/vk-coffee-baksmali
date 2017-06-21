.class Lcom/vkcoffee/android/fragments/SuggestionsFragment$3;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "SuggestionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SuggestionsFragment;->onSubscribeClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;

.field final synthetic val$needSubscribe:Z

.field final synthetic val$p:Lcom/vkcoffee/android/UserProfile;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SuggestionsFragment;Landroid/content/Context;Lcom/vkcoffee/android/UserProfile;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/SuggestionsFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$3;->val$p:Lcom/vkcoffee/android/UserProfile;

    iput-boolean p4, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$3;->val$needSubscribe:Z

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "err"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 187
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$3;->val$p:Lcom/vkcoffee/android/UserProfile;

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$3;->val$needSubscribe:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, v1, Lcom/vkcoffee/android/UserProfile;->online:I

    .line 188
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->access$100(Lcom/vkcoffee/android/fragments/SuggestionsFragment;)Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->access$100(Lcom/vkcoffee/android/fragments/SuggestionsFragment;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 191
    :cond_0
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 192
    return-void

    .line 187
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public success(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 182
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$3;->val$p:Lcom/vkcoffee/android/UserProfile;

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$3;->val$needSubscribe:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/vkcoffee/android/UserProfile;->online:I

    .line 183
    return-void

    .line 182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 179
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/SuggestionsFragment$3;->success(Ljava/lang/Integer;)V

    return-void
.end method

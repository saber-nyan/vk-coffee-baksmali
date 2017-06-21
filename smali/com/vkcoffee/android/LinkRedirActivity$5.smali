.class Lcom/vkcoffee/android/LinkRedirActivity$5;
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
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/LinkRedirActivity;

.field final synthetic val$aid:I

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/LinkRedirActivity;ILandroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/LinkRedirActivity;

    .prologue
    .line 757
    iput-object p1, p0, Lcom/vkcoffee/android/LinkRedirActivity$5;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    iput p2, p0, Lcom/vkcoffee/android/LinkRedirActivity$5;->val$aid:I

    iput-object p3, p0, Lcom/vkcoffee/android/LinkRedirActivity$5;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 784
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$5;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 785
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$5;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/LinkRedirActivity$5;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/LinkRedirActivity;->access$000(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/net/Uri;)V

    .line 786
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 757
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/LinkRedirActivity$5;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 760
    :try_start_0
    const-string/jumbo v4, "response"

    invoke-static {p1, v4}, Lcom/vkcoffee/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;

    move-result-object v4

    iget-object v2, v4, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 761
    .local v2, "ja":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .line 762
    .local v0, "a":Lcom/vkcoffee/android/api/PhotoAlbum;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 763
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iget v5, p0, Lcom/vkcoffee/android/LinkRedirActivity$5;->val$aid:I

    if-ne v4, v5, :cond_1

    .line 764
    new-instance v0, Lcom/vkcoffee/android/api/PhotoAlbum;

    .end local v0    # "a":Lcom/vkcoffee/android/api/PhotoAlbum;
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/vkcoffee/android/api/PhotoAlbum;-><init>(Lorg/json/JSONObject;)V

    .line 768
    .restart local v0    # "a":Lcom/vkcoffee/android/api/PhotoAlbum;
    :cond_0
    if-nez v0, :cond_2

    .line 769
    iget-object v4, p0, Lcom/vkcoffee/android/LinkRedirActivity$5;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    const v5, 0x7f080045

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 770
    iget-object v4, p0, Lcom/vkcoffee/android/LinkRedirActivity$5;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v4}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 781
    .end local v0    # "a":Lcom/vkcoffee/android/api/PhotoAlbum;
    .end local v1    # "i":I
    .end local v2    # "ja":Lorg/json/JSONArray;
    :goto_1
    return-void

    .line 762
    .restart local v0    # "a":Lcom/vkcoffee/android/api/PhotoAlbum;
    .restart local v1    # "i":I
    .restart local v2    # "ja":Lorg/json/JSONArray;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 773
    :cond_2
    iget-object v4, p0, Lcom/vkcoffee/android/LinkRedirActivity$5;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 774
    iget-object v4, p0, Lcom/vkcoffee/android/LinkRedirActivity$5;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v4}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 775
    new-instance v4, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$Builder;

    invoke-direct {v4, v0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$Builder;-><init>(Lcom/vkcoffee/android/api/PhotoAlbum;)V

    iget-object v5, p0, Lcom/vkcoffee/android/LinkRedirActivity$5;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$Builder;->go(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 776
    .end local v0    # "a":Lcom/vkcoffee/android/api/PhotoAlbum;
    .end local v1    # "i":I
    .end local v2    # "ja":Lorg/json/JSONArray;
    :catch_0
    move-exception v3

    .line 777
    .local v3, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "vk"

    invoke-static {v4, v3}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 778
    iget-object v4, p0, Lcom/vkcoffee/android/LinkRedirActivity$5;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v4}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 779
    iget-object v4, p0, Lcom/vkcoffee/android/LinkRedirActivity$5;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    iget-object v5, p0, Lcom/vkcoffee/android/LinkRedirActivity$5;->val$uri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/vkcoffee/android/LinkRedirActivity;->access$000(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/net/Uri;)V

    goto :goto_1
.end method

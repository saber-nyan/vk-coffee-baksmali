.class Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$3;
.super Lcom/loopj/android/http/JsonHttpResponseHandler;
.source "FriendsOutRequestFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->loadUserRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$3;->this$0:Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;

    .line 141
    invoke-direct {p0}, Lcom/loopj/android/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "var3"    # Lorg/json/JSONObject;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatMatches"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 146
    :try_start_0
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v5, "TEST"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 147
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 149
    const-string v5, "test"

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 150
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 151
    const-string v4, "response"

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 152
    .local v2, "var5":Lorg/json/JSONObject;
    const-string v4, "items"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 153
    .local v0, "friends":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "ids":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "var6":Ljava/lang/String;
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$3;->this$0:Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;

    invoke-static {v4, v3}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->access$1(Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v0    # "friends":Lorg/json/JSONArray;
    .end local v1    # "ids":Ljava/lang/String;
    .end local v2    # "var5":Lorg/json/JSONObject;
    .end local v3    # "var6":Ljava/lang/String;
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v3

    .line 158
    .local v3, "var6":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 159
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$3;->this$0:Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "REQUEST FAILED"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 160
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, p3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0
.end method

.class Lcom/vkcoffee/android/fragments/ProfileFragment$17;
.super Lcom/loopj/android/http/TextHttpResponseHandler;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;->goProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 3820
    invoke-direct {p0}, Lcom/loopj/android/http/TextHttpResponseHandler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;
    .locals 1

    .prologue
    .line 3820
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    return-object v0
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseString"    # Ljava/lang/String;
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 3825
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020308

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    .line 3826
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v4, v4, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v5, v5, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3827
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/ProfileFragment;->spannable:Landroid/text/Spannable;

    new-instance v2, Landroid/text/style/ImageSpan;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3828
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/ProfileFragment;->object:Ljava/lang/Object;

    check-cast v1, Landroid/text/SpannableStringBuilder;

    const-string v2, " \u0412\u043e\u0437\u043d\u0438\u043a\u043b\u0430 \u043e\u0448\u0438\u0431\u043a\u0430 0\u00a0"

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3829
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/ProfileFragment;->object:Ljava/lang/Object;

    check-cast v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/ProfileFragment;->spannable:Landroid/text/Spannable;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3830
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$24(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f10038b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/ProfileFragment;->object:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3834
    :goto_0
    return-void

    .line 3831
    :catch_0
    move-exception v0

    .line 3832
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Err0: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 12
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseString"    # Ljava/lang/String;

    .prologue
    .line 3838
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v7

    iget-object v7, v7, Lcom/vkcoffee/android/api/ExtendedUserProfile;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v7, v7, Lcom/vkcoffee/android/UserProfile;->online:I

    if-lez v7, :cond_9

    .line 3840
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3841
    .local v6, "response":Lorg/json/JSONObject;
    const-string v7, "response"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "online_app"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "response"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "online_mobile"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3842
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020308

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v7, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    .line 3861
    :goto_0
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-boolean v7, v7, Lcom/vkcoffee/android/fragments/ProfileFragment;->detailPl:Z

    if-eqz v7, :cond_8

    .line 3863
    new-instance v4, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v4}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 3864
    .local v4, "params":Lcom/loopj/android/http/RequestParams;
    const-string v7, "app_id"

    const-string v8, "response"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "online_app"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3866
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 3867
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/vkcoffee/android/GlobalVarsCoffee;->API_HOST:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "apps.get"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;

    invoke-direct {v8, p0}, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)V

    invoke-virtual {v0, v7, v4, v8}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 4006
    .end local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v4    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v6    # "response":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 3843
    .restart local v6    # "response":Lorg/json/JSONObject;
    :cond_0
    const-string v7, "response"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "online_app"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "response"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "online_mobile"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3844
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020174

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v7, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3919
    .end local v6    # "response":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 3921
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020308

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v7, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    .line 3922
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v7, v7, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v10, v10, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    iget-object v11, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v11, v11, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3923
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v7, v7, Lcom/vkcoffee/android/fragments/ProfileFragment;->spannable:Landroid/text/Spannable;

    new-instance v8, Landroid/text/style/ImageSpan;

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v9, v9, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v7, v8, v9, v10, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3925
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v7, v7, Lcom/vkcoffee/android/fragments/ProfileFragment;->object:Ljava/lang/Object;

    check-cast v7, Landroid/text/SpannableStringBuilder;

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v8, v8, Lcom/vkcoffee/android/fragments/ProfileFragment;->spannable:Landroid/text/Spannable;

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3926
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$24(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f10038b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v8, v8, Lcom/vkcoffee/android/fragments/ProfileFragment;->object:Ljava/lang/Object;

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3930
    :goto_2
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Err3: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3845
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "response":Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    const-string v7, "response"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "online_app"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "2274003"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3846
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0201c7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v7, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 3847
    :cond_2
    const-string v7, "response"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "online_app"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "3140623"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3848
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0201c9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v7, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 3849
    :cond_3
    const-string v7, "response"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "online_app"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "3682744"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3850
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0201c9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v7, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    .line 3851
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    const-string v8, "(iPad) "

    iput-object v8, v7, Lcom/vkcoffee/android/fragments/ProfileFragment;->titleOnline:Ljava/lang/String;

    goto/16 :goto_0

    .line 3852
    :cond_4
    const-string v7, "response"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "online_app"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "3502557"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 3853
    const-string v7, "response"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "online_app"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "3502561"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 3854
    const-string v7, "response"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "online_app"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "3697615"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3855
    :cond_5
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0201cd

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v7, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 3856
    :cond_6
    const-string v7, "response"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "online_app"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "tj4ZK4+0R6VpjRhoclUrOw=="

    invoke-static {v8}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3857
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0201c7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v7, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 3859
    :cond_7
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/vkcoffee/android/fragments/ProfileFragment;->detailPl:Z

    goto/16 :goto_0

    .line 3913
    :cond_8
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v7, v7, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v10, v10, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    iget-object v11, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v11, v11, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3914
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v7, v7, Lcom/vkcoffee/android/fragments/ProfileFragment;->spannable:Landroid/text/Spannable;

    new-instance v8, Landroid/text/style/ImageSpan;

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v9, v9, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v7, v8, v9, v10, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3915
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v7, v7, Lcom/vkcoffee/android/fragments/ProfileFragment;->object:Ljava/lang/Object;

    check-cast v7, Landroid/text/SpannableStringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " (Online)\u00a0"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v9, v9, Lcom/vkcoffee/android/fragments/ProfileFragment;->titleOnline:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3916
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v7, v7, Lcom/vkcoffee/android/fragments/ProfileFragment;->object:Ljava/lang/Object;

    check-cast v7, Landroid/text/SpannableStringBuilder;

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v8, v8, Lcom/vkcoffee/android/fragments/ProfileFragment;->spannable:Landroid/text/Spannable;

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3917
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$24(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f10038b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v8, v8, Lcom/vkcoffee/android/fragments/ProfileFragment;->object:Ljava/lang/Object;

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 3927
    .end local v6    # "response":Lorg/json/JSONObject;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 3928
    .local v3, "n":Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Err3Inner: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3933
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "n":Ljava/lang/Exception;
    :cond_9
    new-instance v5, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v5}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 3934
    .local v5, "params2":Lcom/loopj/android/http/RequestParams;
    const-string v7, "user_ids"

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;I)V

    .line 3935
    const-string v7, "fields"

    const-string v8, "last_seen"

    invoke-virtual {v5, v7, v8}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3937
    new-instance v1, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 3938
    .local v1, "client2":Lcom/loopj/android/http/AsyncHttpClient;
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/vkcoffee/android/GlobalVarsCoffee;->API_HOST:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "users.get"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/vkcoffee/android/fragments/ProfileFragment$17$2;

    invoke-direct {v8, p0}, Lcom/vkcoffee/android/fragments/ProfileFragment$17$2;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)V

    invoke-virtual {v1, v7, v5, v8}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    goto/16 :goto_1
.end method

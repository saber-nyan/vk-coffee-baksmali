.class Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;
.super Lcom/loopj/android/http/TextHttpResponseHandler;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment$17;->onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    .line 3867
    invoke-direct {p0}, Lcom/loopj/android/http/TextHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseString"    # Ljava/lang/String;
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 3872
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020308

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    .line 3873
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v4

    iget-object v4, v4, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v5

    iget-object v5, v5, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3874
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/ProfileFragment;->spannable:Landroid/text/Spannable;

    new-instance v2, Landroid/text/style/ImageSpan;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3875
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/ProfileFragment;->object:Ljava/lang/Object;

    check-cast v1, Landroid/text/SpannableStringBuilder;

    const-string v2, " \u0414\u0430\u043d\u043d\u044b\u0435 \u043d\u0435 \u043f\u043e\u043b\u0443\u0447\u0435\u043d\u044b 1\u00a0"

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3876
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/ProfileFragment;->object:Ljava/lang/Object;

    check-cast v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v2

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/ProfileFragment;->spannable:Landroid/text/Spannable;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3877
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$24(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f10038b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v2

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/ProfileFragment;->object:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3881
    :goto_0
    return-void

    .line 3878
    :catch_0
    move-exception v0

    .line 3879
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Err1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 8
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseString"    # Ljava/lang/String;

    .prologue
    .line 3885
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3886
    .local v2, "response":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201cb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    .line 3887
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "response"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/vkcoffee/android/fragments/ProfileFragment;->titleOnline:Ljava/lang/String;

    .line 3888
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v6

    iget-object v6, v6, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v7

    iget-object v7, v7, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3889
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/ProfileFragment;->spannable:Landroid/text/Spannable;

    new-instance v4, Landroid/text/style/ImageSpan;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v5

    iget-object v5, v5, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3890
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/ProfileFragment;->object:Ljava/lang/Object;

    check-cast v3, Landroid/text/SpannableStringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " (Online)\u00a0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v5

    iget-object v5, v5, Lcom/vkcoffee/android/fragments/ProfileFragment;->titleOnline:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3891
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/ProfileFragment;->object:Ljava/lang/Object;

    check-cast v3, Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v4

    iget-object v4, v4, Lcom/vkcoffee/android/fragments/ProfileFragment;->spannable:Landroid/text/Spannable;

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3892
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$24(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f10038b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v4

    iget-object v4, v4, Lcom/vkcoffee/android/fragments/ProfileFragment;->object:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3908
    .end local v2    # "response":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 3894
    :catch_0
    move-exception v0

    .line 3896
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020308

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    .line 3897
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v6

    iget-object v6, v6, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v7

    iget-object v7, v7, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3898
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/ProfileFragment;->spannable:Landroid/text/Spannable;

    new-instance v4, Landroid/text/style/ImageSpan;

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v5

    iget-object v5, v5, Lcom/vkcoffee/android/fragments/ProfileFragment;->drawIconPost:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3899
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/ProfileFragment;->object:Ljava/lang/Object;

    check-cast v3, Landroid/text/SpannableStringBuilder;

    const-string v4, " \u0414\u0430\u043d\u043d\u044b\u0435 \u043d\u0435 \u043f\u043e\u043b\u0443\u0447\u0435\u043d\u044b 2\u00a0"

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3900
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/ProfileFragment;->object:Ljava/lang/Object;

    check-cast v3, Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v4

    iget-object v4, v4, Lcom/vkcoffee/android/fragments/ProfileFragment;->spannable:Landroid/text/Spannable;

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3901
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$24(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f10038b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$17$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileFragment$17;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/ProfileFragment$17;->access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$17;)Lcom/vkcoffee/android/fragments/ProfileFragment;

    move-result-object v4

    iget-object v4, v4, Lcom/vkcoffee/android/fragments/ProfileFragment;->object:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3905
    :goto_1
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Err2: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3902
    :catch_1
    move-exception v1

    .line 3903
    .local v1, "n":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Err2Inner: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

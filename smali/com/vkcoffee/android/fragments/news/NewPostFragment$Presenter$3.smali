.class Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;
.super Ljava/lang/Object;
.source "NewPostFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->post()V
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
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

.field private final synthetic val$edit:Lcom/vkcoffee/android/NewsEntry;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;Lcom/vkcoffee/android/NewsEntry;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->val$edit:Lcom/vkcoffee/android/NewsEntry;

    .line 1393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 6

    .prologue
    .local p1, "error":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    const/16 v5, 0x69

    const/4 v4, 0x0

    .line 1482
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->postponeTo:Ljava/util/Calendar;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v1

    iget v1, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->emit:I

    if-eqz v1, :cond_7

    :cond_0
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCodeValue()I

    move-result v1

    const/16 v2, 0xd6

    if-ne v1, v2, :cond_7

    .line 1483
    const/4 v0, 0x0

    .line 1484
    .local v0, "err":Ljava/lang/String;
    iget-object v1, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    const-string v2, "already scheduled for this time"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1485
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v1

    iget v1, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->emit:I

    if-eqz v1, :cond_2

    .line 1486
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v1

    iget v2, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->trying:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->trying:I

    .line 1487
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v1

    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v2

    iput v2, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->emit:I

    .line 1488
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v1

    iget v2, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->emit:I

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v3

    iget v3, v3, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->emit:I

    rem-int/lit16 v3, v3, 0x12c

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->emit:I

    .line 1489
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v1

    iget v2, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->emit:I

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v3

    iget v3, v3, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->trying:I

    mul-int/lit16 v3, v3, 0x12c

    add-int/2addr v2, v3

    iput v2, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->emit:I

    .line 1490
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->post()V

    .line 1515
    .end local v0    # "err":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1493
    .restart local v0    # "err":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v1

    const v2, 0x7f0803af

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1495
    :cond_3
    iget-object v1, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    const-string v2, "posts on a day"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1496
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v1

    const v2, 0x7f0803b0

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1498
    :cond_4
    iget-object v1, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    const-string v2, "schedule more than"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1499
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v1

    const v2, 0x7f0803b1

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1501
    :cond_5
    if-eqz v0, :cond_6

    .line 1502
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1510
    .end local v0    # "err":Ljava/lang/String;
    :cond_6
    :goto_1
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Platform"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vkcoffee/android/CustomDB;->currentUID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "Platform"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v5, :cond_1

    .line 1511
    invoke-static {}, Lcom/vkcoffee/android/Platform;->STOP_USE_CUSTOM()V

    goto :goto_0

    .line 1504
    :cond_7
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->postponeTo:Ljava/util/Calendar;

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v1

    iget v1, v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->emit:I

    if-eqz v1, :cond_9

    :cond_8
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCodeValue()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_9

    iget-object v1, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    const-string v2, "publish_date"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1505
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080272

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1507
    :cond_9
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCode()I

    move-result v2

    iget-object v3, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/api/APIUtils;->showErrorToast(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_1
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 18
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 1396
    sget-object v13, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Platform"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vkcoffee/android/CustomDB;->currentUID()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v14, "Platform"

    const/16 v15, 0x69

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    const/16 v14, 0x69

    if-eq v13, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    iget-boolean v13, v13, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->isComment:Z

    if-nez v13, :cond_1

    .line 1397
    invoke-static {}, Lcom/vkcoffee/android/Platform;->STOP_USE_CUSTOM()V

    .line 1398
    new-instance v5, Landroid/content/Intent;

    const-string v13, "com.vkcoffee.android.RELOAD_PROFILE"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1399
    .local v5, "intent":Landroid/content/Intent;
    const-string v13, "id"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v14}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v14

    iget v14, v14, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->uid:I

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1400
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string v14, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v13, v5, v14}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1401
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Landroid/app/Activity;->setResult(I)V

    .line 1402
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->finish()V

    .line 1478
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1407
    :cond_1
    :try_start_0
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 1408
    .local v6, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 1409
    .local v9, "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 1410
    .local v10, "prefs":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    iget-boolean v13, v13, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->fromGroup:Z

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    iget v13, v13, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->uid:I

    move v14, v13

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    iget-boolean v13, v13, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->fromGroup:Z

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    iget-object v13, v13, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mGroupTitle:Ljava/lang/String;

    :goto_2
    invoke-virtual {v6, v14, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1411
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    iget-boolean v13, v13, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->fromGroup:Z

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    iget v4, v13, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->uid:I

    .line 1412
    .local v4, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    iget-boolean v13, v13, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->fromGroup:Z

    if-eqz v13, :cond_a

    .line 1413
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    iget-object v7, v13, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mGroupPhoto:Ljava/lang/String;

    .line 1417
    .local v7, "obj":Ljava/lang/String;
    :goto_4
    check-cast v7, Ljava/lang/String;

    .end local v7    # "obj":Ljava/lang/String;
    invoke-virtual {v9, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1418
    new-instance v3, Lcom/vkcoffee/android/NewsEntry;

    const-string v13, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    invoke-direct {v3, v13, v6, v9}, Lcom/vkcoffee/android/NewsEntry;-><init>(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1420
    .local v3, "e":Lcom/vkcoffee/android/NewsEntry;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    iget-object v13, v13, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mEdit:Lcom/vkcoffee/android/NewsEntry;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    iget-boolean v13, v13, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->isSuggest:Z

    if-eqz v13, :cond_e

    .line 1421
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    iget-object v13, v13, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->postponeTo:Ljava/util/Calendar;

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    iget v13, v13, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->emit:I

    if-eqz v13, :cond_c

    .line 1422
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1423
    .local v2, "activity":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 1424
    .local v11, "resources":Landroid/content/res/Resources;
    const/4 v13, 0x1

    new-array v8, v13, [Ljava/lang/Object;

    .line 1425
    .local v8, "objArr":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    iget v13, v13, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->emit:I

    if-eqz v13, :cond_b

    .line 1426
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v14}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v14

    iget v14, v14, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->emit:I

    invoke-static {v14}, Lcom/vkcoffee/android/TimeUtils;->langDate(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v8, v13

    .line 1430
    :goto_5
    const v13, 0x7f0805b0

    invoke-virtual {v11, v13, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v2, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 1435
    .end local v2    # "activity":Landroid/content/Context;
    .end local v8    # "objArr":[Ljava/lang/Object;
    .end local v11    # "resources":Landroid/content/res/Resources;
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    iget v13, v13, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->uid:I

    sget v14, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v13, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    iget v13, v13, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->uid:I

    if-gez v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    iget-boolean v13, v13, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->fromGroup:Z

    if-eqz v13, :cond_6

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    iget-object v13, v13, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->postponeTo:Ljava/util/Calendar;

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    iget v13, v13, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->emit:I

    if-nez v13, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    iget-boolean v13, v13, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSuggest:Z

    if-nez v13, :cond_6

    .line 1436
    new-instance v5, Landroid/content/Intent;

    const-string v13, "com.vkcoffee.android.NEW_POST_ADDED"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1437
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v13, "entry"

    invoke-virtual {v5, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1438
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string v14, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v13, v5, v14}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1439
    invoke-static {}, Lcom/vkcoffee/android/cache/NewsfeedCache;->hasEntries()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1440
    invoke-static {v3}, Lcom/vkcoffee/android/cache/NewsfeedCache;->addToTop(Lcom/vkcoffee/android/NewsEntry;)V

    .line 1443
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Landroid/app/Activity;->setResult(I)V

    .line 1444
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1473
    .end local v3    # "e":Lcom/vkcoffee/android/NewsEntry;
    .end local v4    # "i":I
    .end local v6    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v9    # "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v10    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v12

    .line 1474
    .local v12, "x":Ljava/lang/Throwable;
    const-string v13, "vk"

    invoke-static {v13, v12}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1475
    new-instance v13, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    const/4 v14, -0x2

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    goto/16 :goto_0

    .line 1410
    .end local v12    # "x":Ljava/lang/Throwable;
    .restart local v6    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v9    # "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v10    # "prefs":Landroid/content/SharedPreferences;
    :cond_7
    :try_start_1
    sget v13, Lcom/vkcoffee/android/Global;->uid:I

    move v14, v13

    goto/16 :goto_1

    :cond_8
    const-string v13, "username"

    const-string v15, "DELETED"

    invoke-interface {v10, v13, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 1411
    :cond_9
    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    goto/16 :goto_3

    .line 1415
    .restart local v4    # "i":I
    :cond_a
    const-string v13, "userphoto"

    const-string v14, "DELETED"

    invoke-interface {v10, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "obj":Ljava/lang/String;
    goto/16 :goto_4

    .line 1428
    .end local v7    # "obj":Ljava/lang/String;
    .restart local v2    # "activity":Landroid/content/Context;
    .restart local v3    # "e":Lcom/vkcoffee/android/NewsEntry;
    .restart local v8    # "objArr":[Ljava/lang/Object;
    .restart local v11    # "resources":Landroid/content/res/Resources;
    :cond_b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v14}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v14

    iget-object v14, v14, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->postponeTo:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    long-to-int v14, v14

    invoke-static {v14}, Lcom/vkcoffee/android/TimeUtils;->langDate(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v8, v13

    goto/16 :goto_5

    .line 1433
    .end local v2    # "activity":Landroid/content/Context;
    .end local v8    # "objArr":[Ljava/lang/Object;
    .end local v11    # "resources":Landroid/content/res/Resources;
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    iget-boolean v13, v13, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->mSuggest:Z

    if-eqz v13, :cond_d

    const v13, 0x7f0803a4

    :goto_7
    invoke-virtual {v15, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    invoke-static {v14, v13, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    :cond_d
    const v13, 0x7f0805ac

    goto :goto_7

    .line 1447
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0803a4

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 1448
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->val$edit:Lcom/vkcoffee/android/NewsEntry;

    const/16 v14, 0x800

    invoke-virtual {v13, v14}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v13

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    iget-object v13, v13, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->postponeTo:Ljava/util/Calendar;

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    iget v13, v13, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->emit:I

    if-nez v13, :cond_10

    .line 1449
    :cond_f
    new-instance v5, Landroid/content/Intent;

    const-string v13, "com.vkcoffee.android.POST_DELETED"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1450
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v13, "owner_id"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->val$edit:Lcom/vkcoffee/android/NewsEntry;

    iget v14, v14, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1451
    const-string v13, "post_id"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->val$edit:Lcom/vkcoffee/android/NewsEntry;

    iget v14, v14, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1452
    const-string v13, "post"

    invoke-virtual {v5, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1453
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string v14, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v13, v5, v14}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1454
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->val$edit:Lcom/vkcoffee/android/NewsEntry;

    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v14

    iput v14, v13, Lcom/vkcoffee/android/NewsEntry;->time:I

    .line 1455
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->val$edit:Lcom/vkcoffee/android/NewsEntry;

    const/16 v14, 0x800

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/vkcoffee/android/NewsEntry;->flag(IZ)V

    .line 1457
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    iget-object v13, v13, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->attachView:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v13}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->clear()V

    .line 1458
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    iget-boolean v13, v13, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->isComment:Z

    if-eqz v13, :cond_11

    .line 1459
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1460
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v13, "comment"

    invoke-virtual {v5, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1461
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/4 v14, -0x1

    invoke-virtual {v13, v14, v5}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1462
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1465
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_11
    new-instance v5, Landroid/content/Intent;

    const-string v13, "com.vkcoffee.android.POST_REPLACED"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1466
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v13, "entry"

    invoke-virtual {v5, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1467
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string v14, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v13, v5, v14}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1468
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Landroid/app/Activity;->setResult(I)V

    .line 1469
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->finish()V

    .line 1470
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->val$edit:Lcom/vkcoffee/android/NewsEntry;

    iget v13, v13, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->val$edit:Lcom/vkcoffee/android/NewsEntry;

    iget v14, v14, Lcom/vkcoffee/android/NewsEntry;->userID:I

    if-ne v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    iget-object v13, v13, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->postponeTo:Ljava/util/Calendar;

    if-eqz v13, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->this$1:Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;->access$1(Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter;)Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    move-result-object v13

    iget v13, v13, Lcom/vkcoffee/android/fragments/news/NewPostFragment;->emit:I

    if-nez v13, :cond_0

    .line 1471
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Presenter$3;->val$edit:Lcom/vkcoffee/android/NewsEntry;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/vkcoffee/android/cache/NewsfeedCache;->replaceOne(Lcom/vkcoffee/android/NewsEntry;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

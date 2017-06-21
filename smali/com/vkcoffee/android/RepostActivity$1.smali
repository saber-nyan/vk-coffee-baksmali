.class Lcom/vkcoffee/android/RepostActivity$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "RepostActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/RepostActivity;->doRepostWithComment(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/wall/WallRepost$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/RepostActivity;

.field private final synthetic val$comment:Ljava/lang/String;

.field private final synthetic val$gid:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/RepostActivity;Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    iput p3, p0, Lcom/vkcoffee/android/RepostActivity$1;->val$gid:I

    iput-object p4, p0, Lcom/vkcoffee/android/RepostActivity$1;->val$comment:Ljava/lang/String;

    .line 228
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 1

    .prologue
    .line 298
    .local p1, "err":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 299
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/RepostActivity;->finish()V

    .line 300
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/wall/WallRepost$Result;)V
    .locals 14
    .param p1, "res"    # Lcom/vkcoffee/android/api/wall/WallRepost$Result;

    .prologue
    const/4 v6, 0x0

    .line 232
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6}, Lcom/vkcoffee/android/RepostActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 233
    .local v11, "prefs":Landroid/content/SharedPreferences;
    new-instance v10, Lcom/vkcoffee/android/NewsEntry;

    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/RepostActivity;->access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/vkcoffee/android/NewsEntry;-><init>(Lcom/vkcoffee/android/NewsEntry;)V

    .line 234
    .local v10, "newPost":Lcom/vkcoffee/android/NewsEntry;
    iget v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->val$gid:I

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/RepostActivity;->access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v7

    .line 236
    .local v7, "access$000":Lcom/vkcoffee/android/NewsEntry;
    iget v0, v7, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/lit8 v0, v0, 0xc

    iput v0, v7, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 238
    .end local v7    # "access$000":Lcom/vkcoffee/android/NewsEntry;
    :cond_0
    iget v0, p1, Lcom/vkcoffee/android/api/wall/WallRepost$Result;->postID:I

    iput v0, v10, Lcom/vkcoffee/android/NewsEntry;->postID:I

    .line 239
    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v0

    iput v0, v10, Lcom/vkcoffee/android/NewsEntry;->time:I

    .line 240
    iget v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->val$gid:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->val$gid:I

    neg-int v8, v0

    .line 241
    .local v8, "i":I
    :goto_0
    iput v8, v10, Lcom/vkcoffee/android/NewsEntry;->userID:I

    .line 242
    iput v8, v10, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    .line 243
    iget v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->val$gid:I

    if-nez v0, :cond_5

    const-string v0, "username"

    const-string v1, ""

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, v10, Lcom/vkcoffee/android/NewsEntry;->userName:Ljava/lang/String;

    .line 244
    iget v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->val$gid:I

    if-nez v0, :cond_6

    .line 245
    const-string v0, "userphoto"

    const-string v1, ""

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 249
    .local v12, "string":Ljava/lang/String;
    :goto_2
    iput-object v12, v10, Lcom/vkcoffee/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->val$comment:Ljava/lang/String;

    iput-object v0, v10, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/RepostActivity;->access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    iput v0, v10, Lcom/vkcoffee/android/NewsEntry;->retweetType:I

    .line 252
    iput v6, v10, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    .line 253
    iput v6, v10, Lcom/vkcoffee/android/NewsEntry;->numRetweets:I

    .line 254
    iget v0, v10, Lcom/vkcoffee/android/NewsEntry;->flags:I

    and-int/lit8 v0, v0, -0xd

    iput v0, v10, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 255
    iget v0, v10, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/lit16 v0, v0, 0xa2

    iput v0, v10, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 256
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/RepostActivity;->access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/RepostActivity;->access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/RepostActivity;->access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/RepostActivity;->access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    iput-object v0, v10, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/RepostActivity;->access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    iput-object v0, v10, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    .line 259
    iget-object v0, v10, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, v10, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v1, v10, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/vkcoffee/android/attachments/RepostAttachment;

    if-eqz v0, :cond_3

    .line 260
    iget-object v0, v10, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v1, v10, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 262
    :cond_3
    iget-object v13, v10, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v0, Lcom/vkcoffee/android/attachments/RepostAttachment;

    iget-object v1, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v1}, Lcom/vkcoffee/android/RepostActivity;->access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v1

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->retweetUID:I

    iget-object v2, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v2}, Lcom/vkcoffee/android/RepostActivity;->access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v2

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->retweetOrigId:I

    iget-object v3, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v3}, Lcom/vkcoffee/android/RepostActivity;->access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v3

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->retweetOrigTime:I

    iget-object v4, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v4}, Lcom/vkcoffee/android/RepostActivity;->access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v4

    iget-object v4, v4, Lcom/vkcoffee/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v5}, Lcom/vkcoffee/android/RepostActivity;->access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v5

    iget-object v5, v5, Lcom/vkcoffee/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/vkcoffee/android/attachments/RepostAttachment;-><init>(IIILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/RepostActivity;->access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iput v0, v10, Lcom/vkcoffee/android/NewsEntry;->retweetOrigId:I

    .line 264
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/RepostActivity;->access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->time:I

    iput v0, v10, Lcom/vkcoffee/android/NewsEntry;->retweetOrigTime:I

    .line 265
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/RepostActivity;->access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iput v0, v10, Lcom/vkcoffee/android/NewsEntry;->retweetUID:I

    .line 266
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/RepostActivity;->access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->userName:Ljava/lang/String;

    iput-object v0, v10, Lcom/vkcoffee/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/RepostActivity;->access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    iput-object v0, v10, Lcom/vkcoffee/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    .line 281
    :goto_3
    invoke-static {v10}, Lcom/vkcoffee/android/cache/NewsfeedCache;->addToTop(Lcom/vkcoffee/android/NewsEntry;)V

    .line 282
    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.vkcoffee.android.NEW_POST_ADDED"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .local v9, "intent":Landroid/content/Intent;
    const-string v0, "entry"

    invoke-virtual {v9, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 284
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    const-string v1, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v9, v1}, Lcom/vkcoffee/android/RepostActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 285
    iget v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->val$gid:I

    if-nez v0, :cond_9

    .line 286
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    const v1, 0x7f080446

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 290
    :goto_4
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/RepostActivity;->access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    iget v1, p1, Lcom/vkcoffee/android/api/wall/WallRepost$Result;->retweets:I

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->numRetweets:I

    .line 291
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/RepostActivity;->access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    iget v1, p1, Lcom/vkcoffee/android/api/wall/WallRepost$Result;->likes:I

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    .line 292
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/RepostActivity;->access$3(Lcom/vkcoffee/android/RepostActivity;)V

    .line 293
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/RepostActivity;->finish()V

    .line 294
    return-void

    .line 240
    .end local v8    # "i":I
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v12    # "string":Ljava/lang/String;
    :cond_4
    sget v8, Lcom/vkcoffee/android/Global;->uid:I

    goto/16 :goto_0

    .line 243
    .restart local v8    # "i":I
    :cond_5
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/RepostActivity;->access$1(Lcom/vkcoffee/android/RepostActivity;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 247
    :cond_6
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/RepostActivity;->access$2(Lcom/vkcoffee/android/RepostActivity;)Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "string":Ljava/lang/String;
    goto/16 :goto_2

    .line 268
    :cond_7
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/RepostActivity;->access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 269
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/RepostActivity;->access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->retweetOrigId:I

    iput v0, v10, Lcom/vkcoffee/android/NewsEntry;->retweetOrigId:I

    .line 270
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/RepostActivity;->access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->retweetOrigTime:I

    iput v0, v10, Lcom/vkcoffee/android/NewsEntry;->retweetOrigTime:I

    .line 271
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/RepostActivity;->access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->retweetUID:I

    iput v0, v10, Lcom/vkcoffee/android/NewsEntry;->retweetUID:I

    .line 272
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/RepostActivity;->access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    iput-object v0, v10, Lcom/vkcoffee/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/RepostActivity;->access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    iput-object v0, v10, Lcom/vkcoffee/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    goto/16 :goto_3

    .line 275
    :cond_8
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/RepostActivity;->access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iput v0, v10, Lcom/vkcoffee/android/NewsEntry;->retweetOrigId:I

    .line 276
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/RepostActivity;->access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->time:I

    iput v0, v10, Lcom/vkcoffee/android/NewsEntry;->retweetOrigTime:I

    .line 277
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/RepostActivity;->access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iput v0, v10, Lcom/vkcoffee/android/NewsEntry;->retweetUID:I

    .line 278
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/RepostActivity;->access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->userName:Ljava/lang/String;

    iput-object v0, v10, Lcom/vkcoffee/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/RepostActivity;->access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    iput-object v0, v10, Lcom/vkcoffee/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    goto/16 :goto_3

    .line 288
    .restart local v9    # "intent":Landroid/content/Intent;
    :cond_9
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity$1;->this$0:Lcom/vkcoffee/android/RepostActivity;

    const v1, 0x7f080445

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/wall/WallRepost$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/RepostActivity$1;->success(Lcom/vkcoffee/android/api/wall/WallRepost$Result;)V

    return-void
.end method

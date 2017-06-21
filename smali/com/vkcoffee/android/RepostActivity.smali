.class public Lcom/vkcoffee/android/RepostActivity;
.super Landroid/app/Activity;
.source "RepostActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$1;,
        Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$2;,
        Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$3;,
        Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$4;,
        Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$5;,
        Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$6;
    }
.end annotation


# static fields
.field private static final SEL_CHAT_RESULT:I = 0x66

.field private static final SEL_GROUP_RESULT:I = 0x65


# instance fields
.field private groupName:Ljava/lang/String;

.field private groupPhoto:Ljava/lang/String;

.field private logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

.field private newPost:Z

.field private post:Lcom/vkcoffee/android/NewsEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/RepostActivity;)Lcom/vkcoffee/android/NewsEntry;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/RepostActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/RepostActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity;->groupPhoto:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/RepostActivity;)V
    .locals 0

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/vkcoffee/android/RepostActivity;->broadcastUpdate()V

    return-void
.end method

.method private broadcastUpdate()V
    .locals 9

    .prologue
    const/16 v6, 0x8

    const/4 v8, 0x4

    .line 305
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-nez v0, :cond_0

    .line 306
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.vkcoffee.android.POST_UPDATED"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "post_id"

    iget-object v1, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    const-string v0, "owner_id"

    iget-object v1, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    const-string v0, "comments"

    iget-object v1, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    const-string v0, "retweets"

    iget-object v1, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->numRetweets:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    const-string v0, "likes"

    iget-object v1, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    const-string v0, "liked"

    iget-object v1, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v1, v6}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 313
    const-string v0, "retweeted"

    iget-object v1, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v1, v8}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 314
    const-string v0, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v7, v0}, Lcom/vkcoffee/android/RepostActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget-object v1, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iget-object v2, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    iget-object v3, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    iget-object v4, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v4, v4, Lcom/vkcoffee/android/NewsEntry;->numRetweets:I

    iget-object v5, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v5

    iget-object v6, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v6, v8}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/vkcoffee/android/cache/NewsfeedCache;->update(IIIIIZZ)V

    .line 317
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private doRepostWithComment(ILjava/lang/String;)V
    .locals 6
    .param p1, "gid"    # I
    .param p2, "comment"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 211
    const-string v1, "wall"

    .line 212
    .local v1, "type":Ljava/lang/String;
    const/4 v0, 0x0

    .line 213
    .local v0, "akey":Ljava/lang/String;
    iget-object v2, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 214
    const-string v1, "photo"

    .line 215
    iget-object v2, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v2, v2, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    iget-object v0, v2, Lcom/vkcoffee/android/attachments/PhotoAttachment;->accessKey:Ljava/lang/String;

    .line 217
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 218
    const-string v1, "video"

    .line 219
    iget-object v2, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v2, v2, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/attachments/VideoAttachment;

    iget-object v0, v2, Lcom/vkcoffee/android/attachments/VideoAttachment;->accessKey:Ljava/lang/String;

    .line 221
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_2

    .line 222
    const-string v1, "market"

    .line 224
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    .line 225
    const-string v1, "wall_ads"

    .line 228
    :cond_3
    new-instance v2, Lcom/vkcoffee/android/api/wall/WallRepost;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v4, v4, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v4, v4, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1, p2, v0}, Lcom/vkcoffee/android/api/wall/WallRepost;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "ref"

    invoke-virtual {p0}, Lcom/vkcoffee/android/RepostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "referer"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/vkcoffee/android/api/wall/WallRepost;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/RepostActivity$1;

    invoke-direct {v3, p0, p0, p1, p2}, Lcom/vkcoffee/android/RepostActivity$1;-><init>(Lcom/vkcoffee/android/RepostActivity;Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    .line 301
    invoke-virtual {v2, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 302
    return-void
.end method

.method private repostWithComment(I)V
    .locals 7
    .param p1, "gid"    # I

    .prologue
    const/high16 v5, 0x41800000    # 16.0f

    const/4 v6, 0x0

    .line 180
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 181
    .local v1, "ed":Landroid/widget/EditText;
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setLines(I)V

    .line 182
    const/16 v3, 0x33

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 183
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 184
    .local v2, "fl":Landroid/widget/FrameLayout;
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 185
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 186
    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    invoke-virtual {v2, v3, v6, v4, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 188
    :cond_0
    new-instance v3, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080438

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f08031e

    invoke-static {p0, p1, v1}, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/RepostActivity;ILandroid/widget/EditText;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0800b7

    invoke-static {p0}, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$4;->lambdaFactory$(Lcom/vkcoffee/android/RepostActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-static {p0}, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$5;->lambdaFactory$(Lcom/vkcoffee/android/RepostActivity;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 189
    .local v0, "dlg":Landroid/app/AlertDialog;
    invoke-static {p0, v1}, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$6;->lambdaFactory$(Lcom/vkcoffee/android/RepostActivity;Landroid/widget/EditText;)Landroid/content/DialogInterface$OnShowListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 190
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 191
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 192
    return-void
.end method

.method private startChatChooser()V
    .locals 2

    .prologue
    .line 136
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$Builder;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$Builder;->setSelectMode()Lcom/vkcoffee/android/fragments/messages/DialogsFragment$Builder;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, p0, v1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$Builder;->forResult(Landroid/app/Activity;I)V

    .line 137
    return-void
.end method

.method private startGroupChooser()V
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$Builder;-><init>(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$Builder;->select(Z)Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$Builder;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, p0, v1}, Lcom/vkcoffee/android/fragments/groups/AdminedGroupsFragment$Builder;->forResult(Landroid/app/Activity;I)V

    .line 133
    return-void
.end method


# virtual methods
.method lambda$onCreate$660(Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "var1"    # Ljava/util/ArrayList;
    .param p2, "var2"    # Landroid/content/DialogInterface;
    .param p3, "var3"    # I

    .prologue
    const/4 v5, 0x0

    .line 75
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "var4":Ljava/lang/String;
    const/4 v2, -0x1

    .line 77
    .local v2, "var6":B
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 94
    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 120
    :goto_1
    return-void

    .line 79
    :sswitch_0
    const-string v3, "me"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    const/4 v2, 0x0

    .line 82
    goto :goto_0

    .line 84
    :sswitch_1
    const-string v3, "msg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    const/4 v2, 0x2

    .line 87
    goto :goto_0

    .line 89
    :sswitch_2
    const-string v3, "group"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    const/4 v2, 0x1

    goto :goto_0

    .line 96
    :pswitch_0
    iget-boolean v3, p0, Lcom/vkcoffee/android/RepostActivity;->newPost:Z

    if-eqz v3, :cond_2

    .line 97
    new-instance v1, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;-><init>()V

    .line 98
    .local v1, "var5":Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;
    iget-object v3, p0, Lcom/vkcoffee/android/RepostActivity;->groupName:Ljava/lang/String;

    iget-object v4, p0, Lcom/vkcoffee/android/RepostActivity;->groupPhoto:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->attachGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    .line 99
    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->uid(I)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    .line 100
    invoke-virtual {v1, v5}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->suggest(Z)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    .line 101
    invoke-virtual {v1, v5}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->isPublic(Z)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    .line 102
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->send(Z)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    .line 103
    iget-object v3, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 104
    iget-object v3, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v4, v4, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/vkcoffee/android/attachments/Attachment;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/vkcoffee/android/attachments/Attachment;

    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->attachAttachments([Lcom/vkcoffee/android/attachments/Attachment;)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    .line 107
    :cond_1
    invoke-virtual {v1, p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->go(Landroid/content/Context;)V

    .line 108
    invoke-virtual {p0}, Lcom/vkcoffee/android/RepostActivity;->finish()V

    goto :goto_1

    .line 110
    .end local v1    # "var5":Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;
    :cond_2
    invoke-direct {p0, v5}, Lcom/vkcoffee/android/RepostActivity;->repostWithComment(I)V

    goto :goto_1

    .line 114
    :pswitch_1
    invoke-direct {p0}, Lcom/vkcoffee/android/RepostActivity;->startGroupChooser()V

    goto :goto_1

    .line 117
    :pswitch_2
    invoke-direct {p0}, Lcom/vkcoffee/android/RepostActivity;->startChatChooser()V

    goto :goto_1

    .line 77
    :sswitch_data_0
    .sparse-switch
        0xd98 -> :sswitch_0
        0x1a781 -> :sswitch_1
        0x5e0f67f -> :sswitch_2
    .end sparse-switch

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method lambda$onCreate$661(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/vkcoffee/android/RepostActivity;->finish()V

    .line 124
    return-void
.end method

.method lambda$repostWithComment$662(ILandroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "editText"    # Landroid/widget/EditText;
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "which"    # I

    .prologue
    .line 195
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/RepostActivity;->doRepostWithComment(ILjava/lang/String;)V

    .line 196
    return-void
.end method

.method lambda$repostWithComment$663(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/vkcoffee/android/RepostActivity;->finish()V

    .line 200
    return-void
.end method

.method lambda$repostWithComment$664(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/vkcoffee/android/RepostActivity;->finish()V

    .line 204
    return-void
.end method

.method lambda$repostWithComment$665(Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 207
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/RepostActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 208
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 140
    if-eq p2, v6, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/vkcoffee/android/RepostActivity;->finish()V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const/16 v3, 0x65

    if-ne p1, v3, :cond_3

    if-ne p2, v6, :cond_3

    .line 145
    const-string v3, "name"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/RepostActivity;->groupName:Ljava/lang/String;

    .line 146
    const-string v3, "photo"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/RepostActivity;->groupPhoto:Ljava/lang/String;

    .line 147
    iget-boolean v3, p0, Lcom/vkcoffee/android/RepostActivity;->newPost:Z

    if-eqz v3, :cond_5

    .line 148
    new-instance v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;-><init>()V

    .line 149
    .local v0, "builder":Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;
    iget-object v3, p0, Lcom/vkcoffee/android/RepostActivity;->groupName:Ljava/lang/String;

    iget-object v4, p0, Lcom/vkcoffee/android/RepostActivity;->groupPhoto:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->attachGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    .line 150
    const-string v3, "gid"

    invoke-virtual {p3, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->uid(I)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    .line 151
    invoke-virtual {v0, v5}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->suggest(Z)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    .line 152
    invoke-virtual {v0, v7}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->isPublic(Z)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    .line 153
    invoke-virtual {v0, v7}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->send(Z)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    .line 154
    iget-object v3, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 155
    iget-object v3, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v4, v4, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/vkcoffee/android/attachments/Attachment;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/vkcoffee/android/attachments/Attachment;

    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->attachAttachments([Lcom/vkcoffee/android/attachments/Attachment;)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    .line 157
    :cond_2
    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->go(Landroid/content/Context;)V

    .line 158
    invoke-virtual {p0}, Lcom/vkcoffee/android/RepostActivity;->finish()V

    .line 163
    .end local v0    # "builder":Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;
    :cond_3
    :goto_1
    const/16 v3, 0x66

    if-ne p1, v3, :cond_0

    if-ne p2, v6, :cond_0

    .line 164
    const-string v3, "profile"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    .line 165
    .local v2, "profile":Lcom/vkcoffee/android/UserProfile;
    new-instance v1, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    iget v3, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    iget-object v4, v2, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;-><init>(ILjava/lang/String;)V

    .line 166
    .local v1, "builder2":Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;
    iget-object v3, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v4, 0x12

    if-ne v3, v4, :cond_6

    .line 167
    new-array v4, v7, [Lcom/vkcoffee/android/attachments/Attachment;

    iget-object v3, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/attachments/Attachment;

    aput-object v3, v4, v5

    invoke-virtual {v1, v4}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->setAttachments([Landroid/os/Parcelable;)Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    .line 171
    :goto_2
    iget v3, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    const v4, 0x77359400

    if-ge v3, v4, :cond_4

    .line 172
    iget-object v3, v2, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->setPhoto(Ljava/lang/CharSequence;)Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    .line 174
    :cond_4
    invoke-virtual {v1, p0}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->go(Landroid/content/Context;)V

    .line 175
    invoke-virtual {p0}, Lcom/vkcoffee/android/RepostActivity;->finish()V

    goto/16 :goto_0

    .line 160
    .end local v1    # "builder2":Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;
    .end local v2    # "profile":Lcom/vkcoffee/android/UserProfile;
    :cond_5
    const-string v3, "gid"

    invoke-virtual {p3, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/vkcoffee/android/RepostActivity;->repostWithComment(I)V

    goto :goto_1

    .line 169
    .restart local v1    # "builder2":Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;
    .restart local v2    # "profile":Lcom/vkcoffee/android/UserProfile;
    :cond_6
    iget-object v3, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->setPost(Landroid/os/Parcelable;)Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x5

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {p0}, Lcom/vkcoffee/android/activities/LogoutReceiver;->register(Landroid/app/Activity;)Lcom/vkcoffee/android/activities/LogoutReceiver;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/RepostActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    .line 49
    invoke-virtual {p0, v5, v5}, Lcom/vkcoffee/android/RepostActivity;->overridePendingTransition(II)V

    .line 50
    invoke-virtual {p0}, Lcom/vkcoffee/android/RepostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "post"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/NewsEntry;

    iput-object v2, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    .line 51
    invoke-virtual {p0}, Lcom/vkcoffee/android/RepostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "new_post"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/vkcoffee/android/RepostActivity;->newPost:Z

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v0, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v2, v6}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget-object v3, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->userID:I

    if-eq v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-eq v2, v6, :cond_1

    iget-object v2, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-eq v2, v4, :cond_1

    iget-object v2, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-ne v2, v7, :cond_6

    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 55
    iget-object v2, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v2, v3, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->userID:I

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v2, v3, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-ne v2, v7, :cond_5

    iget-object v2, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->userID:I

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v2, v3, :cond_5

    .line 56
    :cond_4
    const v2, 0x7f080447

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/RepostActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    const-string v2, "me"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_5
    const v2, 0x7f08043b

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/RepostActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    const-string v2, "group"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_6
    iget-object v2, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-eq v2, v4, :cond_7

    .line 63
    const v2, 0x7f08043c

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/RepostActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v2, "msg"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_7
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/RepostActivity;->setContentView(Landroid/view/View;)V

    .line 67
    invoke-virtual {p0}, Lcom/vkcoffee/android/RepostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "msg"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 68
    invoke-direct {p0}, Lcom/vkcoffee/android/RepostActivity;->startChatChooser()V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_8
    new-instance v3, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/vkcoffee/android/RepostActivity;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-ne v2, v4, :cond_9

    const v2, 0x7f08043a

    :goto_1
    invoke-virtual {v3, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-static {p0, v0}, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/RepostActivity;Ljava/util/ArrayList;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-static {p0}, Lcom/vkcoffee/android/RepostActivity$RepostActivity$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/RepostActivity;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_9
    const v2, 0x7f080439

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/vkcoffee/android/RepostActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    invoke-virtual {v0}, Lcom/vkcoffee/android/activities/LogoutReceiver;->unregister()V

    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 129
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 325
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 326
    invoke-static {}, Lcom/vkcoffee/android/AppStateTracker;->onActivityPaused()V

    .line 327
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 320
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 321
    invoke-static {p0}, Lcom/vkcoffee/android/AppStateTracker;->onActivityResumed(Landroid/app/Activity;)V

    .line 322
    return-void
.end method

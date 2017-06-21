.class Lcom/vkcoffee/android/MenuListView$3;
.super Landroid/content/BroadcastReceiver;
.source "MenuListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/MenuListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/MenuListView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/MenuListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    .line 172
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x5

    .line 174
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "action":Ljava/lang/String;
    const/4 v4, -0x1

    .line 176
    .local v4, "i":I
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 238
    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 310
    :cond_1
    :goto_1
    return-void

    .line 176
    :sswitch_0
    const-string v9, "com.vkcoffee.android.SERVICE_STOPPING"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 202
    const-string v9, "com.vkcoffee.android.SERVICE_STOPPING"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 203
    const/16 v4, 0x8

    .line 204
    goto :goto_0

    .line 176
    :sswitch_1
    const-string v9, "com.vkcoffee.android.FRIEND_LIST_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 184
    const-string v9, "com.vkcoffee.android.FRIEND_LIST_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 185
    const/4 v4, 0x0

    .line 186
    goto :goto_0

    .line 176
    :sswitch_2
    const-string v9, "com.vkcoffee.android.FRIEND_REQUESTS_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 214
    const-string v9, "com.vkcoffee.android.FRIEND_REQUESTS_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 215
    const/4 v4, 0x7

    .line 216
    goto :goto_0

    .line 176
    :sswitch_3
    const-string v9, "com.vkcoffee.android.GROUPS_UPDATED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 196
    const-string v9, "com.vkcoffee.android.GROUPS_UPDATED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 197
    const/4 v4, 0x3

    .line 198
    goto :goto_0

    .line 176
    :sswitch_4
    const-string v9, "com.vkcoffee.android.USER_PRESENCE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 178
    const-string v9, "com.vkcoffee.android.USER_PRESENCE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 179
    const/4 v4, 0x2

    .line 180
    goto :goto_0

    .line 176
    :sswitch_5
    const-string v9, "com.vkcoffee.android.USER_NAME_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 220
    const-string v9, "com.vkcoffee.android.USER_NAME_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 221
    const/4 v4, 0x5

    .line 222
    goto :goto_0

    .line 176
    :sswitch_6
    const-string v9, "com.vkcoffee.android.USER_PHOTO_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 208
    const-string v9, "com.vkcoffee.android.USER_PHOTO_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 209
    const/4 v4, 0x4

    .line 210
    goto/16 :goto_0

    .line 176
    :sswitch_7
    const-string v9, "com.vkcoffee.android.COUNTERS_UPDATED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 190
    const-string v9, "com.vkcoffee.android.COUNTERS_UPDATED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 191
    const/4 v4, 0x6

    .line 192
    goto/16 :goto_0

    .line 176
    :sswitch_8
    const-string v9, "com.vkcoffee.android.GROUP_LIST_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 226
    const-string v9, "com.vkcoffee.android.GROUP_LIST_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 227
    const/4 v4, 0x1

    .line 228
    goto/16 :goto_0

    .line 176
    :sswitch_9
    const-string v9, "com.vkcoffee.android.ALBUM_ART_AVAILABLE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 232
    const-string v9, "com.vkcoffee.android.ALBUM_ART_AVAILABLE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 233
    const/16 v4, 0x9

    goto/16 :goto_0

    .line 240
    :pswitch_0
    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v9}, Lcom/vkcoffee/android/MenuListView;->access$4(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 241
    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v9}, Lcom/vkcoffee/android/MenuListView;->access$4(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {v9}, Lcom/vkcoffee/android/data/Friends;->getFriends(Ljava/util/ArrayList;)V

    .line 242
    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v9}, Lcom/vkcoffee/android/MenuListView;->access$4(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v11, :cond_2

    .line 243
    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v9}, Lcom/vkcoffee/android/MenuListView;->access$4(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object v10, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v10}, Lcom/vkcoffee/android/MenuListView;->access$4(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v11, v10}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 245
    :cond_2
    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v9}, Lcom/vkcoffee/android/MenuListView;->updateList()V

    goto/16 :goto_1

    .line 248
    :pswitch_1
    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v9}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 249
    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v9}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {v9}, Lcom/vkcoffee/android/data/Groups;->getGroups(Ljava/util/ArrayList;)V

    .line 250
    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v9}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v11, :cond_3

    .line 251
    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v9}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object v10, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v10}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v11, v10}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 253
    :cond_3
    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v9}, Lcom/vkcoffee/android/MenuListView;->updateList()V

    goto/16 :goto_1

    .line 256
    :pswitch_2
    const-string v9, "uid"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 257
    .local v8, "uid":I
    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v9}, Lcom/vkcoffee/android/MenuListView;->access$4(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 258
    .local v3, "friendsSize":I
    const/4 v5, 0x0

    .local v5, "i2":I
    :goto_2
    if-ge v5, v3, :cond_1

    .line 259
    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v9}, Lcom/vkcoffee/android/MenuListView;->access$4(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/UserProfile;

    .line 260
    .local v7, "p":Lcom/vkcoffee/android/UserProfile;
    iget v9, v7, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ne v9, v8, :cond_4

    .line 261
    const-string v9, "online"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, v7, Lcom/vkcoffee/android/UserProfile;->online:I

    .line 262
    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v9}, Lcom/vkcoffee/android/MenuListView;->updateList()V

    .line 258
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 267
    .end local v3    # "friendsSize":I
    .end local v5    # "i2":I
    .end local v7    # "p":Lcom/vkcoffee/android/UserProfile;
    .end local v8    # "uid":I
    :pswitch_3
    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v9}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 268
    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v9}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {v9}, Lcom/vkcoffee/android/data/Groups;->getGroups(Ljava/util/ArrayList;)V

    .line 269
    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v9}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v11, :cond_5

    .line 270
    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v9}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object v10, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v10}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v11, v10}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 272
    :cond_5
    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v9}, Lcom/vkcoffee/android/MenuListView;->updateList()V

    goto/16 :goto_1

    .line 275
    :pswitch_4
    const-string v9, "id"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    sget v10, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v9, v10, :cond_1

    .line 276
    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    const-string v10, "photo"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vkcoffee/android/MenuListView;->access$6(Lcom/vkcoffee/android/MenuListView;Ljava/lang/String;)V

    .line 277
    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v9}, Lcom/vkcoffee/android/MenuListView;->updateList()V

    .line 278
    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v9}, Lcom/vkcoffee/android/MenuListView;->access$7(Lcom/vkcoffee/android/MenuListView;)Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    move-result-object v9

    invoke-virtual {v9}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->updateImages()V

    goto/16 :goto_1

    .line 283
    :pswitch_5
    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    const-string v10, "name"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vkcoffee/android/MenuListView;->access$8(Lcom/vkcoffee/android/MenuListView;Ljava/lang/String;)V

    .line 284
    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v9}, Lcom/vkcoffee/android/MenuListView;->updateList()V

    .line 285
    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v9}, Lcom/vkcoffee/android/MenuListView;->access$7(Lcom/vkcoffee/android/MenuListView;)Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    move-result-object v9

    invoke-virtual {v9}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->updateImages()V

    goto/16 :goto_1

    .line 289
    :pswitch_6
    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v9}, Lcom/vkcoffee/android/MenuListView;->updateList()V

    goto/16 :goto_1

    .line 292
    :pswitch_7
    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v9}, Lcom/vkcoffee/android/MenuListView;->access$0(Lcom/vkcoffee/android/MenuListView;)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 293
    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v9}, Lcom/vkcoffee/android/MenuListView;->access$1(Lcom/vkcoffee/android/MenuListView;)V

    goto/16 :goto_1

    .line 296
    :pswitch_8
    const-string v9, "aid"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 297
    .local v1, "aid":I
    const-string v9, "oid"

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 298
    .local v6, "oid":I
    sget-object v9, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v9, :cond_1

    sget-object v9, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v9}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 299
    sget-object v9, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v9}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v2

    .line 300
    .local v2, "cur":Lcom/vkcoffee/android/AudioFile;
    iget v9, v2, Lcom/vkcoffee/android/AudioFile;->aid:I

    if-ne v9, v1, :cond_1

    iget v9, v2, Lcom/vkcoffee/android/AudioFile;->oid:I

    if-ne v9, v6, :cond_1

    .line 301
    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v9, v6}, Lcom/vkcoffee/android/MenuListView;->access$9(Lcom/vkcoffee/android/MenuListView;I)V

    .line 302
    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v9, v1}, Lcom/vkcoffee/android/MenuListView;->access$10(Lcom/vkcoffee/android/MenuListView;I)V

    .line 303
    iget-object v10, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    iget-object v9, p0, Lcom/vkcoffee/android/MenuListView$3;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v9}, Lcom/vkcoffee/android/MenuListView;->access$0(Lcom/vkcoffee/android/MenuListView;)Landroid/view/View;

    move-result-object v9

    const v11, 0x7f100288

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-static {v10, v6, v1, v9}, Lcom/vkcoffee/android/MenuListView;->access$11(Lcom/vkcoffee/android/MenuListView;IILandroid/widget/ImageView;)V

    goto/16 :goto_1

    .line 176
    :sswitch_data_0
    .sparse-switch
        -0x61c15a23 -> :sswitch_0
        -0x5c027f6b -> :sswitch_1
        -0x3d47f45 -> :sswitch_2
        0x132a87ef -> :sswitch_3
        0x1b7c6050 -> :sswitch_4
        0x2e1c6db5 -> :sswitch_5
        0x3d82a332 -> :sswitch_6
        0x409e8d52 -> :sswitch_7
        0x5a490112 -> :sswitch_8
        0x65d2a25e -> :sswitch_9
    .end sparse-switch

    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

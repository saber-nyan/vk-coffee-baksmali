.class Lcom/vkcoffee/android/GCMBroadcastReceiver$2;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "GCMBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/GCMBroadcastReceiver;->lambda$onReceive$636(Landroid/content/Intent;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<[",
        "Lcom/vkcoffee/android/NewsEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/GCMBroadcastReceiver;

.field final synthetic val$cap$1:Landroid/content/Context;

.field final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/GCMBroadcastReceiver;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/GCMBroadcastReceiver;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$2;->this$0:Lcom/vkcoffee/android/GCMBroadcastReceiver;

    iput-object p2, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$2;->val$cap$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$2;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 373
    check-cast p1, [Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/GCMBroadcastReceiver$2;->success([Lcom/vkcoffee/android/NewsEntry;)V

    return-void
.end method

.method public success([Lcom/vkcoffee/android/NewsEntry;)V
    .locals 12
    .param p1, "result"    # [Lcom/vkcoffee/android/NewsEntry;

    .prologue
    .line 376
    array-length v7, p1

    const/4 v8, 0x1

    if-ge v7, v8, :cond_0

    .line 407
    :goto_0
    return-void

    .line 379
    :cond_0
    const/4 v7, 0x0

    aget-object v1, p1, v7

    .line 380
    .local v1, "e":Lcom/vkcoffee/android/NewsEntry;
    iget-object v7, v1, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    invoke-static {v7}, Lcom/vkcoffee/android/Global;->replaceEmojiModifiers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/vkcoffee/android/LinkParser;->stripMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Lcom/vkcoffee/android/attachments/Attachment;->appendLocalizedDescription(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    .line 381
    .local v6, "text":Ljava/lang/String;
    iget-object v7, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$2;->val$cap$1:Landroid/content/Context;

    invoke-static {v7}, Lcom/vkcoffee/android/LinkRedirActivity;->createIntentForNotification(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 382
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "zmxcnvmxndflsajlksda"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "vkontakte://vk.com/wall"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$2;->val$extras:Landroid/os/Bundle;

    const-string/jumbo v9, "from_id"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$2;->val$extras:Landroid/os/Bundle;

    const-string/jumbo v9, "post_id"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 384
    const/high16 v7, 0x10000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 385
    iget-object v7, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$2;->val$cap$1:Landroid/content/Context;

    invoke-static {v7}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v7

    iget-object v8, v1, Lcom/vkcoffee/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 386
    .local v4, "photo":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$2;->val$cap$1:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget v8, v1, Lcom/vkcoffee/android/NewsEntry;->time:I

    int-to-long v8, v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    .line 387
    invoke-virtual {v7, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/vkcoffee/android/NewsEntry;->userName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$2;->val$cap$1:Landroid/content/Context;

    const v10, 0x7f080308

    .line 388
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$2;->val$cap$1:Landroid/content/Context;

    const/4 v9, 0x0

    const/high16 v10, 0x10000000

    .line 389
    invoke-static {v8, v9, v2, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 390
    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    if-eqz v4, :cond_1

    .line 391
    .end local v4    # "photo":Landroid/graphics/Bitmap;
    :goto_1
    const/high16 v8, 0x42800000    # 64.0f

    invoke-static {v8}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v8

    const/high16 v9, 0x42800000    # 64.0f

    invoke-static {v9}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v9

    const/4 v10, 0x1

    invoke-static {v4, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v7

    const v8, 0x7f02021d

    .line 392
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 394
    .local v0, "bldr":Landroid/app/Notification$Builder;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_2

    .line 395
    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 397
    invoke-virtual {v7, v6}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v3

    .line 401
    .local v3, "ntf":Landroid/app/Notification;
    :goto_2
    iget v7, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v3, Landroid/app/Notification;->flags:I

    .line 402
    iget-object v7, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$2;->val$cap$1:Landroid/content/Context;

    const-string/jumbo v8, "__"

    const/4 v9, 0x1

    invoke-static {v7, v3, v8, v9}, Lcom/vkcoffee/android/NotificationUtils;->applySettings(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Z)V

    .line 403
    iget-object v7, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$2;->val$cap$1:Landroid/content/Context;

    const-string/jumbo v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 404
    .local v5, "srv":Landroid/app/NotificationManager;
    const/16 v7, 0x1fc

    invoke-virtual {v5, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 406
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->updateCounters()V

    goto/16 :goto_0

    .line 390
    .end local v0    # "bldr":Landroid/app/Notification$Builder;
    .end local v3    # "ntf":Landroid/app/Notification;
    .end local v5    # "srv":Landroid/app/NotificationManager;
    .restart local v4    # "photo":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v8, p0, Lcom/vkcoffee/android/GCMBroadcastReceiver$2;->val$cap$1:Landroid/content/Context;

    .line 391
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0202f2

    invoke-static {v8, v9}, Lcom/vkcoffee/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1

    .line 399
    .end local v4    # "photo":Landroid/graphics/Bitmap;
    .restart local v0    # "bldr":Landroid/app/Notification$Builder;
    :cond_2
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .restart local v3    # "ntf":Landroid/app/Notification;
    goto :goto_2
.end method

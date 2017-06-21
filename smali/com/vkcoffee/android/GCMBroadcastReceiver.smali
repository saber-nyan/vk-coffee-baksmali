.class public Lcom/vkcoffee/android/GCMBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GCMBroadcastReceiver.java"


# static fields
.field public static final ID_FRIEND_ACCEPTED_NOTIFICATION:I = 0x1ff

.field public static final ID_FRIEND_FOUND_NOTIFICATION:I = 0x1f7

.field public static final ID_FRIEND_NOTIFICATION:I = 0x1f5

.field public static final ID_GAME_INSTALL_NOTIFICATION:I = 0x1f9

.field public static final ID_GAME_NOTIFICATION:I = 0x1f8

.field public static final ID_GIFT_NOTIFICATION:I = 0x1fa

.field public static final ID_GROUP_ACCEPTED_NOTIFICATION:I = 0x200

.field public static final ID_GROUP_INVITE_NOTIFICATION:I = 0x1fe

.field public static final ID_LIKE_NOTIFICATION:I = 0x1fb

.field public static final ID_OPEN_URL_NOTIFICATION_FIRST:I = 0x208

.field public static final ID_POST_PUBLISHED_NOTIFICATION:I = 0x201

.field public static final ID_REPLY_NOTIFICATION:I = 0x1f6

.field public static final ID_REPOST_NOTIFICATION:I = 0x1fd

.field public static final ID_SHOW_MESSAGE_NOTIFICATION_FIRST:I = 0x244

.field public static final ID_SUBSCRIBED_POST_NOTIFICATION:I = 0x1fc

.field public static final ID_UPCOMING_EVENT_NOTIFICATION:I = 0x202

.field public static final ID_VALIDATE_ACTION_NOTIFICATION_FIRST:I = 0x230

.field public static final ID_VALIDATE_DEVICE_NOTIFICATION_FIRST:I = 0x21c

.field public static final ID_WALL_POST_NOTIFICATION:I = 0x1fb

.field private static openUrlNotificationLast:I

.field private static showMessageNotificationLast:I

.field private static validateActionNotificationLast:I

.field private static validateDeviceNotificationLast:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    sput v0, Lcom/vkcoffee/android/GCMBroadcastReceiver;->openUrlNotificationLast:I

    .line 60
    sput v0, Lcom/vkcoffee/android/GCMBroadcastReceiver;->validateDeviceNotificationLast:I

    .line 61
    sput v0, Lcom/vkcoffee/android/GCMBroadcastReceiver;->validateActionNotificationLast:I

    .line 62
    sput v0, Lcom/vkcoffee/android/GCMBroadcastReceiver;->showMessageNotificationLast:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic lambda$null$626(Landroid/content/Context;Landroid/content/Intent;ILjava/util/ArrayList;)V
    .locals 23
    .param p3, "users"    # Ljava/util/ArrayList;

    .prologue
    .line 537
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 589
    :goto_0
    return-void

    .line 541
    :cond_0
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/vkcoffee/android/UserProfile;

    .line 545
    .local v16, "user":Lcom/vkcoffee/android/UserProfile;
    :try_start_0
    new-instance v17, Lcom/vkcoffee/android/api/friends/FriendsGetCommonCount;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    move/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lcom/vkcoffee/android/api/friends/FriendsGetCommonCount;-><init>(I)V

    invoke-virtual/range {v17 .. v17}, Lcom/vkcoffee/android/api/friends/FriendsGetCommonCount;->execSyncWithResult()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 551
    .local v4, "commonCount":I
    :goto_1
    const/16 v17, 0x0

    const/high16 v18, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 552
    .local v9, "pIntent":Landroid/app/PendingIntent;
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v17, "com.vkcoffee.android.ACCEPT_FRIEND"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 553
    .local v5, "intentAccept":Landroid/content/Intent;
    const-string/jumbo v17, "uid"

    move-object/from16 v0, v16

    iget v0, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 554
    const-string/jumbo v17, "token"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    iget v0, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/utils/XSRFTokenUtil;->generateToken(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    const/16 v17, 0x1

    const/high16 v18, 0x50000000

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 556
    .local v10, "pIntentAccept":Landroid/app/PendingIntent;
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v17, "com.vkcoffee.android.DECLINE_FRIEND"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 557
    .local v6, "intentDecline":Landroid/content/Intent;
    const-string/jumbo v17, "uid"

    move-object/from16 v0, v16

    iget v0, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 558
    const-string/jumbo v17, "token"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    iget v0, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/utils/XSRFTokenUtil;->generateToken(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    const/16 v17, 0x2

    const/high16 v18, 0x50000000

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 560
    .local v11, "pIntentDecline":Landroid/app/PendingIntent;
    invoke-static/range {p0 .. p0}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v17

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 562
    .local v12, "photo":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f080058

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 563
    .local v14, "subtitle":Ljava/lang/String;
    if-lez v4, :cond_1

    .line 564
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x20

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x28

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0e000c

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x29

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 567
    :cond_1
    new-instance v17, Landroid/app/Notification$Builder;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 568
    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v17

    .line 569
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v17

    .line 570
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v17

    if-eqz v12, :cond_3

    .line 571
    .end local v12    # "photo":Landroid/graphics/Bitmap;
    :goto_2
    const/high16 v18, 0x42800000    # 64.0f

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v18

    const/high16 v19, 0x42800000    # 64.0f

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v12, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v17

    const v18, 0x7f020220

    .line 572
    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v17

    .line 573
    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 574
    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 576
    .local v8, "ntfb":Landroid/app/Notification$Builder;
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    .line 577
    const v17, 0x7f020140

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0801a5

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1, v10}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v17

    const v18, 0x7f020234

    .line 578
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0801a6

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v11}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 580
    if-lez v4, :cond_2

    .line 581
    new-instance v17, Landroid/app/Notification$BigTextStyle;

    invoke-direct/range {v17 .. v17}, Landroid/app/Notification$BigTextStyle;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 584
    :cond_2
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v7

    .line 585
    .local v7, "ntf1":Landroid/app/Notification;
    iget v0, v7, Landroid/app/Notification;->flags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x10

    move/from16 v0, v17

    iput v0, v7, Landroid/app/Notification;->flags:I

    .line 586
    const-string/jumbo v17, "FriendRequests"

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v7, v1, v2}, Lcom/vkcoffee/android/NotificationUtils;->applySettings(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Z)V

    .line 587
    const-string/jumbo v17, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/NotificationManager;

    .line 588
    .local v13, "srv":Landroid/app/NotificationManager;
    const/16 v17, 0x1f5

    move/from16 v0, v17

    invoke-virtual {v13, v0, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 546
    .end local v4    # "commonCount":I
    .end local v5    # "intentAccept":Landroid/content/Intent;
    .end local v6    # "intentDecline":Landroid/content/Intent;
    .end local v7    # "ntf1":Landroid/app/Notification;
    .end local v8    # "ntfb":Landroid/app/Notification$Builder;
    .end local v9    # "pIntent":Landroid/app/PendingIntent;
    .end local v10    # "pIntentAccept":Landroid/app/PendingIntent;
    .end local v11    # "pIntentDecline":Landroid/app/PendingIntent;
    .end local v13    # "srv":Landroid/app/NotificationManager;
    .end local v14    # "subtitle":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 547
    .local v15, "t":Ljava/lang/Throwable;
    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V

    .line 548
    const/4 v4, 0x0

    .restart local v4    # "commonCount":I
    goto/16 :goto_1

    .line 571
    .end local v15    # "t":Ljava/lang/Throwable;
    .restart local v5    # "intentAccept":Landroid/content/Intent;
    .restart local v6    # "intentDecline":Landroid/content/Intent;
    .restart local v9    # "pIntent":Landroid/app/PendingIntent;
    .restart local v10    # "pIntentAccept":Landroid/app/PendingIntent;
    .restart local v11    # "pIntentDecline":Landroid/app/PendingIntent;
    .restart local v12    # "photo":Landroid/graphics/Bitmap;
    .restart local v14    # "subtitle":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0202f2

    invoke-static/range {v18 .. v19}, Lcom/vkcoffee/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    goto/16 :goto_2
.end method

.method static synthetic lambda$null$627(Landroid/content/Context;Landroid/content/Intent;Ljava/util/ArrayList;)V
    .locals 20
    .param p2, "users"    # Ljava/util/ArrayList;

    .prologue
    .line 601
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x2

    if-ge v14, v15, :cond_0

    .line 637
    :goto_0
    return-void

    .line 604
    :cond_0
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkcoffee/android/UserProfile;

    .line 605
    .local v13, "user":Lcom/vkcoffee/android/UserProfile;
    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/UserProfile;

    .line 606
    .local v4, "inviter":Lcom/vkcoffee/android/UserProfile;
    iget v14, v13, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-lez v14, :cond_1

    .line 607
    move-object v12, v4

    .line 608
    .local v12, "tmp":Lcom/vkcoffee/android/UserProfile;
    move-object v4, v13

    .line 609
    move-object v13, v12

    .line 611
    .end local v12    # "tmp":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    const/4 v14, 0x0

    const/high16 v15, 0x8000000

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v14, v1, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 612
    .local v7, "pIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v14, "com.vkcoffee.android.ACCEPT_GROUP"

    invoke-direct {v2, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 613
    .local v2, "intentAccept":Landroid/content/Intent;
    const-string/jumbo v14, "gid"

    iget v15, v13, Lcom/vkcoffee/android/UserProfile;->uid:I

    neg-int v15, v15

    invoke-virtual {v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 614
    const-string/jumbo v14, "token"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v13, Lcom/vkcoffee/android/UserProfile;->uid:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/vkcoffee/android/utils/XSRFTokenUtil;->generateToken(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    const/4 v14, 0x1

    const/high16 v15, 0x50000000

    move-object/from16 v0, p0

    invoke-static {v0, v14, v2, v15}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 616
    .local v8, "pIntentAccept":Landroid/app/PendingIntent;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v14, "com.vkcoffee.android.DECLINE_GROUP"

    invoke-direct {v3, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 617
    .local v3, "intentDecline":Landroid/content/Intent;
    const-string/jumbo v14, "gid"

    iget v15, v13, Lcom/vkcoffee/android/UserProfile;->uid:I

    neg-int v15, v15

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 618
    const-string/jumbo v14, "token"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v13, Lcom/vkcoffee/android/UserProfile;->uid:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/vkcoffee/android/utils/XSRFTokenUtil;->generateToken(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    const/4 v14, 0x2

    const/high16 v15, 0x50000000

    move-object/from16 v0, p0

    invoke-static {v0, v14, v3, v15}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 620
    .local v9, "pIntentDecline":Landroid/app/PendingIntent;
    invoke-static/range {p0 .. p0}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v14

    iget-object v15, v13, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 621
    .local v10, "photo":Landroid/graphics/Bitmap;
    new-instance v14, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v15, v13, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 622
    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v14

    .line 623
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f08023a

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    iget-object v0, v4, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v14

    .line 624
    invoke-virtual {v14, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v14

    if-eqz v10, :cond_3

    .line 625
    .end local v10    # "photo":Landroid/graphics/Bitmap;
    :goto_1
    const/high16 v15, 0x42800000    # 64.0f

    invoke-static {v15}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v15

    const/high16 v16, 0x42800000    # 64.0f

    invoke-static/range {v16 .. v16}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v10, v15, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v14

    const v15, 0x7f020216

    .line 626
    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v14

    .line 627
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f080234

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    iget-object v0, v4, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    const/16 v18, 0x1

    iget-object v0, v13, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 628
    .local v6, "ntfb":Landroid/app/Notification$Builder;
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x10

    if-lt v14, v15, :cond_2

    .line 629
    const v14, 0x7f020140

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f08022f

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15, v8}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v14

    const v15, 0x7f020234

    .line 630
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f080230

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v0, v9}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 632
    :cond_2
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    .line 633
    .local v5, "ntf1":Landroid/app/Notification;
    iget v14, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v14, v14, 0x10

    iput v14, v5, Landroid/app/Notification;->flags:I

    .line 634
    const-string/jumbo v14, "GroupInvites"

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v5, v14, v15}, Lcom/vkcoffee/android/NotificationUtils;->applySettings(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Z)V

    .line 635
    const-string/jumbo v14, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 636
    .local v11, "srv":Landroid/app/NotificationManager;
    const/16 v14, 0x1fe

    invoke-virtual {v11, v14, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 625
    .end local v5    # "ntf1":Landroid/app/Notification;
    .end local v6    # "ntfb":Landroid/app/Notification$Builder;
    .end local v11    # "srv":Landroid/app/NotificationManager;
    .restart local v10    # "photo":Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020100

    invoke-static/range {v15 .. v16}, Lcom/vkcoffee/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    goto/16 :goto_1
.end method

.method static synthetic lambda$null$628(ILjava/lang/String;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 16
    .param p3, "users"    # Ljava/util/ArrayList;

    .prologue
    .line 668
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ge v12, v13, :cond_0

    .line 714
    :goto_0
    return-void

    .line 671
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v12, "android.intent.action.VIEW"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "vkontakte://profile/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v1, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 672
    .local v1, "intent":Landroid/content/Intent;
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkcoffee/android/UserProfile;

    .line 673
    .local v11, "user":Lcom/vkcoffee/android/UserProfile;
    const/4 v8, 0x0

    .line 674
    .local v8, "serviceStr":I
    const-string/jumbo v12, "email"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 675
    const v8, 0x7f080197

    .line 689
    :cond_1
    :goto_1
    iget-boolean v12, v11, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v12, :cond_9

    const v12, 0x7f080309

    :goto_2
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-object v15, v11, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    if-eqz v8, :cond_2

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    aput-object p1, v13, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 690
    .local v10, "text":Ljava/lang/String;
    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    move-object/from16 v0, p2

    invoke-static {v0, v12, v1, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 691
    .local v5, "pIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v12, "com.vkcoffee.android.ACCEPT_FRIEND"

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 692
    .local v2, "intentAccept":Landroid/content/Intent;
    const-string/jumbo v12, "uid"

    iget v13, v11, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 693
    const-string/jumbo v12, "notifyId"

    const/16 v13, 0x1f7

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 694
    const/4 v12, 0x1

    const/high16 v13, 0x50000000

    move-object/from16 v0, p2

    invoke-static {v0, v12, v2, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 695
    .local v6, "pIntentAccept":Landroid/app/PendingIntent;
    invoke-static/range {p2 .. p2}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v12

    iget-object v13, v11, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 696
    .local v7, "photo":Landroid/graphics/Bitmap;
    new-instance v13, Landroid/app/Notification$Builder;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v12, v11, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v12, :cond_a

    const v12, 0x7f08030b

    .line 697
    :goto_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    .line 698
    invoke-virtual {v12, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    .line 699
    invoke-virtual {v12, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v12

    if-eqz v7, :cond_b

    .line 700
    .end local v7    # "photo":Landroid/graphics/Bitmap;
    :goto_4
    const/high16 v13, 0x42800000    # 64.0f

    invoke-static {v13}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v13

    const/high16 v14, 0x42800000    # 64.0f

    invoke-static {v14}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v14

    const/4 v15, 0x1

    invoke-static {v7, v13, v14, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v12

    const v13, 0x7f020220

    .line 701
    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v12

    .line 702
    invoke-virtual {v12, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 704
    .local v4, "ntfb":Landroid/app/Notification$Builder;
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x10

    if-lt v12, v13, :cond_c

    .line 705
    const v12, 0x7f02011f

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0803cf

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13, v6}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 706
    new-instance v12, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v12, v4}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v12, v10}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v3

    .line 710
    .local v3, "ntf":Landroid/app/Notification;
    :goto_5
    iget v12, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v12, v12, 0x10

    iput v12, v3, Landroid/app/Notification;->flags:I

    .line 711
    const-string/jumbo v12, "FoundFriends"

    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v3, v12, v13}, Lcom/vkcoffee/android/NotificationUtils;->applySettings(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Z)V

    .line 712
    const-string/jumbo v12, "notification"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 713
    .local v9, "srv":Landroid/app/NotificationManager;
    const/16 v12, 0x1f7

    invoke-virtual {v9, v12, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 676
    .end local v2    # "intentAccept":Landroid/content/Intent;
    .end local v3    # "ntf":Landroid/app/Notification;
    .end local v4    # "ntfb":Landroid/app/Notification$Builder;
    .end local v5    # "pIntent":Landroid/app/PendingIntent;
    .end local v6    # "pIntentAccept":Landroid/app/PendingIntent;
    .end local v9    # "srv":Landroid/app/NotificationManager;
    .end local v10    # "text":Ljava/lang/String;
    :cond_3
    const-string/jumbo v12, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 677
    const v8, 0x7f08019c

    goto/16 :goto_1

    .line 678
    :cond_4
    const-string/jumbo v12, "twitter"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 679
    const v8, 0x7f08019d

    goto/16 :goto_1

    .line 680
    :cond_5
    const-string/jumbo v12, "facebook"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 681
    const v8, 0x7f080198

    goto/16 :goto_1

    .line 682
    :cond_6
    const-string/jumbo v12, "odnoklassniki"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 683
    const v8, 0x7f08019b

    goto/16 :goto_1

    .line 684
    :cond_7
    const-string/jumbo v12, "instagram"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 685
    const v8, 0x7f08019a

    goto/16 :goto_1

    .line 686
    :cond_8
    const-string/jumbo v12, "google"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 687
    const v8, 0x7f080199

    goto/16 :goto_1

    .line 689
    :cond_9
    const v12, 0x7f08030a

    goto/16 :goto_2

    .line 696
    .restart local v2    # "intentAccept":Landroid/content/Intent;
    .restart local v5    # "pIntent":Landroid/app/PendingIntent;
    .restart local v6    # "pIntentAccept":Landroid/app/PendingIntent;
    .restart local v7    # "photo":Landroid/graphics/Bitmap;
    .restart local v10    # "text":Ljava/lang/String;
    :cond_a
    const v12, 0x7f08030c

    goto/16 :goto_3

    .line 700
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0202f2

    invoke-static {v13, v14}, Lcom/vkcoffee/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    goto/16 :goto_4

    .line 708
    .end local v7    # "photo":Landroid/graphics/Bitmap;
    .restart local v4    # "ntfb":Landroid/app/Notification$Builder;
    :cond_c
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .restart local v3    # "ntf":Landroid/app/Notification;
    goto/16 :goto_5
.end method

.method static synthetic lambda$null$629(ILandroid/content/Context;Ljava/util/ArrayList;)V
    .locals 12
    .param p2, "users"    # Ljava/util/ArrayList;

    .prologue
    .line 722
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ge v8, v9, :cond_0

    .line 743
    :goto_0
    return-void

    .line 725
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.VIEW"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "vkontakte://profile/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 726
    .local v0, "intent":Landroid/content/Intent;
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/UserProfile;

    .line 727
    .local v7, "user":Lcom/vkcoffee/android/UserProfile;
    const/4 v8, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {p1, v8, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 728
    .local v3, "pIntent":Landroid/app/PendingIntent;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-boolean v8, v7, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v8, :cond_1

    const v8, 0x7f0d001b

    :goto_1
    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v6, v8, v9

    .line 729
    .local v6, "text":Ljava/lang/String;
    invoke-static {p1}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v8

    iget-object v9, v7, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 730
    .local v4, "photo":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/app/Notification$Builder;

    invoke-direct {v8, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v9, v7, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 731
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 732
    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 733
    invoke-virtual {v8, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    if-eqz v4, :cond_2

    .line 734
    .end local v4    # "photo":Landroid/graphics/Bitmap;
    :goto_2
    const/high16 v9, 0x42800000    # 64.0f

    invoke-static {v9}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v9

    const/high16 v10, 0x42800000    # 64.0f

    invoke-static {v10}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v10

    const/4 v11, 0x1

    invoke-static {v4, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v8

    const v9, 0x7f020220

    .line 735
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v7, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 736
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 738
    .local v2, "ntfb":Landroid/app/Notification$Builder;
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 739
    .local v1, "ntf":Landroid/app/Notification;
    iget v8, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v1, Landroid/app/Notification;->flags:I

    .line 740
    const-string/jumbo v8, "__"

    const/4 v9, 0x1

    invoke-static {p1, v1, v8, v9}, Lcom/vkcoffee/android/NotificationUtils;->applySettings(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Z)V

    .line 741
    const-string/jumbo v8, "notification"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 742
    .local v5, "srv":Landroid/app/NotificationManager;
    const/16 v8, 0x1ff

    invoke-virtual {v5, v8, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 728
    .end local v1    # "ntf":Landroid/app/Notification;
    .end local v2    # "ntfb":Landroid/app/Notification$Builder;
    .end local v5    # "srv":Landroid/app/NotificationManager;
    .end local v6    # "text":Ljava/lang/String;
    :cond_1
    const v8, 0x7f0d001c

    goto/16 :goto_1

    .line 734
    .restart local v4    # "photo":Landroid/graphics/Bitmap;
    .restart local v6    # "text":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0202f2

    invoke-static {v9, v10}, Lcom/vkcoffee/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_2
.end method

.method static synthetic lambda$null$630(ILandroid/content/Context;Ljava/util/ArrayList;)V
    .locals 13
    .param p2, "users"    # Ljava/util/ArrayList;

    .prologue
    .line 759
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ge v8, v9, :cond_0

    .line 780
    :goto_0
    return-void

    .line 762
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.VIEW"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "vkontakte://profile/-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 763
    .local v0, "intent":Landroid/content/Intent;
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/UserProfile;

    .line 764
    .local v7, "user":Lcom/vkcoffee/android/UserProfile;
    const/4 v8, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {p1, v8, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 765
    .local v3, "pIntent":Landroid/app/PendingIntent;
    const v8, 0x7f08030f

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 766
    .local v6, "text":Ljava/lang/String;
    invoke-static {p1}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v8

    iget-object v9, v7, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 767
    .local v4, "photo":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/app/Notification$Builder;

    invoke-direct {v8, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v9, v7, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 768
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 769
    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 770
    invoke-virtual {v8, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    if-eqz v4, :cond_1

    .line 771
    .end local v4    # "photo":Landroid/graphics/Bitmap;
    :goto_1
    const/high16 v9, 0x42800000    # 64.0f

    invoke-static {v9}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v9

    const/high16 v10, 0x42800000    # 64.0f

    invoke-static {v10}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v10

    const/4 v11, 0x1

    invoke-static {v4, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v8

    const v9, 0x7f020216

    .line 772
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    const v9, 0x7f080310

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v7, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v12, v10, v11

    .line 773
    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 775
    .local v2, "ntfb":Landroid/app/Notification$Builder;
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 776
    .local v1, "ntf":Landroid/app/Notification;
    iget v8, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v1, Landroid/app/Notification;->flags:I

    .line 777
    const-string/jumbo v8, "__"

    const/4 v9, 0x1

    invoke-static {p1, v1, v8, v9}, Lcom/vkcoffee/android/NotificationUtils;->applySettings(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Z)V

    .line 778
    const-string/jumbo v8, "notification"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 779
    .local v5, "srv":Landroid/app/NotificationManager;
    const/16 v8, 0x200

    invoke-virtual {v5, v8, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 771
    .end local v1    # "ntf":Landroid/app/Notification;
    .end local v2    # "ntfb":Landroid/app/Notification$Builder;
    .end local v5    # "srv":Landroid/app/NotificationManager;
    .restart local v4    # "photo":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020100

    invoke-static {v9, v10}, Lcom/vkcoffee/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1
.end method

.method static synthetic lambda$null$631(ILandroid/content/Context;ILjava/util/ArrayList;)V
    .locals 14
    .param p3, "users"    # Ljava/util/ArrayList;

    .prologue
    .line 803
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_0

    .line 824
    :goto_0
    return-void

    .line 806
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.VIEW"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "vkontakte://profile/-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v1, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 807
    .local v1, "intent":Landroid/content/Intent;
    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkcoffee/android/UserProfile;

    .line 808
    .local v8, "user":Lcom/vkcoffee/android/UserProfile;
    const/4 v9, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {p1, v9, v1, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 809
    .local v4, "pIntent":Landroid/app/PendingIntent;
    const v9, 0x7f08031a

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static/range {p2 .. p2}, Lcom/vkcoffee/android/TimeUtils;->langDate(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 810
    .local v7, "text":Ljava/lang/String;
    invoke-static {p1}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v9

    iget-object v10, v8, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 811
    .local v5, "photo":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/app/Notification$Builder;

    invoke-direct {v9, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v10, v8, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 812
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 813
    invoke-virtual {v9, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 814
    invoke-virtual {v9, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    if-eqz v5, :cond_1

    .line 815
    .end local v5    # "photo":Landroid/graphics/Bitmap;
    :goto_1
    const/high16 v10, 0x42800000    # 64.0f

    invoke-static {v10}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v10

    const/high16 v11, 0x42800000    # 64.0f

    invoke-static {v11}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v11

    const/4 v12, 0x1

    invoke-static {v5, v10, v11, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v9

    const v10, 0x7f020216

    .line 816
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    const v10, 0x7f08031b

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v8, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 817
    invoke-static/range {p2 .. p2}, Lcom/vkcoffee/android/TimeUtils;->langDate(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p1, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 819
    .local v3, "ntfb":Landroid/app/Notification$Builder;
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 820
    .local v2, "ntf":Landroid/app/Notification;
    iget v9, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v9, v9, 0x10

    iput v9, v2, Landroid/app/Notification;->flags:I

    .line 821
    const-string/jumbo v9, "UpcomingEvents"

    const/4 v10, 0x1

    invoke-static {p1, v2, v9, v10}, Lcom/vkcoffee/android/NotificationUtils;->applySettings(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Z)V

    .line 822
    const-string/jumbo v9, "notification"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 823
    .local v6, "srv":Landroid/app/NotificationManager;
    const/16 v9, 0x202

    invoke-virtual {v6, v9, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 815
    .end local v2    # "ntf":Landroid/app/Notification;
    .end local v3    # "ntfb":Landroid/app/Notification$Builder;
    .end local v6    # "srv":Landroid/app/NotificationManager;
    .restart local v5    # "photo":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020100

    invoke-static {v10, v11}, Lcom/vkcoffee/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_1
.end method

.method static synthetic lambda$null$632(Landroid/os/Bundle;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 13
    .param p2, "users"    # Ljava/util/ArrayList;

    .prologue
    .line 842
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ge v8, v9, :cond_0

    .line 863
    :goto_0
    return-void

    .line 845
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.VIEW"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "vkontakte://vk.com/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "place"

    invoke-virtual {p0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 846
    .local v0, "intent":Landroid/content/Intent;
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/UserProfile;

    .line 847
    .local v7, "user":Lcom/vkcoffee/android/UserProfile;
    const/4 v8, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {p1, v8, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 848
    .local v3, "pIntent":Landroid/app/PendingIntent;
    const v8, 0x7f080311

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 849
    .local v6, "text":Ljava/lang/String;
    invoke-static {p1}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v8

    iget-object v9, v7, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 850
    .local v4, "photo":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/app/Notification$Builder;

    invoke-direct {v8, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v9, v7, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 851
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 852
    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 853
    invoke-virtual {v8, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    if-eqz v4, :cond_1

    .line 854
    .end local v4    # "photo":Landroid/graphics/Bitmap;
    :goto_1
    const/high16 v9, 0x42800000    # 64.0f

    invoke-static {v9}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v9

    const/high16 v10, 0x42800000    # 64.0f

    invoke-static {v10}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v10

    const/4 v11, 0x1

    invoke-static {v4, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v8

    const v9, 0x7f02021d

    .line 855
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    const v9, 0x7f080312

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v7, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v12, v10, v11

    .line 856
    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 858
    .local v2, "ntfb":Landroid/app/Notification$Builder;
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 859
    .local v1, "ntf":Landroid/app/Notification;
    iget v8, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v1, Landroid/app/Notification;->flags:I

    .line 860
    const-string/jumbo v8, "__"

    const/4 v9, 0x1

    invoke-static {p1, v1, v8, v9}, Lcom/vkcoffee/android/NotificationUtils;->applySettings(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Z)V

    .line 861
    const-string/jumbo v8, "notification"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 862
    .local v5, "srv":Landroid/app/NotificationManager;
    const/16 v8, 0x201

    invoke-virtual {v5, v8, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 854
    .end local v1    # "ntf":Landroid/app/Notification;
    .end local v2    # "ntfb":Landroid/app/Notification$Builder;
    .end local v5    # "srv":Landroid/app/NotificationManager;
    .restart local v4    # "photo":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020100

    invoke-static {v9, v10}, Lcom/vkcoffee/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1
.end method

.method static synthetic lambda$null$633(Landroid/content/Context;Landroid/os/Bundle;Ljava/util/ArrayList;)V
    .locals 3
    .param p2, "users"    # Ljava/util/ArrayList;

    .prologue
    .line 894
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 899
    :goto_0
    return-void

    .line 897
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .line 898
    .local v0, "user":Lcom/vkcoffee/android/UserProfile;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-static {p0, p1, v1, v2}, Lcom/vkcoffee/android/GCMBroadcastReceiver;->showLikeNotification(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic lambda$null$634(Landroid/content/Context;Landroid/os/Bundle;Ljava/util/ArrayList;)V
    .locals 2
    .param p2, "users"    # Ljava/util/ArrayList;

    .prologue
    .line 928
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 933
    :goto_0
    return-void

    .line 931
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .line 932
    .local v0, "user":Lcom/vkcoffee/android/UserProfile;
    invoke-static {p0, p1, v0}, Lcom/vkcoffee/android/GCMBroadcastReceiver;->showRepostNotification(Landroid/content/Context;Landroid/os/Bundle;Lcom/vkcoffee/android/UserProfile;)V

    goto :goto_0
.end method

.method static synthetic lambda$null$635(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 15
    .param p8, "users"    # Ljava/util/ArrayList;

    .prologue
    .line 971
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_0

    .line 1030
    :goto_0
    return-void

    .line 974
    :cond_0
    const/4 v10, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkcoffee/android/UserProfile;

    .line 977
    .local v9, "user":Lcom/vkcoffee/android/UserProfile;
    const/4 v10, 0x0

    const/high16 v11, 0x8000000

    move-object/from16 v0, p1

    invoke-static {p0, v10, v0, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 978
    .local v4, "pIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0800ea

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "shortTitle":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget-boolean v10, v9, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v10, :cond_5

    const v10, 0x7f0800e8

    :goto_1
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, v9, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v11, v10, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 979
    .local v2, "longTitle":Ljava/lang/String;
    const/4 v8, 0x0

    .line 980
    .local v8, "type":I
    const-string/jumbo v10, "photo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 981
    const/4 v8, 0x1

    .line 982
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0800e7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 983
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget-boolean v10, v9, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v10, :cond_6

    const v10, 0x7f0800e5

    :goto_2
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, v9, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v11, v10, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 985
    :cond_1
    const-string/jumbo v10, "video"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 986
    const/4 v8, 0x2

    .line 987
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0800ed

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 988
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget-boolean v10, v9, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v10, :cond_7

    const v10, 0x7f0800eb

    :goto_3
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, v9, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v11, v10, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 990
    :cond_2
    if-eqz p3, :cond_3

    .line 991
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget-boolean v10, v9, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v10, :cond_8

    const v10, 0x7f08042f

    :goto_4
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, v9, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v11, v10, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 992
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080431

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 994
    :cond_3
    if-eqz p4, :cond_4

    .line 995
    if-eqz p5, :cond_a

    .line 996
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget-boolean v10, v9, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v10, :cond_9

    const v10, 0x7f0802c2

    :goto_5
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, v9, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v11, v10, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 997
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0802c7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1007
    :cond_4
    :goto_6
    invoke-static {p0}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v10

    iget-object v11, v9, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1008
    .local v5, "photo":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/app/Notification$Builder;

    invoke-direct {v10, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v9, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1009
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 1010
    move-object/from16 v0, p6

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 1011
    invoke-virtual {v10, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 1012
    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    if-eqz v5, :cond_d

    .line 1013
    .end local v5    # "photo":Landroid/graphics/Bitmap;
    :goto_7
    const/high16 v11, 0x42800000    # 64.0f

    invoke-static {v11}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v11

    const/high16 v12, 0x42800000    # 64.0f

    invoke-static {v12}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v12

    const/4 v13, 0x1

    invoke-static {v5, v11, v12, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v10

    const v11, 0x7f02021d

    .line 1015
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1016
    .local v1, "bldr":Landroid/app/Notification$Builder;
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x10

    if-lt v10, v11, :cond_e

    .line 1017
    new-instance v10, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v10, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v9, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1018
    invoke-virtual {v10, v11}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v10

    .line 1019
    move-object/from16 v0, p6

    invoke-virtual {v10, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v10

    .line 1021
    invoke-virtual {v10}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v3

    .line 1025
    .local v3, "ntf":Landroid/app/Notification;
    :goto_8
    iget v10, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v3, Landroid/app/Notification;->flags:I

    .line 1026
    const/4 v10, 0x1

    move-object/from16 v0, p7

    invoke-static {p0, v3, v0, v10}, Lcom/vkcoffee/android/NotificationUtils;->applySettings(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Z)V

    .line 1027
    const-string/jumbo v10, "notification"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 1029
    .local v7, "srv":Landroid/app/NotificationManager;
    const/16 v10, 0x1f6

    invoke-virtual {v7, v10, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 978
    .end local v1    # "bldr":Landroid/app/Notification$Builder;
    .end local v2    # "longTitle":Ljava/lang/String;
    .end local v3    # "ntf":Landroid/app/Notification;
    .end local v7    # "srv":Landroid/app/NotificationManager;
    .end local v8    # "type":I
    :cond_5
    const v10, 0x7f0800e9

    goto/16 :goto_1

    .line 983
    .restart local v2    # "longTitle":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_6
    const v10, 0x7f0800e6

    goto/16 :goto_2

    .line 988
    :cond_7
    const v10, 0x7f0800ec

    goto/16 :goto_3

    .line 991
    :cond_8
    const v10, 0x7f080430

    goto/16 :goto_4

    .line 996
    :cond_9
    const v10, 0x7f0802c3

    goto/16 :goto_5

    .line 999
    :cond_a
    iget v10, v9, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-gez v10, :cond_b

    .line 1000
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0802c4

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, v9, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1004
    :goto_9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0802c7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_6

    .line 1002
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget-boolean v10, v9, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v10, :cond_c

    const v10, 0x7f0802c5

    :goto_a
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, v9, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v11, v10, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_c
    const v10, 0x7f0802c6

    goto :goto_a

    .line 1013
    .restart local v5    # "photo":Landroid/graphics/Bitmap;
    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0202f2

    invoke-static {v11, v12}, Lcom/vkcoffee/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    goto/16 :goto_7

    .line 1023
    .end local v5    # "photo":Landroid/graphics/Bitmap;
    .restart local v1    # "bldr":Landroid/app/Notification$Builder;
    :cond_e
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .restart local v3    # "ntf":Landroid/app/Notification;
    goto/16 :goto_8
.end method

.method static synthetic lambda$showMessageNotification$637(Lcom/vkcoffee/android/Message;Ljava/util/ArrayList;)V
    .locals 13
    .param p1, "users"    # Ljava/util/ArrayList;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1220
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkcoffee/android/UserProfile;

    .line 1221
    .local v11, "user":Lcom/vkcoffee/android/UserProfile;
    iget-object v10, p0, Lcom/vkcoffee/android/Message;->text:Ljava/lang/String;

    .line 1222
    .local v10, "notifyText":Ljava/lang/String;
    iget-boolean v0, p0, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "action"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "action_user_name_acc"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v11, v0}, Lcom/vkcoffee/android/Message;->getServiceMessageText(Lcom/vkcoffee/android/UserProfile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1226
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/vkcoffee/android/Message;->fwdMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    move v7, v4

    .line 1227
    .local v7, "hasDifferentAttachmentsType":Z
    :goto_0
    if-nez v7, :cond_1

    .line 1228
    iget-object v0, p0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_1

    .line 1229
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_1
    iget-object v0, p0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 1230
    iget-object v0, p0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v0, p0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    add-int/lit8 v3, v8, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v2, v0, :cond_5

    move v7, v4

    .line 1231
    :goto_2
    if-eqz v7, :cond_6

    .line 1238
    .end local v8    # "i":I
    :cond_1
    const/4 v9, 0x0

    .line 1239
    .local v9, "notifyAdd":Ljava/lang/String;
    if-eqz v7, :cond_7

    .line 1240
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v1, 0x7f080083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1251
    :cond_2
    :goto_3
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1252
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1253
    move-object v10, v9

    .line 1258
    :cond_3
    :goto_4
    invoke-static {v10}, Lcom/vkcoffee/android/Global;->replaceEmojiModifiers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/LinkParser;->stripMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/Message;->title:Ljava/lang/String;

    iget-object v2, v11, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    iget-object v3, v11, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    iget v5, p0, Lcom/vkcoffee/android/Message;->peer:I

    invoke-static/range {v0 .. v5}, Lcom/vkcoffee/android/LongPollService;->updateNotification(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1259
    return-void

    .end local v7    # "hasDifferentAttachmentsType":Z
    .end local v9    # "notifyAdd":Ljava/lang/String;
    :cond_4
    move v7, v1

    .line 1226
    goto :goto_0

    .restart local v7    # "hasDifferentAttachmentsType":Z
    .restart local v8    # "i":I
    :cond_5
    move v7, v1

    .line 1230
    goto :goto_2

    .line 1229
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1241
    .end local v8    # "i":I
    .restart local v9    # "notifyAdd":Ljava/lang/String;
    :cond_7
    iget-object v0, p0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    iget-boolean v0, p0, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    if-nez v0, :cond_a

    .line 1242
    iget-object v0, p0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkcoffee/android/attachments/Attachment;

    .line 1243
    .local v6, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v0, v6, Lcom/vkcoffee/android/attachments/GiftAttachment;

    if-eqz v0, :cond_9

    .line 1244
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, v11, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v0, :cond_8

    const v0, 0x7f0802c0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_8
    const v0, 0x7f0802c1

    goto :goto_5

    .line 1246
    :cond_9
    iget-object v0, p0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-static {v0}, Lcom/vkcoffee/android/attachments/Attachment;->getLocalizedDescription(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 1248
    .end local v6    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_a
    iget-object v0, p0, Lcom/vkcoffee/android/Message;->fwdMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1249
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e002b

    iget-object v3, p0, Lcom/vkcoffee/android/Message;->fwdMessages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/vkcoffee/android/Message;->fwdMessages:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v5, v1

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3

    .line 1255
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_4
.end method

.method private static showLikeNotification(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 28
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "userPhoto"    # Ljava/lang/String;

    .prologue
    .line 1046
    sget-object v22, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 1047
    .local v19, "sprefs":Landroid/content/SharedPreferences;
    const-string/jumbo v10, "vkontakte://vk.com/feed?section=notifications"

    .line 1048
    .local v10, "link":Ljava/lang/String;
    const-string/jumbo v22, "object"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1049
    .local v15, "object":Ljava/lang/String;
    const-string/jumbo v22, "likes_count"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1050
    .local v6, "count":I
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v22, "android.intent.action.VIEW"

    const-string/jumbo v23, "vkontakte://vk.com/feed?section=notifications"

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1051
    .local v9, "intent":Landroid/content/Intent;
    const/high16 v22, 0x10000000

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1053
    const/16 v22, 0x1

    move/from16 v0, v22

    if-le v6, v0, :cond_3

    const v18, 0x7f080288

    .line 1054
    .local v18, "res":I
    :goto_0
    const-string/jumbo v22, "photo[0-9-]+_[0-9]+"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 1055
    const/16 v22, 0x1

    move/from16 v0, v22

    if-le v6, v0, :cond_4

    const v18, 0x7f080287

    .line 1061
    :cond_0
    :goto_1
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "<b>"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static/range {p2 .. p2}, Lcom/vkcoffee/android/Global;->replaceHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "</b>"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1062
    .local v14, "ntfTextSource":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v13

    .line 1063
    .local v13, "ntfText":Landroid/text/Spanned;
    const/16 v22, 0x0

    const/high16 v23, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 1064
    .local v16, "pIntent":Landroid/app/PendingIntent;
    const/4 v12, 0x0

    .line 1065
    .local v12, "ntf":Landroid/app/Notification;
    const/16 v17, 0x0

    .line 1066
    .local v17, "photo":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_1

    .line 1067
    invoke-static/range {p0 .. p0}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 1070
    :cond_1
    new-instance v22, Landroid/app/Notification$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v23, 0x7f080074

    .line 1071
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v22

    .line 1072
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v22

    .line 1073
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v22

    .line 1074
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v22

    const v23, 0x7f020217

    .line 1075
    invoke-virtual/range {v22 .. v23}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1076
    .local v5, "bldr":Landroid/app/Notification$Builder;
    if-eqz p3, :cond_2

    .line 1077
    if-eqz v17, :cond_9

    .end local v17    # "photo":Landroid/graphics/Bitmap;
    :goto_2
    const/high16 v22, 0x42800000    # 64.0f

    invoke-static/range {v22 .. v22}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v22

    const/high16 v23, 0x42800000    # 64.0f

    invoke-static/range {v23 .. v23}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v23

    const/16 v24, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1079
    :cond_2
    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0x10

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_f

    .line 1081
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    const-string/jumbo v22, "like_notifications"

    const-string/jumbo v23, "[]"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1082
    .local v4, "a":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v22

    if-nez v22, :cond_a

    .line 1083
    new-instance v22, Landroid/app/Notification$BigTextStyle;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    const v23, 0x7f080074

    .line 1084
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v22

    .line 1085
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v22

    .line 1086
    invoke-virtual/range {v22 .. v22}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v12

    .line 1102
    :goto_3
    invoke-virtual {v4, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1103
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    const-string/jumbo v23, "like_notifications"

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1110
    .end local v4    # "a":Lorg/json/JSONArray;
    :goto_4
    iget v0, v12, Landroid/app/Notification;->flags:I

    move/from16 v22, v0

    or-int/lit8 v22, v22, 0x10

    move/from16 v0, v22

    iput v0, v12, Landroid/app/Notification;->flags:I

    .line 1111
    const-string/jumbo v22, "__"

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v12, v1, v2}, Lcom/vkcoffee/android/NotificationUtils;->applySettings(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Z)V

    .line 1112
    iget v0, v12, Landroid/app/Notification;->defaults:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x2

    move/from16 v0, v22

    iput v0, v12, Landroid/app/Notification;->defaults:I

    .line 1113
    const/16 v22, 0x0

    move-object/from16 v0, v22

    iput-object v0, v12, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1114
    const-string/jumbo v22, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/NotificationManager;

    .line 1116
    .local v20, "srv":Landroid/app/NotificationManager;
    const/16 v22, 0x1fb

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1117
    const/16 v22, 0x1fb

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1118
    return-void

    .line 1053
    .end local v5    # "bldr":Landroid/app/Notification$Builder;
    .end local v12    # "ntf":Landroid/app/Notification;
    .end local v13    # "ntfText":Landroid/text/Spanned;
    .end local v14    # "ntfTextSource":Ljava/lang/String;
    .end local v16    # "pIntent":Landroid/app/PendingIntent;
    .end local v18    # "res":I
    .end local v20    # "srv":Landroid/app/NotificationManager;
    :cond_3
    const v18, 0x7f08028b

    goto/16 :goto_0

    .line 1055
    .restart local v18    # "res":I
    :cond_4
    const v18, 0x7f08028a

    goto/16 :goto_1

    .line 1056
    :cond_5
    const-string/jumbo v22, "video[0-9-]+_[0-9]+"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 1057
    const/16 v22, 0x1

    move/from16 v0, v22

    if-le v6, v0, :cond_6

    const v18, 0x7f080289

    :goto_5
    goto/16 :goto_1

    :cond_6
    const v18, 0x7f08028c

    goto :goto_5

    .line 1058
    :cond_7
    const-string/jumbo v22, "(wall_comment|video_comment|photo_comment)[0-9-]+_[0-9]+"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 1059
    const/16 v22, 0x1

    move/from16 v0, v22

    if-le v6, v0, :cond_8

    const v18, 0x7f080286

    :goto_6
    goto/16 :goto_1

    :cond_8
    const v18, 0x7f080285

    goto :goto_6

    .line 1077
    .restart local v5    # "bldr":Landroid/app/Notification$Builder;
    .restart local v12    # "ntf":Landroid/app/Notification;
    .restart local v13    # "ntfText":Landroid/text/Spanned;
    .restart local v14    # "ntfTextSource":Ljava/lang/String;
    .restart local v16    # "pIntent":Landroid/app/PendingIntent;
    .restart local v17    # "photo":Landroid/graphics/Bitmap;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0202f2

    invoke-static/range {v22 .. v23}, Lcom/vkcoffee/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v17

    goto/16 :goto_2

    .line 1088
    .end local v17    # "photo":Landroid/graphics/Bitmap;
    .restart local v4    # "a":Lorg/json/JSONArray;
    :cond_a
    const v22, 0x7f020218

    :try_start_1
    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1089
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0e0020

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v27

    add-int/lit8 v27, v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v22 .. v25}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1090
    const/16 v22, 0x0

    check-cast v22, Landroid/graphics/Bitmap;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1091
    new-instance v8, Landroid/app/Notification$InboxStyle;

    invoke-direct {v8, v5}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 1092
    .local v8, "inbox":Landroid/app/Notification$InboxStyle;
    invoke-virtual {v8, v13}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 1093
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v22

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_b

    const/4 v11, 0x1

    .line 1094
    .local v11, "more":Z
    :goto_7
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_8
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v23

    if-eqz v11, :cond_c

    const/16 v22, 0x3

    :goto_9
    move/from16 v0, v23

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_d

    .line 1095
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v22

    add-int/lit8 v23, v7, 0x1

    sub-int v22, v22, v23

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 1094
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 1093
    .end local v7    # "i":I
    .end local v11    # "more":Z
    :cond_b
    const/4 v11, 0x0

    goto :goto_7

    .line 1094
    .restart local v7    # "i":I
    .restart local v11    # "more":Z
    :cond_c
    const/16 v22, 0x4

    goto :goto_9

    .line 1097
    :cond_d
    if-eqz v11, :cond_e

    .line 1098
    const v22, 0x7f08028d

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v25

    add-int/lit8 v25, v25, -0x4

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 1100
    :cond_e
    invoke-virtual {v8}, Landroid/app/Notification$InboxStyle;->build()Landroid/app/Notification;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    goto/16 :goto_3

    .line 1104
    .end local v4    # "a":Lorg/json/JSONArray;
    .end local v7    # "i":I
    .end local v8    # "inbox":Landroid/app/Notification$InboxStyle;
    .end local v11    # "more":Z
    :catch_0
    move-exception v21

    .line 1105
    .local v21, "x":Ljava/lang/Exception;
    invoke-static/range {v21 .. v21}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto/16 :goto_4

    .line 1108
    .end local v21    # "x":Ljava/lang/Exception;
    :cond_f
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v12

    goto/16 :goto_4
.end method

.method public static showMessageNotification(I)V
    .locals 5
    .param p0, "mid"    # I

    .prologue
    .line 1206
    invoke-static {p0}, Lcom/vkcoffee/android/data/Messages;->getById(I)Lcom/vkcoffee/android/Message;

    move-result-object v1

    .line 1207
    .local v1, "msg":Lcom/vkcoffee/android/Message;
    if-nez v1, :cond_1

    .line 1208
    const-string/jumbo v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error getting message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " :\'("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    :cond_0
    :goto_0
    return-void

    .line 1211
    :cond_1
    iget v2, v1, Lcom/vkcoffee/android/Message;->peer:I

    const v3, 0x77359400

    if-ge v2, v3, :cond_2

    .line 1212
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/vkcoffee/android/Message;->title:Ljava/lang/String;

    .line 1214
    :cond_2
    iget-boolean v2, v1, Lcom/vkcoffee/android/Message;->readState:Z

    if-nez v2, :cond_0

    .line 1217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1218
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v2, v1, Lcom/vkcoffee/android/Message;->sender:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1219
    invoke-static {v1}, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/Message;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V

    goto :goto_0
.end method

.method private static showRepostNotification(Landroid/content/Context;Landroid/os/Bundle;Lcom/vkcoffee/android/UserProfile;)V
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "user"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 1121
    sget-object v20, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1122
    .local v17, "sprefs":Landroid/content/SharedPreferences;
    const-string/jumbo v8, "vkontakte://vk.com/feed?section=notifications"

    .line 1123
    .local v8, "link":Ljava/lang/String;
    const-string/jumbo v20, "object"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1124
    .local v13, "object":Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v20, "android.intent.action.VIEW"

    const-string/jumbo v21, "vkontakte://vk.com/feed?section=notifications"

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1125
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v20, 0x10000000

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1127
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/vkcoffee/android/UserProfile;->f:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    const v16, 0x7f080441

    .line 1128
    .local v16, "res":I
    :goto_0
    const-string/jumbo v20, "photo[0-9-]+_[0-9]+"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1129
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/vkcoffee/android/UserProfile;->f:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    const v16, 0x7f08043f

    .line 1135
    :cond_0
    :goto_1
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "<b>"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/vkcoffee/android/Global;->replaceHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "</b>"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1136
    .local v12, "ntfTextSource":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    .line 1137
    .local v11, "ntfText":Landroid/text/Spanned;
    const/16 v20, 0x0

    const/high16 v21, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 1138
    .local v14, "pIntent":Landroid/app/PendingIntent;
    const/4 v10, 0x0

    .line 1139
    .local v10, "ntf":Landroid/app/Notification;
    const/4 v15, 0x0

    .line 1140
    .local v15, "photo":Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 1141
    invoke-static/range {p0 .. p0}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v20

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 1144
    :cond_1
    new-instance v20, Landroid/app/Notification$Builder;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v21, 0x7f080074

    .line 1145
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v20

    .line 1146
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v20

    .line 1147
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v20

    .line 1148
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v20

    const v21, 0x7f02021e

    .line 1149
    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1150
    .local v4, "bldr":Landroid/app/Notification$Builder;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 1151
    if-eqz v15, :cond_9

    .end local v15    # "photo":Landroid/graphics/Bitmap;
    :goto_2
    const/high16 v20, 0x42800000    # 64.0f

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v20

    const/high16 v21, 0x42800000    # 64.0f

    invoke-static/range {v21 .. v21}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v15, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1153
    :cond_2
    sget v20, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_f

    .line 1155
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    const-string/jumbo v20, "repost_notifications"

    const-string/jumbo v21, "[]"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1156
    .local v3, "a":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v20

    if-nez v20, :cond_a

    .line 1157
    new-instance v20, Landroid/app/Notification$BigTextStyle;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    const v21, 0x7f080074

    .line 1158
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v20

    .line 1159
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v20

    .line 1160
    invoke-virtual/range {v20 .. v20}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v10

    .line 1176
    :goto_3
    invoke-virtual {v3, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1177
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    const-string/jumbo v21, "repost_notifications"

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1184
    .end local v3    # "a":Lorg/json/JSONArray;
    :goto_4
    iget v0, v10, Landroid/app/Notification;->flags:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x10

    move/from16 v0, v20

    iput v0, v10, Landroid/app/Notification;->flags:I

    .line 1185
    const-string/jumbo v20, "__"

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v10, v1, v2}, Lcom/vkcoffee/android/NotificationUtils;->applySettings(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Z)V

    .line 1186
    iget v0, v10, Landroid/app/Notification;->defaults:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, -0x2

    move/from16 v0, v20

    iput v0, v10, Landroid/app/Notification;->defaults:I

    .line 1187
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v10, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1188
    const-string/jumbo v20, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/NotificationManager;

    .line 1190
    .local v18, "srv":Landroid/app/NotificationManager;
    const/16 v20, 0x1fd

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1191
    const/16 v20, 0x1fd

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1192
    return-void

    .line 1127
    .end local v4    # "bldr":Landroid/app/Notification$Builder;
    .end local v10    # "ntf":Landroid/app/Notification;
    .end local v11    # "ntfText":Landroid/text/Spanned;
    .end local v12    # "ntfTextSource":Ljava/lang/String;
    .end local v14    # "pIntent":Landroid/app/PendingIntent;
    .end local v16    # "res":I
    .end local v18    # "srv":Landroid/app/NotificationManager;
    :cond_3
    const v16, 0x7f080442

    goto/16 :goto_0

    .line 1129
    .restart local v16    # "res":I
    :cond_4
    const v16, 0x7f080440

    goto/16 :goto_1

    .line 1130
    :cond_5
    const-string/jumbo v20, "video[0-9-]+_[0-9]+"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1131
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/vkcoffee/android/UserProfile;->f:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    const v16, 0x7f080443

    :goto_5
    goto/16 :goto_1

    :cond_6
    const v16, 0x7f080444

    goto :goto_5

    .line 1132
    :cond_7
    const-string/jumbo v20, "(wall_comment|video_comment|photo_comment)[0-9-]+_[0-9]+"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1133
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/vkcoffee/android/UserProfile;->f:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    const v16, 0x7f08043d

    :goto_6
    goto/16 :goto_1

    :cond_8
    const v16, 0x7f08043e

    goto :goto_6

    .line 1151
    .restart local v4    # "bldr":Landroid/app/Notification$Builder;
    .restart local v10    # "ntf":Landroid/app/Notification;
    .restart local v11    # "ntfText":Landroid/text/Spanned;
    .restart local v12    # "ntfTextSource":Ljava/lang/String;
    .restart local v14    # "pIntent":Landroid/app/PendingIntent;
    .restart local v15    # "photo":Landroid/graphics/Bitmap;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0202f2

    invoke-static/range {v20 .. v21}, Lcom/vkcoffee/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v15

    goto/16 :goto_2

    .line 1162
    .end local v15    # "photo":Landroid/graphics/Bitmap;
    .restart local v3    # "a":Lorg/json/JSONArray;
    :cond_a
    const v20, 0x7f02021f

    :try_start_1
    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1163
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0e0020

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v25

    add-int/lit8 v25, v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v20 .. v23}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1164
    const/16 v20, 0x0

    check-cast v20, Landroid/graphics/Bitmap;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1165
    new-instance v6, Landroid/app/Notification$InboxStyle;

    invoke-direct {v6, v4}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 1166
    .local v6, "inbox":Landroid/app/Notification$InboxStyle;
    invoke-virtual {v6, v11}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 1167
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_b

    const/4 v9, 0x1

    .line 1168
    .local v9, "more":Z
    :goto_7
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_8
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v21

    if-eqz v9, :cond_c

    const/16 v20, 0x3

    :goto_9
    move/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v20

    if-ge v5, v0, :cond_d

    .line 1169
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v20

    add-int/lit8 v21, v5, 0x1

    sub-int v20, v20, v21

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 1168
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 1167
    .end local v5    # "i":I
    .end local v9    # "more":Z
    :cond_b
    const/4 v9, 0x0

    goto :goto_7

    .line 1168
    .restart local v5    # "i":I
    .restart local v9    # "more":Z
    :cond_c
    const/16 v20, 0x4

    goto :goto_9

    .line 1171
    :cond_d
    if-eqz v9, :cond_e

    .line 1172
    const v20, 0x7f08028d

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x4

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 1174
    :cond_e
    invoke-virtual {v6}, Landroid/app/Notification$InboxStyle;->build()Landroid/app/Notification;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    goto/16 :goto_3

    .line 1178
    .end local v3    # "a":Lorg/json/JSONArray;
    .end local v5    # "i":I
    .end local v6    # "inbox":Landroid/app/Notification$InboxStyle;
    .end local v9    # "more":Z
    :catch_0
    move-exception v19

    .line 1179
    .local v19, "x":Ljava/lang/Exception;
    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto/16 :goto_4

    .line 1182
    .end local v19    # "x":Ljava/lang/Exception;
    :cond_f
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v10

    goto/16 :goto_4
.end method

.method public static updateStateAndShowNotification(I)V
    .locals 5
    .param p0, "mid"    # I

    .prologue
    .line 1195
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1197
    .local v0, "sprefs":Landroid/content/SharedPreferences;
    :try_start_0
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->syncStateWithServer()V

    .line 1198
    invoke-static {p0}, Lcom/vkcoffee/android/GCMBroadcastReceiver;->showMessageNotification(I)V

    .line 1199
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "pending_msg_notification"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1203
    :goto_0
    return-void

    .line 1200
    :catch_0
    move-exception v1

    .line 1201
    .local v1, "x":Ljava/lang/Exception;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "pending_msg_notification"

    invoke-interface {v2, v3, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method


# virtual methods
.method synthetic lambda$onReceive$636(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 59

    .prologue
    .line 74
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    .line 75
    .local v21, "extras":Landroid/os/Bundle;
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/16 v54, 0x0

    const/16 v55, 0x0

    move-object/from16 v0, v54

    move/from16 v1, v55

    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v44

    .line 76
    .local v44, "sprefs":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "secret"

    const/16 v54, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, v54

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vkcoffee/android/Global;->secret:Ljava/lang/String;

    .line 77
    const-string/jumbo v4, "sid"

    const/16 v54, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, v54

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    .line 78
    const-string/jumbo v4, "uid"

    const/16 v54, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v54

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/vkcoffee/android/Global;->uid:I

    .line 89
    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    const v54, 0x1a10c7

    move/from16 v0, v54

    if-eq v4, v0, :cond_0

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    const v54, 0x1887270

    move/from16 v0, v54

    if-eq v4, v0, :cond_0

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    const v54, 0xaa250e4

    move/from16 v0, v54

    if-eq v4, v0, :cond_0

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    const v54, 0x4ac394

    move/from16 v0, v54

    if-eq v4, v0, :cond_0

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    const/16 v54, 0x195c

    move/from16 v0, v54

    if-ne v4, v0, :cond_3

    .line 90
    :cond_0
    const-string/jumbo v4, "vk"

    const-string/jumbo v54, "!!!onmessage!!!"

    move-object/from16 v0, v54

    invoke-static {v4, v0}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {v21 .. v21}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v30

    .line 92
    .local v30, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v54

    if-eqz v54, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 93
    .local v28, "k":Ljava/lang/String;
    const-string/jumbo v54, "vk"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v55

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string/jumbo v56, " = "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1039
    .end local v21    # "extras":Landroid/os/Bundle;
    .end local v28    # "k":Ljava/lang/String;
    .end local v30    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v44    # "sprefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v53

    .line 1040
    .local v53, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "vk"

    const-string/jumbo v54, "Error processing GCM message"

    move-object/from16 v0, v54

    move-object/from16 v1, v53

    invoke-static {v4, v0, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1042
    .end local v53    # "x":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 95
    .restart local v21    # "extras":Landroid/os/Bundle;
    .restart local v30    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v44    # "sprefs":Landroid/content/SharedPreferences;
    :cond_2
    :try_start_1
    const-string/jumbo v4, "vk"

    const-string/jumbo v54, "==============="

    move-object/from16 v0, v54

    invoke-static {v4, v0}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .end local v30    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    const-string/jumbo v4, "push_counter"

    const/16 v54, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v54

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v38

    .line 100
    .local v38, "pcount":I
    invoke-interface/range {v44 .. v44}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v54, "push_counter"

    add-int/lit8 v55, v38, 0x1

    move-object/from16 v0, v54

    move/from16 v1, v55

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 102
    invoke-static/range {p2 .. p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v42

    .line 110
    .local v42, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "collapse_key"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 112
    .local v16, "ckey":Ljava/lang/String;
    const-string/jumbo v4, "update_stickers"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 113
    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkcoffee/android/stickers/Stickers;->reload()V

    goto :goto_1

    .line 117
    :cond_4
    const-string/jumbo v4, "sdk_open"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 118
    const-string/jumbo v4, "app_icon"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 119
    .local v26, "iconUrl":Ljava/lang/String;
    const-string/jumbo v4, "platform_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 120
    .local v41, "pkg":Ljava/lang/String;
    const-string/jumbo v4, "app_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 121
    .local v27, "id":Ljava/lang/String;
    const-string/jumbo v4, "app_name"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 122
    .local v13, "appName":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 123
    .local v25, "icon":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "vkontakte://app/?pkg="

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, "&id="

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v54 .. v54}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-direct {v5, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 124
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.vkcoffee.android"

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const/4 v4, 0x0

    const/high16 v54, 0x10000000

    move-object/from16 v0, p2

    move/from16 v1, v54

    invoke-static {v0, v4, v5, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    .line 126
    .local v19, "contentIntent":Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v54, 0x7f02021c

    .line 127
    move/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 128
    invoke-virtual {v4, v13}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v54

    const v55, 0x7f0801b4

    invoke-virtual/range {v54 .. v55}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v54

    const v55, 0x7f0801b5

    const/16 v56, 0x1

    move/from16 v0, v56

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v56, v0

    const/16 v57, 0x0

    aput-object v13, v56, v57

    invoke-virtual/range {v54 .. v56}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 131
    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 132
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 133
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v35

    .line 134
    .local v35, "ntf":Landroid/app/Notification;
    const-string/jumbo v4, "notification"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/app/NotificationManager;

    .line 135
    .local v33, "mgr":Landroid/app/NotificationManager;
    move-object/from16 v0, v35

    iget v4, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    move-object/from16 v0, v35

    iput v4, v0, Landroid/app/Notification;->flags:I

    .line 136
    move-object/from16 v0, v35

    iget v4, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v35

    iput v4, v0, Landroid/app/Notification;->defaults:I

    .line 137
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v54, 0x15

    move/from16 v0, v54

    if-lt v4, v0, :cond_5

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v54, 0x7f0f0012

    move/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object/from16 v0, v35

    iput v4, v0, Landroid/app/Notification;->color:I

    .line 140
    :cond_5
    const/16 v4, 0x1f9

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 144
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v13    # "appName":Ljava/lang/String;
    .end local v19    # "contentIntent":Landroid/app/PendingIntent;
    .end local v25    # "icon":Landroid/graphics/Bitmap;
    .end local v26    # "iconUrl":Ljava/lang/String;
    .end local v27    # "id":Ljava/lang/String;
    .end local v33    # "mgr":Landroid/app/NotificationManager;
    .end local v35    # "ntf":Landroid/app/Notification;
    .end local v41    # "pkg":Ljava/lang/String;
    :cond_6
    const-string/jumbo v4, "open_url"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 145
    const-string/jumbo v4, "text"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 146
    .local v10, "text":Ljava/lang/String;
    const-string/jumbo v4, "1"

    const-string/jumbo v54, "try_internal"

    move-object/from16 v0, v21

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v47

    .line 147
    .local v47, "tryInternal":Z
    const-string/jumbo v4, "url"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 148
    .local v50, "url":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v54, "android.intent.action.VIEW"

    if-eqz v47, :cond_14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "vklink://internal/?"

    move-object/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-direct {v5, v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 149
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "from_notification"

    const/16 v54, 0x1

    move/from16 v0, v54

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    if-eqz v47, :cond_7

    .line 151
    const-string/jumbo v4, "com.vkcoffee.android"

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string/jumbo v4, "token"

    invoke-static/range {v50 .. v50}, Lcom/vkcoffee/android/utils/XSRFTokenUtil;->generateToken(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    :cond_7
    sget v4, Lcom/vkcoffee/android/GCMBroadcastReceiver;->openUrlNotificationLast:I

    const/high16 v54, 0x8000000

    move-object/from16 v0, p2

    move/from16 v1, v54

    invoke-static {v0, v4, v5, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    .line 156
    .restart local v19    # "contentIntent":Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v54, 0x7f020219

    .line 157
    move/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v54

    const-string/jumbo v4, "title"

    .line 158
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    const-string/jumbo v4, "title"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_3
    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 159
    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 160
    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 161
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/16 v54, 0x1

    .line 162
    move/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const/16 v54, 0x2

    .line 163
    move/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v15

    .line 164
    .local v15, "bldr":Landroid/app/Notification$Builder;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v54, 0x10

    move/from16 v0, v54

    if-lt v4, v0, :cond_16

    .line 165
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    const/16 v54, 0x2

    move/from16 v0, v54

    invoke-virtual {v15, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-direct {v4, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 166
    invoke-virtual {v4, v10}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    .line 167
    invoke-virtual {v4}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v35

    .line 171
    .restart local v35    # "ntf":Landroid/app/Notification;
    :goto_4
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v54, 0x15

    move/from16 v0, v54

    if-lt v4, v0, :cond_8

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v54, 0x7f0f0012

    move/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object/from16 v0, v35

    iput v4, v0, Landroid/app/Notification;->color:I

    .line 174
    :cond_8
    const-string/jumbo v4, "notification"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/app/NotificationManager;

    .line 175
    .restart local v33    # "mgr":Landroid/app/NotificationManager;
    sget v4, Lcom/vkcoffee/android/GCMBroadcastReceiver;->openUrlNotificationLast:I

    add-int/lit16 v4, v4, 0x208

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 176
    sget v4, Lcom/vkcoffee/android/GCMBroadcastReceiver;->openUrlNotificationLast:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/vkcoffee/android/GCMBroadcastReceiver;->openUrlNotificationLast:I

    .line 177
    sget v4, Lcom/vkcoffee/android/GCMBroadcastReceiver;->openUrlNotificationLast:I

    rem-int/lit8 v4, v4, 0x14

    sput v4, Lcom/vkcoffee/android/GCMBroadcastReceiver;->openUrlNotificationLast:I

    .line 180
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v10    # "text":Ljava/lang/String;
    .end local v15    # "bldr":Landroid/app/Notification$Builder;
    .end local v19    # "contentIntent":Landroid/app/PendingIntent;
    .end local v33    # "mgr":Landroid/app/NotificationManager;
    .end local v35    # "ntf":Landroid/app/Notification;
    .end local v47    # "tryInternal":Z
    .end local v50    # "url":Ljava/lang/String;
    :cond_9
    const-string/jumbo v4, "validate_device"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 181
    const-string/jumbo v4, "text"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 182
    .restart local v10    # "text":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "vklink://internal/?"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, "url"

    move-object/from16 v0, v21

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v54 .. v54}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-direct {v5, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 183
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.vkcoffee.android"

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string/jumbo v4, "device_token"

    const-string/jumbo v54, "device_token"

    move-object/from16 v0, v21

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string/jumbo v4, "token"

    const-string/jumbo v54, "url"

    move-object/from16 v0, v21

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v54 .. v54}, Lcom/vkcoffee/android/utils/XSRFTokenUtil;->generateToken(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    sget v4, Lcom/vkcoffee/android/GCMBroadcastReceiver;->validateDeviceNotificationLast:I

    const/high16 v54, 0x8000000

    move-object/from16 v0, p2

    move/from16 v1, v54

    invoke-static {v0, v4, v5, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    .line 188
    .restart local v19    # "contentIntent":Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v54, 0x7f020219

    .line 189
    move/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const v54, 0x7f080074

    .line 190
    move-object/from16 v0, p2

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 191
    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 192
    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 193
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/16 v54, 0x1

    .line 194
    move/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const/16 v54, 0x2

    .line 195
    move/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v15

    .line 196
    .restart local v15    # "bldr":Landroid/app/Notification$Builder;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v54, 0x10

    move/from16 v0, v54

    if-lt v4, v0, :cond_17

    .line 197
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    const/16 v54, 0x2

    move/from16 v0, v54

    invoke-virtual {v15, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-direct {v4, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 198
    invoke-virtual {v4, v10}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    .line 199
    invoke-virtual {v4}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v35

    .line 203
    .restart local v35    # "ntf":Landroid/app/Notification;
    :goto_5
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v54, 0x15

    move/from16 v0, v54

    if-lt v4, v0, :cond_a

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v54, 0x7f0f0012

    move/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object/from16 v0, v35

    iput v4, v0, Landroid/app/Notification;->color:I

    .line 206
    :cond_a
    const-string/jumbo v4, "notification"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/app/NotificationManager;

    .line 207
    .restart local v33    # "mgr":Landroid/app/NotificationManager;
    sget v4, Lcom/vkcoffee/android/GCMBroadcastReceiver;->validateDeviceNotificationLast:I

    add-int/lit16 v4, v4, 0x21c

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 208
    sget v4, Lcom/vkcoffee/android/GCMBroadcastReceiver;->validateDeviceNotificationLast:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/vkcoffee/android/GCMBroadcastReceiver;->validateDeviceNotificationLast:I

    .line 209
    sget v4, Lcom/vkcoffee/android/GCMBroadcastReceiver;->validateDeviceNotificationLast:I

    rem-int/lit8 v4, v4, 0x14

    sput v4, Lcom/vkcoffee/android/GCMBroadcastReceiver;->validateDeviceNotificationLast:I

    .line 212
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v10    # "text":Ljava/lang/String;
    .end local v15    # "bldr":Landroid/app/Notification$Builder;
    .end local v19    # "contentIntent":Landroid/app/PendingIntent;
    .end local v33    # "mgr":Landroid/app/NotificationManager;
    .end local v35    # "ntf":Landroid/app/Notification;
    :cond_b
    const-string/jumbo v4, "validate_action"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 213
    const-string/jumbo v4, "text"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 214
    .restart local v10    # "text":Ljava/lang/String;
    const-string/jumbo v4, "confirm"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 215
    .local v32, "longText":Ljava/lang/String;
    if-nez v32, :cond_c

    .line 216
    move-object/from16 v32, v10

    .line 218
    :cond_c
    const-string/jumbo v4, "confirm_hash"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 219
    .local v24, "hash":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-class v54, Lcom/vkcoffee/android/ConfirmActionBroadcastReceiver;

    move-object/from16 v0, v54

    invoke-direct {v5, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 220
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "confirm_text"

    move-object/from16 v0, v32

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string/jumbo v4, "hash"

    move-object/from16 v0, v24

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string/jumbo v4, "notification_id"

    sget v54, Lcom/vkcoffee/android/GCMBroadcastReceiver;->validateActionNotificationLast:I

    move/from16 v0, v54

    add-int/lit16 v0, v0, 0x230

    move/from16 v54, v0

    move/from16 v0, v54

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    const-string/jumbo v4, "token"

    invoke-static/range {v24 .. v24}, Lcom/vkcoffee/android/utils/XSRFTokenUtil;->generateToken(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string/jumbo v4, "com.vkontatke.android.ACTION_CONFIRM_OPEN_BOX"

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    sget v4, Lcom/vkcoffee/android/GCMBroadcastReceiver;->validateActionNotificationLast:I

    const/high16 v54, 0x8000000

    move-object/from16 v0, p2

    move/from16 v1, v54

    invoke-static {v0, v4, v5, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    .line 226
    .restart local v19    # "contentIntent":Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v54, 0x7f020219

    .line 227
    move/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const v54, 0x7f0800f5

    .line 228
    move-object/from16 v0, p2

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 229
    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 230
    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 231
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/16 v54, 0x1

    .line 232
    move/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const/16 v54, 0x2

    .line 233
    move/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v15

    .line 234
    .restart local v15    # "bldr":Landroid/app/Notification$Builder;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v54, 0x10

    move/from16 v0, v54

    if-lt v4, v0, :cond_d

    .line 235
    new-instance v18, Landroid/content/Intent;

    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-class v54, Lcom/vkcoffee/android/ConfirmActionBroadcastReceiver;

    move-object/from16 v0, v18

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    .local v18, "confirmIntent":Landroid/content/Intent;
    const-string/jumbo v4, "hash"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string/jumbo v4, "notification_id"

    sget v54, Lcom/vkcoffee/android/GCMBroadcastReceiver;->validateActionNotificationLast:I

    move/from16 v0, v54

    add-int/lit16 v0, v0, 0x230

    move/from16 v54, v0

    move-object/from16 v0, v18

    move/from16 v1, v54

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    const-string/jumbo v4, "token"

    invoke-static/range {v24 .. v24}, Lcom/vkcoffee/android/utils/XSRFTokenUtil;->generateToken(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v18

    move-object/from16 v1, v54

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string/jumbo v4, "com.vkontatke.android.ACTION_CONFIRM_ACTION"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    new-instance v20, Landroid/content/Intent;

    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-class v54, Lcom/vkcoffee/android/ConfirmActionBroadcastReceiver;

    move-object/from16 v0, v20

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    .local v20, "declineIntent":Landroid/content/Intent;
    const-string/jumbo v4, "hash"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string/jumbo v4, "notification_id"

    sget v54, Lcom/vkcoffee/android/GCMBroadcastReceiver;->validateActionNotificationLast:I

    move/from16 v0, v54

    add-int/lit16 v0, v0, 0x230

    move/from16 v54, v0

    move-object/from16 v0, v20

    move/from16 v1, v54

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    const-string/jumbo v4, "token"

    invoke-static/range {v24 .. v24}, Lcom/vkcoffee/android/utils/XSRFTokenUtil;->generateToken(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v20

    move-object/from16 v1, v54

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string/jumbo v4, "com.vkontatke.android.ACTION_DECLINE_ACTION"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const v4, 0x7f020140

    const v54, 0x7f0804f3

    move-object/from16 v0, p2

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v54

    sget v55, Lcom/vkcoffee/android/GCMBroadcastReceiver;->validateActionNotificationLast:I

    const/high16 v56, 0x8000000

    move-object/from16 v0, p2

    move/from16 v1, v55

    move-object/from16 v2, v18

    move/from16 v3, v56

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v55

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    invoke-virtual {v15, v4, v0, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 246
    const v4, 0x7f020234

    const v54, 0x7f0800b7

    move-object/from16 v0, p2

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v54

    sget v55, Lcom/vkcoffee/android/GCMBroadcastReceiver;->validateActionNotificationLast:I

    const/high16 v56, 0x8000000

    move-object/from16 v0, p2

    move/from16 v1, v55

    move-object/from16 v2, v20

    move/from16 v3, v56

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v55

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    invoke-virtual {v15, v4, v0, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 247
    const/4 v4, 0x2

    invoke-virtual {v15, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 250
    .end local v18    # "confirmIntent":Landroid/content/Intent;
    .end local v20    # "declineIntent":Landroid/content/Intent;
    :cond_d
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v54, 0x10

    move/from16 v0, v54

    if-lt v4, v0, :cond_18

    .line 251
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4, v15}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 252
    invoke-virtual {v4, v10}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    .line 253
    invoke-virtual {v4}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v35

    .line 257
    .restart local v35    # "ntf":Landroid/app/Notification;
    :goto_6
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v54, 0x15

    move/from16 v0, v54

    if-lt v4, v0, :cond_e

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v54, 0x7f0f0012

    move/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object/from16 v0, v35

    iput v4, v0, Landroid/app/Notification;->color:I

    .line 260
    :cond_e
    const-string/jumbo v4, "notification"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/app/NotificationManager;

    .line 261
    .restart local v33    # "mgr":Landroid/app/NotificationManager;
    sget v4, Lcom/vkcoffee/android/GCMBroadcastReceiver;->validateActionNotificationLast:I

    add-int/lit16 v4, v4, 0x230

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 262
    sget v4, Lcom/vkcoffee/android/GCMBroadcastReceiver;->validateActionNotificationLast:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/vkcoffee/android/GCMBroadcastReceiver;->validateActionNotificationLast:I

    .line 263
    sget v4, Lcom/vkcoffee/android/GCMBroadcastReceiver;->validateActionNotificationLast:I

    rem-int/lit8 v4, v4, 0x14

    sput v4, Lcom/vkcoffee/android/GCMBroadcastReceiver;->validateActionNotificationLast:I

    .line 266
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v10    # "text":Ljava/lang/String;
    .end local v15    # "bldr":Landroid/app/Notification$Builder;
    .end local v19    # "contentIntent":Landroid/app/PendingIntent;
    .end local v24    # "hash":Ljava/lang/String;
    .end local v32    # "longText":Ljava/lang/String;
    .end local v33    # "mgr":Landroid/app/NotificationManager;
    .end local v35    # "ntf":Landroid/app/Notification;
    :cond_f
    const-string/jumbo v4, "show_message"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 267
    const-string/jumbo v4, "text"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 268
    .restart local v10    # "text":Ljava/lang/String;
    const-string/jumbo v4, "message"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 269
    .restart local v32    # "longText":Ljava/lang/String;
    if-nez v32, :cond_10

    .line 270
    move-object/from16 v32, v10

    .line 272
    :cond_10
    new-instance v5, Landroid/content/Intent;

    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-class v54, Lcom/vkcoffee/android/ConfirmActionBroadcastReceiver;

    move-object/from16 v0, v54

    invoke-direct {v5, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "text"

    move-object/from16 v0, v32

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string/jumbo v4, "button"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 275
    const-string/jumbo v4, "button"

    const-string/jumbo v54, "button"

    move-object/from16 v0, v21

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    :cond_11
    const-string/jumbo v54, "title"

    const-string/jumbo v4, "title"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string/jumbo v4, "title"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_7
    move-object/from16 v0, v54

    invoke-virtual {v5, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string/jumbo v4, "hash"

    invoke-virtual {v5, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string/jumbo v4, "token"

    invoke-static {v10}, Lcom/vkcoffee/android/utils/XSRFTokenUtil;->generateToken(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string/jumbo v4, "com.vkontatke.android.ACTION_CONFIRM_OPEN_NOTIFICATION"

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    sget v4, Lcom/vkcoffee/android/GCMBroadcastReceiver;->validateActionNotificationLast:I

    const/high16 v54, 0x8000000

    move-object/from16 v0, p2

    move/from16 v1, v54

    invoke-static {v0, v4, v5, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    .line 282
    .restart local v19    # "contentIntent":Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v54, 0x7f020219

    .line 283
    move/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v54

    const-string/jumbo v4, "title"

    .line 284
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string/jumbo v4, "title"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_8
    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 285
    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 286
    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 287
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/16 v54, 0x1

    .line 288
    move/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const/16 v54, 0x2

    .line 289
    move/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v15

    .line 291
    .restart local v15    # "bldr":Landroid/app/Notification$Builder;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v54, 0x10

    move/from16 v0, v54

    if-lt v4, v0, :cond_1b

    .line 292
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4, v15}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-static/range {v32 .. v32}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v35

    .line 296
    .restart local v35    # "ntf":Landroid/app/Notification;
    :goto_9
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v54, 0x15

    move/from16 v0, v54

    if-lt v4, v0, :cond_12

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v54, 0x7f0f0012

    move/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object/from16 v0, v35

    iput v4, v0, Landroid/app/Notification;->color:I

    .line 299
    :cond_12
    const-string/jumbo v4, "notification"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/app/NotificationManager;

    .line 300
    .restart local v33    # "mgr":Landroid/app/NotificationManager;
    sget v4, Lcom/vkcoffee/android/GCMBroadcastReceiver;->showMessageNotificationLast:I

    add-int/lit16 v4, v4, 0x244

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 301
    sget v4, Lcom/vkcoffee/android/GCMBroadcastReceiver;->showMessageNotificationLast:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/vkcoffee/android/GCMBroadcastReceiver;->showMessageNotificationLast:I

    .line 302
    sget v4, Lcom/vkcoffee/android/GCMBroadcastReceiver;->showMessageNotificationLast:I

    rem-int/lit8 v4, v4, 0x14

    sput v4, Lcom/vkcoffee/android/GCMBroadcastReceiver;->showMessageNotificationLast:I

    .line 310
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v10    # "text":Ljava/lang/String;
    .end local v15    # "bldr":Landroid/app/Notification$Builder;
    .end local v19    # "contentIntent":Landroid/app/PendingIntent;
    .end local v32    # "longText":Ljava/lang/String;
    .end local v33    # "mgr":Landroid/app/NotificationManager;
    .end local v35    # "ntf":Landroid/app/Notification;
    :cond_13
    const-string/jumbo v4, "dnd_end"

    const-wide/16 v54, 0x0

    move-object/from16 v0, v42

    move-wide/from16 v1, v54

    invoke-interface {v0, v4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v54

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v56

    cmp-long v4, v54, v56

    if-lez v4, :cond_1c

    .line 311
    const-string/jumbo v4, "vk"

    const-string/jumbo v54, "global dnd is active"

    move-object/from16 v0, v54

    invoke-static {v4, v0}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .restart local v10    # "text":Ljava/lang/String;
    .restart local v47    # "tryInternal":Z
    .restart local v50    # "url":Ljava/lang/String;
    :cond_14
    move-object/from16 v4, v50

    .line 148
    goto/16 :goto_2

    .line 158
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v19    # "contentIntent":Landroid/app/PendingIntent;
    :cond_15
    const v4, 0x7f080074

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 169
    .restart local v15    # "bldr":Landroid/app/Notification$Builder;
    :cond_16
    invoke-virtual {v15}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v35

    .restart local v35    # "ntf":Landroid/app/Notification;
    goto/16 :goto_4

    .line 201
    .end local v35    # "ntf":Landroid/app/Notification;
    .end local v47    # "tryInternal":Z
    .end local v50    # "url":Ljava/lang/String;
    :cond_17
    invoke-virtual {v15}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v35

    .restart local v35    # "ntf":Landroid/app/Notification;
    goto/16 :goto_5

    .line 255
    .end local v35    # "ntf":Landroid/app/Notification;
    .restart local v24    # "hash":Ljava/lang/String;
    .restart local v32    # "longText":Ljava/lang/String;
    :cond_18
    invoke-virtual {v15}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v35

    .restart local v35    # "ntf":Landroid/app/Notification;
    goto/16 :goto_6

    .line 277
    .end local v15    # "bldr":Landroid/app/Notification$Builder;
    .end local v19    # "contentIntent":Landroid/app/PendingIntent;
    .end local v24    # "hash":Ljava/lang/String;
    .end local v35    # "ntf":Landroid/app/Notification;
    :cond_19
    const v4, 0x7f080074

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_7

    .line 284
    .restart local v19    # "contentIntent":Landroid/app/PendingIntent;
    :cond_1a
    const v4, 0x7f080074

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    .line 294
    .restart local v15    # "bldr":Landroid/app/Notification$Builder;
    :cond_1b
    invoke-virtual {v15}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v35

    .restart local v35    # "ntf":Landroid/app/Notification;
    goto/16 :goto_9

    .line 315
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v10    # "text":Ljava/lang/String;
    .end local v15    # "bldr":Landroid/app/Notification$Builder;
    .end local v19    # "contentIntent":Landroid/app/PendingIntent;
    .end local v32    # "longText":Ljava/lang/String;
    .end local v35    # "ntf":Landroid/app/Notification;
    :cond_1c
    const-string/jumbo v4, "wall_post"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 316
    const-string/jumbo v4, "Posts"

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/vkcoffee/android/NotificationUtils;->areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 317
    const-string/jumbo v4, "vk"

    const-string/jumbo v54, "posts notifications disabled"

    move-object/from16 v0, v54

    invoke-static {v4, v0}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 320
    :cond_1d
    new-instance v4, Lcom/vkcoffee/android/api/wall/WallGetById;

    const/16 v54, 0x1

    move/from16 v0, v54

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    const-string/jumbo v56, "place"

    move-object/from16 v0, v21

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    const-string/jumbo v57, "wall"

    const-string/jumbo v58, ""

    invoke-virtual/range {v56 .. v58}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v56

    aput-object v56, v54, v55

    move-object/from16 v0, v54

    invoke-direct {v4, v0}, Lcom/vkcoffee/android/api/wall/WallGetById;-><init>([Ljava/lang/String;)V

    new-instance v54, Lcom/vkcoffee/android/GCMBroadcastReceiver$1;

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/GCMBroadcastReceiver$1;-><init>(Lcom/vkcoffee/android/GCMBroadcastReceiver;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 321
    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Lcom/vkcoffee/android/api/wall/WallGetById;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v4

    .line 356
    invoke-virtual {v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_1

    .line 371
    :cond_1e
    const-string/jumbo v4, "new_post"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 372
    new-instance v4, Lcom/vkcoffee/android/api/wall/WallGetById;

    const/16 v54, 0x1

    move/from16 v0, v54

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "from_id"

    move-object/from16 v0, v21

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, "_"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, "post_id"

    move-object/from16 v0, v21

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    aput-object v56, v54, v55

    move-object/from16 v0, v54

    invoke-direct {v4, v0}, Lcom/vkcoffee/android/api/wall/WallGetById;-><init>([Ljava/lang/String;)V

    new-instance v54, Lcom/vkcoffee/android/GCMBroadcastReceiver$2;

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/GCMBroadcastReceiver$2;-><init>(Lcom/vkcoffee/android/GCMBroadcastReceiver;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 373
    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Lcom/vkcoffee/android/api/wall/WallGetById;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v4

    .line 409
    invoke-virtual {v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_1

    .line 413
    :cond_1f
    const-string/jumbo v4, "request"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    const-string/jumbo v4, "invite"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 414
    :cond_20
    const-string/jumbo v4, "Games"

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/vkcoffee/android/NotificationUtils;->areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 415
    const-string/jumbo v4, "vk"

    const-string/jumbo v54, "games notifications disabled"

    move-object/from16 v0, v54

    invoke-static {v4, v0}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 419
    :cond_21
    const-string/jumbo v4, "from_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v48

    .line 420
    .local v48, "uid":I
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/vkcoffee/android/data/Friends;->getUsersBlocking(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v52

    .line 421
    .local v52, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 424
    const/4 v4, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/vkcoffee/android/UserProfile;

    .line 425
    .local v51, "user":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v4, "from_name"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    const-string/jumbo v4, "from_name"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 426
    .local v22, "fullName":Ljava/lang/String;
    :goto_a
    invoke-static/range {p2 .. p2}, Lcom/vkcoffee/android/LinkRedirActivity;->createIntentForNotification(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    .line 427
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "fdsafdsafdsafdasfdsafasfdfdsaf"

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const-string/jumbo v29, "app_id"

    .line 429
    .local v29, "keyAppId":Ljava/lang/String;
    const-string/jumbo v4, "app_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 430
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v54, "vkontakte://vk.com/apps?from_notification=1&game_id="

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v54, "app_id"

    move-object/from16 v0, v21

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 434
    :goto_b
    const/high16 v4, 0x10000000

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 436
    const-string/jumbo v4, "request"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 437
    const-string/jumbo v4, "text"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    const-string/jumbo v4, "text"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_25

    .line 438
    const-string/jumbo v4, "text"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 447
    .restart local v10    # "text":Ljava/lang/String;
    :goto_c
    invoke-static/range {p2 .. p2}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v4

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v40

    .line 448
    .local v40, "photo":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 449
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 450
    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/16 v54, 0x0

    const/high16 v55, 0x10000000

    .line 451
    move-object/from16 v0, p2

    move/from16 v1, v54

    move/from16 v2, v55

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v54

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, " "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    .line 452
    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/16 v54, 0x1

    .line 453
    move/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    if-eqz v40, :cond_28

    .line 454
    .end local v40    # "photo":Landroid/graphics/Bitmap;
    :goto_d
    const/high16 v54, 0x42800000    # 64.0f

    invoke-static/range {v54 .. v54}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v54

    const/high16 v55, 0x42800000    # 64.0f

    invoke-static/range {v55 .. v55}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v55

    const/16 v56, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v54

    move/from16 v2, v55

    move/from16 v3, v56

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v54, 0x7f020215

    .line 456
    move/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v15

    .line 457
    .restart local v15    # "bldr":Landroid/app/Notification$Builder;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v54, 0x10

    move/from16 v0, v54

    if-lt v4, v0, :cond_29

    .line 458
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4, v15}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v54, v0

    .line 459
    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    .line 460
    invoke-virtual {v4, v10}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    .line 461
    invoke-virtual {v4}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v35

    .line 465
    .restart local v35    # "ntf":Landroid/app/Notification;
    :goto_e
    const-string/jumbo v4, "Games"

    const/16 v54, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    move/from16 v2, v54

    invoke-static {v0, v1, v4, v2}, Lcom/vkcoffee/android/NotificationUtils;->applySettings(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Z)V

    .line 466
    const-string/jumbo v4, "notification"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/app/NotificationManager;

    .line 467
    .local v45, "srv":Landroid/app/NotificationManager;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v54, 0x15

    move/from16 v0, v54

    if-lt v4, v0, :cond_22

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v54, 0x7f0f0012

    move/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object/from16 v0, v35

    iput v4, v0, Landroid/app/Notification;->color:I

    .line 469
    const-string/jumbo v4, "social"

    move-object/from16 v0, v35

    iput-object v4, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 471
    :cond_22
    const/16 v4, 0x1f8

    move-object/from16 v0, v45

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 473
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->updateCounters()V

    .line 474
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v54, "com.vkcoffee.android.games.RELOAD_REQUESTS"

    move-object/from16 v0, v54

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v54, "com.vkcoffee.android.permission.ACCESS_DATA"

    move-object/from16 v0, p2

    move-object/from16 v1, v54

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 425
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v10    # "text":Ljava/lang/String;
    .end local v15    # "bldr":Landroid/app/Notification$Builder;
    .end local v22    # "fullName":Ljava/lang/String;
    .end local v29    # "keyAppId":Ljava/lang/String;
    .end local v35    # "ntf":Landroid/app/Notification;
    .end local v45    # "srv":Landroid/app/NotificationManager;
    :cond_23
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v22, v0

    goto/16 :goto_a

    .line 432
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v22    # "fullName":Ljava/lang/String;
    .restart local v29    # "keyAppId":Ljava/lang/String;
    :cond_24
    const-string/jumbo v4, "vkontakte://vk.com/apps?from_notification=1"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_b

    .line 440
    :cond_25
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v54

    move-object/from16 v0, v51

    iget-boolean v4, v0, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v4, :cond_26

    const v4, 0x7f0801d2

    :goto_f
    const/16 v55, 0x1

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    const-string/jumbo v57, "app_name"

    move-object/from16 v0, v21

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    aput-object v57, v55, v56

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    invoke-virtual {v0, v4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "text":Ljava/lang/String;
    goto/16 :goto_c

    .end local v10    # "text":Ljava/lang/String;
    :cond_26
    const v4, 0x7f0801d3

    goto :goto_f

    .line 443
    :cond_27
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v54, 0x7f0801d1

    const/16 v55, 0x1

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    const-string/jumbo v57, "app_name"

    move-object/from16 v0, v21

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    aput-object v57, v55, v56

    move/from16 v0, v54

    move-object/from16 v1, v55

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "text":Ljava/lang/String;
    goto/16 :goto_c

    .line 454
    .restart local v40    # "photo":Landroid/graphics/Bitmap;
    :cond_28
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v54

    const v55, 0x7f0202f2

    invoke-static/range {v54 .. v55}, Lcom/vkcoffee/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v40

    goto/16 :goto_d

    .line 463
    .end local v40    # "photo":Landroid/graphics/Bitmap;
    .restart local v15    # "bldr":Landroid/app/Notification$Builder;
    :cond_29
    invoke-virtual {v15}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v35

    .restart local v35    # "ntf":Landroid/app/Notification;
    goto/16 :goto_e

    .line 479
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v10    # "text":Ljava/lang/String;
    .end local v15    # "bldr":Landroid/app/Notification$Builder;
    .end local v22    # "fullName":Ljava/lang/String;
    .end local v29    # "keyAppId":Ljava/lang/String;
    .end local v35    # "ntf":Landroid/app/Notification;
    .end local v48    # "uid":I
    .end local v51    # "user":Lcom/vkcoffee/android/UserProfile;
    .end local v52    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_2a
    const-string/jumbo v4, "gift"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 480
    const-string/jumbo v4, "Gifts"

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/vkcoffee/android/NotificationUtils;->areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 481
    const-string/jumbo v4, "vk"

    const-string/jumbo v54, "messages notifications disabled"

    move-object/from16 v0, v54

    invoke-static {v4, v0}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 484
    :cond_2b
    const-string/jumbo v4, "from_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v48

    .line 485
    .restart local v48    # "uid":I
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/vkcoffee/android/data/Friends;->getUsersBlocking(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v52

    .line 486
    .restart local v52    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 489
    const/4 v4, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/vkcoffee/android/UserProfile;

    .line 490
    .restart local v51    # "user":Lcom/vkcoffee/android/UserProfile;
    invoke-static/range {p2 .. p2}, Lcom/vkcoffee/android/LinkRedirActivity;->createIntentForNotification(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    .line 491
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "gfhdjsklhdfjsk"

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    const-string/jumbo v4, "vkontakte://vk.com/feed?section=notifications"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 493
    const/high16 v4, 0x10000000

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 495
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v54

    move-object/from16 v0, v51

    iget-boolean v4, v0, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v4, :cond_2d

    const v4, 0x7f0802c0

    :goto_10
    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 498
    .restart local v10    # "text":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v4

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v40

    .line 499
    .restart local v40    # "photo":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v54, v0

    .line 500
    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 501
    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/16 v54, 0x0

    const/high16 v55, 0x10000000

    .line 502
    move-object/from16 v0, p2

    move/from16 v1, v54

    move/from16 v2, v55

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, " "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    .line 503
    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    if-eqz v40, :cond_2e

    .line 504
    .end local v40    # "photo":Landroid/graphics/Bitmap;
    :goto_11
    const/high16 v54, 0x42800000    # 64.0f

    invoke-static/range {v54 .. v54}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v54

    const/high16 v55, 0x42800000    # 64.0f

    invoke-static/range {v55 .. v55}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v55

    const/16 v56, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v54

    move/from16 v2, v55

    move/from16 v3, v56

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v54, 0x7f020214

    .line 506
    move/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v15

    .line 507
    .restart local v15    # "bldr":Landroid/app/Notification$Builder;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v54, 0x10

    move/from16 v0, v54

    if-lt v4, v0, :cond_2f

    .line 508
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4, v15}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v54, v0

    .line 509
    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    .line 510
    invoke-virtual {v4, v10}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    .line 511
    invoke-virtual {v4}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v35

    .line 515
    .restart local v35    # "ntf":Landroid/app/Notification;
    :goto_12
    move-object/from16 v0, v35

    iget v4, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    move-object/from16 v0, v35

    iput v4, v0, Landroid/app/Notification;->flags:I

    .line 516
    const-string/jumbo v4, "Gifts"

    const/16 v54, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    move/from16 v2, v54

    invoke-static {v0, v1, v4, v2}, Lcom/vkcoffee/android/NotificationUtils;->applySettings(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Z)V

    .line 517
    const-string/jumbo v4, "notification"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/app/NotificationManager;

    .line 518
    .restart local v45    # "srv":Landroid/app/NotificationManager;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v54, 0x15

    move/from16 v0, v54

    if-lt v4, v0, :cond_2c

    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v54, 0x7f0f0012

    move/from16 v0, v54

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object/from16 v0, v35

    iput v4, v0, Landroid/app/Notification;->color:I

    .line 520
    const-string/jumbo v4, "social"

    move-object/from16 v0, v35

    iput-object v4, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 522
    :cond_2c
    const/16 v4, 0x1fa

    move-object/from16 v0, v45

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 495
    .end local v10    # "text":Ljava/lang/String;
    .end local v15    # "bldr":Landroid/app/Notification$Builder;
    .end local v35    # "ntf":Landroid/app/Notification;
    .end local v45    # "srv":Landroid/app/NotificationManager;
    :cond_2d
    const v4, 0x7f0802c1

    goto/16 :goto_10

    .line 504
    .restart local v10    # "text":Ljava/lang/String;
    .restart local v40    # "photo":Landroid/graphics/Bitmap;
    :cond_2e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v54

    const v55, 0x7f0202f2

    invoke-static/range {v54 .. v55}, Lcom/vkcoffee/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v40

    goto/16 :goto_11

    .line 513
    .end local v40    # "photo":Landroid/graphics/Bitmap;
    .restart local v15    # "bldr":Landroid/app/Notification$Builder;
    :cond_2f
    invoke-virtual {v15}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v35

    .restart local v35    # "ntf":Landroid/app/Notification;
    goto :goto_12

    .line 526
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v10    # "text":Ljava/lang/String;
    .end local v15    # "bldr":Landroid/app/Notification$Builder;
    .end local v35    # "ntf":Landroid/app/Notification;
    .end local v48    # "uid":I
    .end local v51    # "user":Lcom/vkcoffee/android/UserProfile;
    .end local v52    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_30
    const-string/jumbo v4, "friend"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 527
    const-string/jumbo v4, "FriendRequests"

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/vkcoffee/android/NotificationUtils;->areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 528
    const-string/jumbo v4, "vk"

    const-string/jumbo v54, "friend notifications disabled"

    move-object/from16 v0, v54

    invoke-static {v4, v0}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 531
    :cond_31
    const-string/jumbo v4, "badge"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 532
    .local v17, "cnt":I
    const-string/jumbo v4, "uid"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v48

    .line 533
    .restart local v48    # "uid":I
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    const-string/jumbo v54, "vkontakte://vk.com/friends?section=requests"

    invoke-static/range {v54 .. v54}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-direct {v5, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 534
    .restart local v5    # "intent":Landroid/content/Intent;
    new-instance v49, Ljava/util/ArrayList;

    invoke-direct/range {v49 .. v49}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .local v49, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-static {v0, v5, v1}, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$3;->lambdaFactory$(Landroid/content/Context;Landroid/content/Intent;I)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-static {v0, v4}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V

    .line 592
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v17    # "cnt":I
    .end local v48    # "uid":I
    .end local v49    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_32
    const-string/jumbo v4, "group_invite"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 593
    const-string/jumbo v4, "GroupInvites"

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/vkcoffee/android/NotificationUtils;->areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 594
    const-string/jumbo v4, "vk"

    const-string/jumbo v54, "group notifications disabled"

    move-object/from16 v0, v54

    invoke-static {v4, v0}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 597
    :cond_33
    const-string/jumbo v4, "group_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    neg-int v0, v4

    move/from16 v48, v0

    .line 599
    .restart local v48    # "uid":I
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "vkontakte://profile/"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v54 .. v54}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-direct {v5, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 600
    .restart local v5    # "intent":Landroid/content/Intent;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Integer;

    const/16 v54, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v4, v54

    const/16 v54, 0x1

    const-string/jumbo v55, "from_id"

    move-object/from16 v0, v21

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v55

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v4, v54

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$4;->lambdaFactory$(Landroid/content/Context;Landroid/content/Intent;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-static {v4, v0}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V

    .line 640
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v48    # "uid":I
    :cond_34
    const-string/jumbo v4, "msg"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 641
    sget-boolean v4, Lcom/vkcoffee/android/LongPollService;->longPollRunning:Z

    if-eqz v4, :cond_35

    .line 642
    const-string/jumbo v4, "vk"

    const-string/jumbo v54, "LongPoll running, push message discarded"

    move-object/from16 v0, v54

    invoke-static {v4, v0}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 645
    :cond_35
    const-string/jumbo v4, "uid"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    .line 646
    .local v39, "peer":I
    const v4, 0x77359400

    move/from16 v0, v39

    if-le v0, v4, :cond_36

    const-string/jumbo v4, "notificationsChatMessages"

    :goto_13
    const/16 v54, 0x1

    move-object/from16 v0, v42

    move/from16 v1, v54

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_37

    .line 647
    const-string/jumbo v4, "vk"

    const-string/jumbo v54, "message notifications disabled"

    move-object/from16 v0, v54

    invoke-static {v4, v0}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 646
    :cond_36
    const-string/jumbo v4, "notificationsPrivateMessages"

    goto :goto_13

    .line 650
    :cond_37
    const-string/jumbo v4, "badge"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    .line 651
    .local v36, "num":I
    const-string/jumbo v4, "msg_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    .line 653
    .local v34, "mid":I
    invoke-static/range {v36 .. v36}, Lcom/vkcoffee/android/LongPollService;->setNumNewMessages(I)V

    .line 654
    invoke-static/range {v34 .. v34}, Lcom/vkcoffee/android/GCMBroadcastReceiver;->updateStateAndShowNotification(I)V

    .line 658
    .end local v34    # "mid":I
    .end local v36    # "num":I
    .end local v39    # "peer":I
    :cond_38
    const-string/jumbo v4, "friend_found"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 659
    const-string/jumbo v4, "FoundFriends"

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/vkcoffee/android/NotificationUtils;->areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 660
    const-string/jumbo v4, "vk"

    const-string/jumbo v54, "friend notifications disabled"

    move-object/from16 v0, v54

    invoke-static {v4, v0}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 663
    :cond_39
    const-string/jumbo v4, "uid"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v48

    .line 664
    .restart local v48    # "uid":I
    const-string/jumbo v4, "service"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 665
    .local v43, "service":Ljava/lang/String;
    new-instance v49, Ljava/util/ArrayList;

    invoke-direct/range {v49 .. v49}, Ljava/util/ArrayList;-><init>()V

    .line 666
    .restart local v49    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    move/from16 v0, v48

    move-object/from16 v1, v43

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$5;->lambdaFactory$(ILjava/lang/String;Landroid/content/Context;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-static {v0, v4}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V

    .line 717
    .end local v43    # "service":Ljava/lang/String;
    .end local v48    # "uid":I
    .end local v49    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3a
    const-string/jumbo v4, "friend_accepted"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 718
    const-string/jumbo v4, "uid"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v48

    .line 719
    .restart local v48    # "uid":I
    new-instance v49, Ljava/util/ArrayList;

    invoke-direct/range {v49 .. v49}, Ljava/util/ArrayList;-><init>()V

    .line 720
    .restart local v49    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    move/from16 v0, v48

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$6;->lambdaFactory$(ILandroid/content/Context;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-static {v0, v4}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V

    goto/16 :goto_1

    .line 754
    .end local v48    # "uid":I
    .end local v49    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3b
    const-string/jumbo v4, "group_accepted"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 755
    const-string/jumbo v4, "group_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 756
    .local v23, "gid":I
    new-instance v49, Ljava/util/ArrayList;

    invoke-direct/range {v49 .. v49}, Ljava/util/ArrayList;-><init>()V

    .line 757
    .restart local v49    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move/from16 v0, v23

    neg-int v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    move/from16 v0, v23

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$7;->lambdaFactory$(ILandroid/content/Context;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-static {v0, v4}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V

    goto/16 :goto_1

    .line 793
    .end local v23    # "gid":I
    .end local v49    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3c
    const-string/jumbo v4, "event_soon"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 794
    const-string/jumbo v4, "UpcomingEvents"

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/vkcoffee/android/NotificationUtils;->areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 795
    const-string/jumbo v4, "vk"

    const-string/jumbo v54, "upcoming events notifications disabled"

    move-object/from16 v0, v54

    invoke-static {v4, v0}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 798
    :cond_3d
    const-string/jumbo v4, "group_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 799
    .restart local v23    # "gid":I
    const-string/jumbo v4, "start_date"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v46

    .line 800
    .local v46, "startTime":I
    new-instance v49, Ljava/util/ArrayList;

    invoke-direct/range {v49 .. v49}, Ljava/util/ArrayList;-><init>()V

    .line 801
    .restart local v49    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move/from16 v0, v23

    neg-int v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    move/from16 v0, v23

    move-object/from16 v1, p2

    move/from16 v2, v46

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$8;->lambdaFactory$(ILandroid/content/Context;I)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-static {v0, v4}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V

    goto/16 :goto_1

    .line 837
    .end local v23    # "gid":I
    .end local v46    # "startTime":I
    .end local v49    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3e
    const-string/jumbo v4, "wall_publish"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 838
    const-string/jumbo v4, "group_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 839
    .restart local v23    # "gid":I
    new-instance v49, Ljava/util/ArrayList;

    invoke-direct/range {v49 .. v49}, Ljava/util/ArrayList;-><init>()V

    .line 840
    .restart local v49    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move/from16 v0, v23

    neg-int v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$9;->lambdaFactory$(Landroid/os/Bundle;Landroid/content/Context;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-static {v0, v4}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V

    goto/16 :goto_1

    .line 867
    .end local v23    # "gid":I
    .end local v49    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3f
    const-string/jumbo v4, "like"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 882
    const-string/jumbo v4, "Likes"

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/vkcoffee/android/NotificationUtils;->areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_40

    .line 883
    const-string/jumbo v4, "vk"

    const-string/jumbo v54, "likes notifications disabled"

    move-object/from16 v0, v54

    invoke-static {v4, v0}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 887
    :cond_40
    const-string/jumbo v31, "vkontakte://vk.com/feed?section=notifications"

    .line 888
    .local v31, "link":Ljava/lang/String;
    const-string/jumbo v4, "from_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v48

    .line 889
    .restart local v48    # "uid":I
    const-string/jumbo v4, "object"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 890
    .local v37, "object":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    const-string/jumbo v54, "vkontakte://vk.com/feed?section=notifications"

    invoke-static/range {v54 .. v54}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-direct {v5, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 891
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 893
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$10;->lambdaFactory$(Landroid/content/Context;Landroid/os/Bundle;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;

    move-result-object v54

    const/16 v55, 0x2

    move-object/from16 v0, v54

    move/from16 v1, v55

    invoke-static {v4, v0, v1}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;I)V

    goto/16 :goto_1

    .line 903
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v31    # "link":Ljava/lang/String;
    .end local v37    # "object":Ljava/lang/String;
    .end local v48    # "uid":I
    :cond_41
    const-string/jumbo v4, "repost"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 917
    const-string/jumbo v4, "Reposts"

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/vkcoffee/android/NotificationUtils;->areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_42

    .line 918
    const-string/jumbo v4, "vk"

    const-string/jumbo v54, "reposts notifications disabled"

    move-object/from16 v0, v54

    invoke-static {v4, v0}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 922
    :cond_42
    const-string/jumbo v31, "vkontakte://vk.com/feed?section=notifications"

    .line 923
    .restart local v31    # "link":Ljava/lang/String;
    const-string/jumbo v4, "from_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v48

    .line 924
    .restart local v48    # "uid":I
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    const-string/jumbo v54, "vkontakte://vk.com/feed?section=notifications"

    invoke-static/range {v54 .. v54}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-direct {v5, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 925
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 927
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$11;->lambdaFactory$(Landroid/content/Context;Landroid/os/Bundle;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-static {v4, v0}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V

    goto/16 :goto_1

    .line 938
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v31    # "link":Ljava/lang/String;
    .end local v48    # "uid":I
    :cond_43
    const-string/jumbo v4, "reply"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    const-string/jumbo v4, "comment"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    const-string/jumbo v4, "mention"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 941
    :cond_44
    const/4 v4, -0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->hashCode()I

    move-result v54

    sparse-switch v54, :sswitch_data_0

    :cond_45
    :goto_14
    packed-switch v4, :pswitch_data_0

    .line 950
    const-string/jumbo v11, "Comments"

    .line 953
    .local v11, "xkey":Ljava/lang/String;
    :goto_15
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/vkcoffee/android/NotificationUtils;->areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 954
    const-string/jumbo v4, "vk"

    const-string/jumbo v54, "reply/mention notifications disabled"

    move-object/from16 v0, v54

    invoke-static {v4, v0}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 941
    .end local v11    # "xkey":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v54, "reply"

    move-object/from16 v0, v16

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_45

    const/4 v4, 0x0

    goto :goto_14

    :sswitch_1
    const-string/jumbo v54, "mention"

    move-object/from16 v0, v16

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_45

    const/4 v4, 0x1

    goto :goto_14

    :sswitch_2
    const-string/jumbo v54, "comment"

    move-object/from16 v0, v16

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_45

    const/4 v4, 0x2

    goto :goto_14

    .line 943
    :pswitch_0
    const-string/jumbo v11, "Replies"

    .line 944
    .restart local v11    # "xkey":Ljava/lang/String;
    goto :goto_15

    .line 946
    .end local v11    # "xkey":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v11, "Mentions"

    .line 947
    .restart local v11    # "xkey":Ljava/lang/String;
    goto :goto_15

    .line 959
    :cond_46
    const-string/jumbo v31, "vkontakte://vk.com/feed?section=notifications"

    .line 960
    .restart local v31    # "link":Ljava/lang/String;
    const-string/jumbo v4, "text"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->replaceEmojiModifiers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v54, "<br>"

    const-string/jumbo v55, " / "

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vkcoffee/android/LinkParser;->stripMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vkcoffee/android/LinkParser;->stripMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 961
    .restart local v10    # "text":Ljava/lang/String;
    const-string/jumbo v4, "from_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v48

    .line 962
    .restart local v48    # "uid":I
    const-string/jumbo v4, "reply"

    const-string/jumbo v54, "type"

    move-object/from16 v0, v21

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 963
    .local v7, "isReply":Z
    const-string/jumbo v4, "mention"

    const-string/jumbo v54, "type"

    move-object/from16 v0, v21

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 964
    .local v8, "isMention":Z
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 965
    .local v12, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    const-string/jumbo v54, "vkontakte://vk.com/feed?section=notifications"

    invoke-static/range {v54 .. v54}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-direct {v5, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 967
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 968
    const-string/jumbo v4, "place"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 969
    .local v6, "place":Ljava/lang/String;
    const-string/jumbo v4, "reply_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_48

    const-string/jumbo v4, "reply_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .local v9, "replyID":I
    :goto_16
    move-object/from16 v4, p2

    .line 970
    invoke-static/range {v4 .. v11}, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$12;->lambdaFactory$(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/data/Friends$GetUsersCallback;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V

    .line 1033
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "place":Ljava/lang/String;
    .end local v7    # "isReply":Z
    .end local v8    # "isMention":Z
    .end local v9    # "replyID":I
    .end local v10    # "text":Ljava/lang/String;
    .end local v11    # "xkey":Ljava/lang/String;
    .end local v12    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v31    # "link":Ljava/lang/String;
    .end local v48    # "uid":I
    :cond_47
    const-string/jumbo v4, "birthday"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1034
    new-instance v14, Landroid/content/Intent;

    const-class v4, Lcom/vkcoffee/android/BirthdayBroadcastReceiver;

    move-object/from16 v0, p2

    invoke-direct {v14, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1035
    .local v14, "bdIntent":Landroid/content/Intent;
    const-string/jumbo v4, "uids"

    const-string/jumbo v54, "uids"

    move-object/from16 v0, v21

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v14, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1036
    const-string/jumbo v4, "force"

    const/16 v54, 0x1

    move/from16 v0, v54

    invoke-virtual {v14, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1037
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 969
    .end local v14    # "bdIntent":Landroid/content/Intent;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "place":Ljava/lang/String;
    .restart local v7    # "isReply":Z
    .restart local v8    # "isMention":Z
    .restart local v10    # "text":Ljava/lang/String;
    .restart local v11    # "xkey":Ljava/lang/String;
    .restart local v12    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v31    # "link":Ljava/lang/String;
    .restart local v48    # "uid":I
    :cond_48
    const/4 v9, 0x0

    goto :goto_16

    .line 941
    :sswitch_data_0
    .sparse-switch
        0x67612ea -> :sswitch_0
        0x38a51dea -> :sswitch_1
        0x38a5ee5f -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/GCMBroadcastReceiver;->setResultCode(I)V

    .line 72
    new-instance v0, Ljava/lang/Thread;

    invoke-static {p0, p2, p1}, Lcom/vkcoffee/android/GCMBroadcastReceiver$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/GCMBroadcastReceiver;Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1042
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1043
    return-void
.end method

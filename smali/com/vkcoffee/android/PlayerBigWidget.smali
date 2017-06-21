.class public Lcom/vkcoffee/android/PlayerBigWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "PlayerBigWidget.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private static getSelectedIcon(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # I

    .prologue
    const/4 v6, 0x0

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 138
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    new-instance v2, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    const v3, -0xa57034

    invoke-direct {v2, v1, v3}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 139
    .local v2, "rd":Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->setBounds(IIII)V

    .line 141
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 142
    return-object v0
.end method

.method public static update(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "awm"    # Landroid/appwidget/AppWidgetManager;

    .prologue
    .line 29
    new-instance v18, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    const v23, 0x7f03019f

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 31
    .local v18, "remoteViews":Landroid/widget/RemoteViews;
    new-instance v16, Landroid/content/Intent;

    const-class v22, Lcom/vkcoffee/android/AudioPlayerService;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .local v16, "playpause":Landroid/content/Intent;
    const-string/jumbo v22, "PlayPause"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-string/jumbo v22, "action"

    const/16 v23, 0x3

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v16

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 36
    .local v11, "pendingPlaypause":Landroid/app/PendingIntent;
    new-instance v7, Landroid/content/Intent;

    const-class v22, Lcom/vkcoffee/android/AudioPlayerService;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v7, "nextTrack":Landroid/content/Intent;
    const-string/jumbo v22, "Next"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string/jumbo v22, "action"

    const/16 v23, 0x5

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 41
    .local v10, "pendingNextTrack":Landroid/app/PendingIntent;
    new-instance v17, Landroid/content/Intent;

    const-class v22, Lcom/vkcoffee/android/AudioPlayerService;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v17, "prevTrack":Landroid/content/Intent;
    const-string/jumbo v22, "Prev"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string/jumbo v22, "action"

    const/16 v23, 0x6

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v17

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 46
    .local v12, "pendingPrevTrack":Landroid/app/PendingIntent;
    new-instance v21, Landroid/content/Intent;

    const-class v22, Lcom/vkcoffee/android/AudioPlayerService;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v21, "shuffle":Landroid/content/Intent;
    const-string/jumbo v22, "Shuffle"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string/jumbo v22, "action"

    const/16 v23, 0xa

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v21

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 51
    .local v15, "pendingShuffle":Landroid/app/PendingIntent;
    new-instance v19, Landroid/content/Intent;

    const-class v22, Lcom/vkcoffee/android/AudioPlayerService;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v19, "repeat":Landroid/content/Intent;
    const-string/jumbo v22, "Repeat"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string/jumbo v22, "action"

    const/16 v23, 0x9

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v19

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 56
    .local v13, "pendingRepeat":Landroid/app/PendingIntent;
    new-instance v20, Landroid/content/Intent;

    const-class v22, Lcom/vkcoffee/android/AudioPlayerService;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v20, "showPlayer":Landroid/content/Intent;
    const-string/jumbo v22, "Show"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string/jumbo v22, "action"

    const/16 v23, 0x4

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    const-string/jumbo v22, "from_notify"

    const/16 v23, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v20

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 62
    .local v14, "pendingShowPlayer":Landroid/app/PendingIntent;
    new-instance v22, Lcom/vkcoffee/android/navigation/Navigator;

    const-class v23, Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-direct/range {v22 .. v23}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/navigation/Navigator;->intent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v9

    .line 63
    .local v9, "openApp":Landroid/content/Intent;
    const-string/jumbo v22, "fdsafsafdsafs"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 66
    .local v4, "appPending":Landroid/app/PendingIntent;
    sget-object v22, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v22, :cond_5

    sget-object v22, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual/range {v22 .. v22}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v22

    if-eqz v22, :cond_5

    .line 67
    sget-object v22, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual/range {v22 .. v22}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v6

    .line 68
    .local v6, "f":Lcom/vkcoffee/android/AudioFile;
    if-eqz v6, :cond_0

    .line 69
    const v22, 0x7f10042a

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 70
    const v22, 0x7f10042b

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 71
    const v22, 0x7f100429

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1, v12}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 72
    const v22, 0x7f10042e

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1, v15}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 73
    const v22, 0x7f10042f

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 74
    const v22, 0x7f100430

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 75
    const v22, 0x7f100427

    iget-object v0, v6, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 76
    const v22, 0x7f100432

    iget-object v0, v6, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 77
    iget v0, v6, Lcom/vkcoffee/android/AudioFile;->aid:I

    move/from16 v22, v0

    iget v0, v6, Lcom/vkcoffee/android/AudioFile;->oid:I

    move/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Lcom/vkcoffee/android/cache/AlbumArtRetriever;->getCoverImage(III)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 78
    .local v5, "cover":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_1

    .line 79
    const v22, 0x7f100423

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 80
    const v22, 0x7f100423

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 81
    const v22, 0x7f100426

    const/16 v23, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 88
    .end local v5    # "cover":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    const v22, 0x7f100427

    const-string/jumbo v23, "setSingleLine"

    const/16 v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 89
    const v23, 0x7f10042a

    sget-object v22, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual/range {v22 .. v22}, Lcom/vkcoffee/android/AudioPlayerService;->isPlaying()Z

    move-result v22

    if-eqz v22, :cond_2

    const v22, 0x7f0201b9

    :goto_1
    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 90
    sget-object v22, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual/range {v22 .. v22}, Lcom/vkcoffee/android/AudioPlayerService;->isRandom()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 91
    const v22, 0x7f10042e

    const v23, 0x7f02020f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/vkcoffee/android/PlayerBigWidget;->getSelectedIcon(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v18

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 95
    :goto_2
    sget-object v22, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual/range {v22 .. v22}, Lcom/vkcoffee/android/AudioPlayerService;->isLoop()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 96
    const v22, 0x7f10042f

    const v23, 0x7f0201fc

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/vkcoffee/android/PlayerBigWidget;->getSelectedIcon(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v18

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 102
    :goto_3
    const v22, 0x7f100431

    const/16 v23, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 104
    const v22, 0x7f10042a

    const-string/jumbo v23, "setBackgroundResource"

    const v24, 0x7f020101

    move-object/from16 v0, v18

    move/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 105
    const v22, 0x7f10042b

    const-string/jumbo v23, "setBackgroundResource"

    const v24, 0x7f020101

    move-object/from16 v0, v18

    move/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 106
    const v22, 0x7f100429

    const-string/jumbo v23, "setBackgroundResource"

    const v24, 0x7f020101

    move-object/from16 v0, v18

    move/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 107
    const v22, 0x7f10042e

    const-string/jumbo v23, "setBackgroundResource"

    const v24, 0x7f020104

    move-object/from16 v0, v18

    move/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 108
    const v22, 0x7f10042f

    const-string/jumbo v23, "setBackgroundResource"

    const v24, 0x7f020104

    move-object/from16 v0, v18

    move/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 133
    .end local v6    # "f":Lcom/vkcoffee/android/AudioFile;
    :goto_4
    new-instance v22, Landroid/content/ComponentName;

    const-class v23, Lcom/vkcoffee/android/PlayerBigWidget;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 134
    return-void

    .line 84
    .restart local v5    # "cover":Landroid/graphics/Bitmap;
    .restart local v6    # "f":Lcom/vkcoffee/android/AudioFile;
    :cond_1
    const v22, 0x7f100423

    const/16 v23, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 85
    const v22, 0x7f100426

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_0

    .line 89
    .end local v5    # "cover":Landroid/graphics/Bitmap;
    :cond_2
    const v22, 0x7f0201c4

    goto/16 :goto_1

    .line 93
    :cond_3
    const v22, 0x7f10042e

    const v23, 0x7f02020f

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 98
    :cond_4
    const v22, 0x7f10042f

    const v23, 0x7f0201fc

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_3

    .line 111
    .end local v6    # "f":Lcom/vkcoffee/android/AudioFile;
    :cond_5
    const v22, 0x7f100430

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 112
    const v22, 0x7f100432

    const-string/jumbo v23, ""

    move-object/from16 v0, v18

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 113
    const v22, 0x7f100427

    const-string/jumbo v23, ""

    move-object/from16 v0, v18

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 114
    const v22, 0x7f10042a

    const-string/jumbo v23, "setBackgroundColor"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 115
    const v22, 0x7f10042b

    const-string/jumbo v23, "setBackgroundColor"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 116
    const v22, 0x7f100429

    const-string/jumbo v23, "setBackgroundColor"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 117
    const v22, 0x7f10042e

    const-string/jumbo v23, "setBackgroundColor"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 118
    const v22, 0x7f10042f

    const-string/jumbo v23, "setBackgroundColor"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 119
    const v22, 0x7f100423

    const/16 v23, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 120
    const v22, 0x7f100426

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 121
    const v22, 0x7f100431

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 123
    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0x10

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_6

    const/16 v22, 0x0

    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    const/high16 v24, 0x10000000

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 125
    .local v8, "nullIntent":Landroid/app/PendingIntent;
    :goto_5
    const v22, 0x7f10042a

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 126
    const v22, 0x7f10042b

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 127
    const v22, 0x7f100429

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 128
    const v22, 0x7f10042e

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 129
    const v22, 0x7f10042f

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_4

    .line 123
    .end local v8    # "nullIntent":Landroid/app/PendingIntent;
    :cond_6
    const/4 v8, 0x0

    goto :goto_5
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 25
    invoke-static {p1, p2}, Lcom/vkcoffee/android/PlayerBigWidget;->update(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V

    .line 26
    return-void
.end method

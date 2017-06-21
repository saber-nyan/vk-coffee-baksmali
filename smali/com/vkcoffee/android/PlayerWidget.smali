.class public Lcom/vkcoffee/android/PlayerWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "PlayerWidget.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static update(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V
    .locals 28
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "awm"    # Landroid/appwidget/AppWidgetManager;

    .prologue
    .line 33
    new-instance v19, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    const v23, 0x7f03019e

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 35
    .local v19, "remoteViews":Landroid/widget/RemoteViews;
    new-instance v17, Landroid/content/Intent;

    const-class v22, Lcom/vkcoffee/android/AudioPlayerService;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v17, "playpause":Landroid/content/Intent;
    const-string/jumbo v22, "PlayPause"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string/jumbo v22, "action"

    const/16 v23, 0x3

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v17

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 39
    .local v14, "pendingPlaypause":Landroid/app/PendingIntent;
    const v22, 0x7f10042a

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 41
    new-instance v10, Landroid/content/Intent;

    const-class v22, Lcom/vkcoffee/android/AudioPlayerService;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v10, "nextTrack":Landroid/content/Intent;
    const-string/jumbo v22, "Next"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string/jumbo v22, "action"

    const/16 v23, 0x5

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 45
    .local v13, "pendingNextTrack":Landroid/app/PendingIntent;
    const v22, 0x7f10042b

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 47
    new-instance v18, Landroid/content/Intent;

    const-class v22, Lcom/vkcoffee/android/AudioPlayerService;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v18, "prevTrack":Landroid/content/Intent;
    const-string/jumbo v22, "Prev"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string/jumbo v22, "action"

    const/16 v23, 0x6

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v18

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 51
    .local v15, "pendingPrevTrack":Landroid/app/PendingIntent;
    const v22, 0x7f100429

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1, v15}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 53
    new-instance v21, Landroid/content/Intent;

    const-class v22, Lcom/vkcoffee/android/AudioPlayerService;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v21, "showPlayer":Landroid/content/Intent;
    const-string/jumbo v22, "Show"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string/jumbo v22, "action"

    const/16 v23, 0x4

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    const-string/jumbo v22, "from_notify"

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 57
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v21

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 59
    .local v16, "pendingShowPlayer":Landroid/app/PendingIntent;
    new-instance v22, Lcom/vkcoffee/android/navigation/Navigator;

    const-class v23, Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-direct/range {v22 .. v23}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/navigation/Navigator;->intent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v11

    .line 60
    .local v11, "openApp":Landroid/content/Intent;
    const-string/jumbo v22, "fdsafsafdsafs"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 63
    .local v4, "appPending":Landroid/app/PendingIntent;
    sget-object v22, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v22, :cond_3

    sget-object v22, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual/range {v22 .. v22}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v22

    if-eqz v22, :cond_3

    .line 64
    sget-object v22, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual/range {v22 .. v22}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v8

    .line 65
    .local v8, "f":Lcom/vkcoffee/android/AudioFile;
    if-eqz v8, :cond_0

    .line 66
    const v22, 0x7f100427

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 67
    const v22, 0x7f100427

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " - "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v8, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 68
    iget v0, v8, Lcom/vkcoffee/android/AudioFile;->aid:I

    move/from16 v22, v0

    iget v0, v8, Lcom/vkcoffee/android/AudioFile;->oid:I

    move/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Lcom/vkcoffee/android/cache/AlbumArtRetriever;->getCoverImage(III)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 69
    .local v6, "cover":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_1

    .line 70
    const/high16 v22, 0x42900000    # 72.0f

    invoke-static/range {v22 .. v22}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v22

    const/high16 v23, 0x42900000    # 72.0f

    invoke-static/range {v23 .. v23}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v23

    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v22 .. v24}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 71
    .local v7, "cv":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 72
    .local v5, "c":Landroid/graphics/Canvas;
    new-instance v12, Landroid/graphics/Paint;

    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-direct {v12, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 73
    .local v12, "paint":Landroid/graphics/Paint;
    new-instance v20, Landroid/graphics/BitmapShader;

    sget-object v22, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v23, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v6, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 74
    .local v20, "shader":Landroid/graphics/BitmapShader;
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 75
    .local v9, "matrix":Landroid/graphics/Matrix;
    new-instance v22, Landroid/graphics/RectF;

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-direct/range {v22 .. v26}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v23, Landroid/graphics/RectF;

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getWidth()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-direct/range {v23 .. v27}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v24, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v9, v0, v1, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 76
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 77
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 78
    new-instance v22, Landroid/graphics/RectF;

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getWidth()I

    move-result v25

    const/high16 v26, 0x41200000    # 10.0f

    invoke-static/range {v26 .. v26}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getHeight()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-direct/range {v22 .. v26}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v23, 0x40000000    # 2.0f

    invoke-static/range {v23 .. v23}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    invoke-static/range {v24 .. v24}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v5, v0, v1, v2, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 79
    const v22, 0x7f100423

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 80
    const v22, 0x7f100423

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 81
    const v22, 0x7f100424

    const/16 v23, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 87
    .end local v5    # "c":Landroid/graphics/Canvas;
    .end local v6    # "cover":Landroid/graphics/Bitmap;
    .end local v7    # "cv":Landroid/graphics/Bitmap;
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v12    # "paint":Landroid/graphics/Paint;
    .end local v20    # "shader":Landroid/graphics/BitmapShader;
    :cond_0
    :goto_0
    const v23, 0x7f10042a

    sget-object v22, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual/range {v22 .. v22}, Lcom/vkcoffee/android/AudioPlayerService;->isPlaying()Z

    move-result v22

    if-eqz v22, :cond_2

    const v22, 0x7f0201b8

    :goto_1
    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 88
    const v22, 0x7f100428

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 89
    const v22, 0x7f100427

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 90
    const v22, 0x7f100426

    const/16 v23, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 102
    .end local v8    # "f":Lcom/vkcoffee/android/AudioFile;
    :goto_2
    new-instance v22, Landroid/content/ComponentName;

    const-class v23, Lcom/vkcoffee/android/PlayerWidget;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 103
    return-void

    .line 83
    .restart local v6    # "cover":Landroid/graphics/Bitmap;
    .restart local v8    # "f":Lcom/vkcoffee/android/AudioFile;
    :cond_1
    const v22, 0x7f100423

    const/16 v23, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 84
    const v22, 0x7f100424

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 87
    .end local v6    # "cover":Landroid/graphics/Bitmap;
    :cond_2
    const v22, 0x7f0201c3

    goto :goto_1

    .line 92
    .end local v8    # "f":Lcom/vkcoffee/android/AudioFile;
    :cond_3
    const v22, 0x7f100427

    const/16 v23, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 93
    const v22, 0x7f100426

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 95
    const v22, 0x7f100428

    const/16 v23, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 96
    const v22, 0x7f100423

    const/16 v23, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 97
    const v22, 0x7f100424

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 98
    const v22, 0x7f100421

    const v23, 0x7f0202f1

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 99
    const v22, 0x7f100426

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 29
    invoke-static {p1, p2}, Lcom/vkcoffee/android/PlayerWidget;->update(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V

    .line 30
    return-void
.end method

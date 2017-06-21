.class public Lcom/vkcoffee/android/DebugPrefsActivity;
.super Landroid/preference/PreferenceActivity;
.source "DebugPrefsActivity.java"


# instance fields
.field private logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/DebugPrefsActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/DebugPrefsActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/DebugPrefsActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/DebugPrefsActivity;->doDownloadAudio(Ljava/util/ArrayList;)V

    return-void
.end method

.method private copyDatabases()V
    .locals 22

    .prologue
    .line 199
    const-string/jumbo v14, ""

    .line 201
    .local v14, "report":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string/jumbo v16, "qwe"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/DebugPrefsActivity;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v6, "dbDir":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v16

    const-string/jumbo v17, ".vkontakte/cache_debug"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    .local v11, "outDir":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_0

    .line 204
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 206
    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 207
    .local v9, "list":[Ljava/io/File;
    array-length v0, v9

    move/from16 v17, v0

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    aget-object v7, v9, v16

    .line 208
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, ".db"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 207
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 211
    :cond_1
    new-instance v12, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v12, v11, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 212
    .local v12, "outFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    .line 213
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 214
    .local v10, "out":Ljava/io/FileOutputStream;
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 215
    .local v8, "in":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .local v5, "count":I
    const/4 v13, 0x0

    .line 216
    .local v13, "read":I
    const/16 v18, 0x2800

    move/from16 v0, v18

    new-array v4, v0, [B

    .line 217
    .local v4, "buf":[B
    :goto_2
    invoke-virtual {v8, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v13

    if-lez v13, :cond_3

    .line 218
    add-int/2addr v5, v13

    .line 219
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v4, v0, v13}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 225
    .end local v4    # "buf":[B
    .end local v5    # "count":I
    .end local v6    # "dbDir":Ljava/io/File;
    .end local v7    # "f":Ljava/io/File;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .end local v9    # "list":[Ljava/io/File;
    .end local v10    # "out":Ljava/io/FileOutputStream;
    .end local v11    # "outDir":Ljava/io/File;
    .end local v12    # "outFile":Ljava/io/File;
    .end local v13    # "read":I
    :catch_0
    move-exception v15

    .line 226
    .local v15, "x":Ljava/lang/Exception;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v15}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 228
    .end local v15    # "x":Ljava/lang/Exception;
    :cond_2
    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    const-string/jumbo v17, "ok"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 229
    return-void

    .line 221
    .restart local v4    # "buf":[B
    .restart local v5    # "count":I
    .restart local v6    # "dbDir":Ljava/io/File;
    .restart local v7    # "f":Ljava/io/File;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "list":[Ljava/io/File;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v11    # "outDir":Ljava/io/File;
    .restart local v12    # "outFile":Ljava/io/File;
    .restart local v13    # "read":I
    :cond_3
    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 222
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 223
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " -> "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    int-to-long v0, v5

    move-wide/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/DebugPrefsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/Global;->langFileSize(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "]\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    goto/16 :goto_1
.end method

.method private doDownloadAudio(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/AudioFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    const/4 v1, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 339
    const-string/jumbo v6, "\u0421\u043a\u0430\u0447\u0438\u0432\u0430\u0435\u0442\u0441\u044f...\n!! \u041d\u0415 \u0421\u0412\u041e\u0420\u0410\u0427\u0418\u0412\u0410\u0419\u0422\u0415 \u041f\u0420\u0418\u041b\u041e\u0416\u0415\u041d\u0418\u0415 !!\n"

    .line 340
    .local v6, "msg":Ljava/lang/String;
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 341
    .local v3, "dlg":Landroid/app/ProgressDialog;
    new-array v2, v9, [Z

    aput-boolean v8, v2, v8

    .line 342
    .local v2, "needCancel":[Z
    invoke-virtual {v3, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 343
    invoke-virtual {v3, v9}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 344
    invoke-virtual {v3, v8}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 345
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 346
    const-string/jumbo v0, "\u0421\u043a\u0430\u0447\u0438\u0432\u0430\u0435\u0442\u0441\u044f...\n!! \u041d\u0415 \u0421\u0412\u041e\u0420\u0410\u0427\u0418\u0412\u0410\u0419\u0422\u0415 \u041f\u0420\u0418\u041b\u041e\u0416\u0415\u041d\u0418\u0415 !!\n"

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 347
    invoke-virtual {v3, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 348
    const v0, 0x7f0800b7

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/DebugPrefsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v1

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v10, v7, v0}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 349
    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 350
    invoke-virtual {v3, v10}, Landroid/app/ProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v2}, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$15;->lambdaFactory$([Z)Landroid/view/View$OnClickListener;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    new-array v4, v9, [Lcom/vkcoffee/android/AudioFile;

    aput-object v1, v4, v8

    .line 355
    .local v4, "currentFile":[Lcom/vkcoffee/android/AudioFile;
    new-array v5, v9, [I

    aput v8, v5, v8

    .line 356
    .local v5, "percent":[I
    invoke-virtual {p0}, Lcom/vkcoffee/android/DebugPrefsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/DebugPrefsActivity$5;

    invoke-direct {v1, p0, v4, v3, v5}, Lcom/vkcoffee/android/DebugPrefsActivity$5;-><init>(Lcom/vkcoffee/android/DebugPrefsActivity;[Lcom/vkcoffee/android/AudioFile;Landroid/app/ProgressDialog;[I)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v0, v1, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 367
    new-instance v7, Ljava/lang/Thread;

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$16;->lambdaFactory$(Lcom/vkcoffee/android/DebugPrefsActivity;Ljava/util/ArrayList;[ZLandroid/app/ProgressDialog;[Lcom/vkcoffee/android/AudioFile;[I)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 442
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 443
    return-void
.end method

.method private downloadAudio()V
    .locals 2

    .prologue
    .line 296
    new-instance v0, Lcom/vkcoffee/android/api/audio/AudioGet;

    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/audio/AudioGet;-><init>(I)V

    new-instance v1, Lcom/vkcoffee/android/DebugPrefsActivity$4;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/DebugPrefsActivity$4;-><init>(Lcom/vkcoffee/android/DebugPrefsActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/audio/AudioGet;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 334
    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 335
    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 336
    return-void
.end method

.method private downloadMessages()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 238
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 239
    .local v0, "dlg":Landroid/app/ProgressDialog;
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 240
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 241
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 242
    const-string/jumbo v1, "\u0421\u043a\u0430\u0447\u0438\u0432\u0430\u0435\u043c \u0438\u0441\u0442\u043e\u0440\u0438\u044e \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u0439..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 244
    new-instance v1, Ljava/lang/Thread;

    invoke-static {p0, v0}, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$14;->lambdaFactory$(Lcom/vkcoffee/android/DebugPrefsActivity;Landroid/app/ProgressDialog;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 292
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 293
    return-void
.end method

.method static synthetic lambda$doDownloadAudio$293([ZLandroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 351
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 352
    const/4 v0, 0x1

    aput-boolean v0, p0, v1

    .line 353
    return-void
.end method

.method static synthetic lambda$null$294(Landroid/app/ProgressDialog;Lcom/vkcoffee/android/AudioFile;)V
    .locals 2

    .prologue
    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u0421\u043a\u0430\u0447\u0438\u0432\u0430\u0435\u0442\u0441\u044f...\n!! \u041d\u0415 \u0421\u0412\u041e\u0420\u0410\u0427\u0418\u0412\u0410\u0419\u0422\u0415 \u041f\u0420\u0418\u041b\u041e\u0416\u0415\u041d\u0418\u0415 !!\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$null$295(Landroid/app/ProgressDialog;I)V
    .locals 0

    .prologue
    .line 431
    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method

.method static synthetic lambda$onCreate$275(Landroid/preference/Preference;)Z
    .locals 1
    .param p0, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$onCreate$282(Landroid/preference/Preference;)Z
    .locals 2
    .param p0, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 142
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Test crash"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method synthetic lambda$doDownloadAudio$297(Ljava/util/ArrayList;[ZLandroid/app/ProgressDialog;[Lcom/vkcoffee/android/AudioFile;[I)V
    .locals 30

    .prologue
    .line 368
    sget-object v26, Lcom/vkcoffee/android/cache/AudioCache;->cachedIDs:Ljava/util/Vector;

    invoke-virtual/range {v26 .. v26}, Ljava/util/Vector;->clear()V

    .line 369
    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/cache/AudioCache;->fillIDsBlocking(Landroid/content/Context;)V

    .line 370
    const/4 v11, 0x0

    .line 371
    .local v11, "i":I
    const/16 v24, 0x0

    .local v24, "success":I
    const/4 v8, 0x0

    .local v8, "failed":I
    const/4 v7, 0x0

    .line 372
    .local v7, "existed":I
    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->getCacheDir()Ljava/io/File;

    move-result-object v6

    .line 374
    .local v6, "dir":Ljava/io/File;
    new-instance v10, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v10}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 375
    .local v10, "httpClient":Lcom/squareup/okhttp/OkHttpClient;
    const-wide/16 v26, 0xf

    sget-object v28, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v26

    move-object/from16 v2, v28

    invoke-virtual {v10, v0, v1, v2}, Lcom/squareup/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 376
    const-wide/16 v26, 0xf

    sget-object v28, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v26

    move-object/from16 v2, v28

    invoke-virtual {v10, v0, v1, v2}, Lcom/squareup/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 377
    const-wide/16 v26, 0xf

    sget-object v28, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v26

    move-object/from16 v2, v28

    invoke-virtual {v10, v0, v1, v2}, Lcom/squareup/okhttp/OkHttpClient;->setWriteTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 378
    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/squareup/okhttp/OkHttpClient;->setCache(Lcom/squareup/okhttp/Cache;)Lcom/squareup/okhttp/OkHttpClient;

    .line 379
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_0
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_0

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/AudioFile;

    .line 380
    .local v4, "a":Lcom/vkcoffee/android/AudioFile;
    const/16 v27, 0x0

    aget-boolean v27, p2, v27

    if-eqz v27, :cond_1

    .line 433
    .end local v4    # "a":Lcom/vkcoffee/android/AudioFile;
    :cond_0
    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v26, 0x0

    aput v24, v23, v26

    const/16 v26, 0x1

    aput v8, v23, v26

    const/16 v26, 0x2

    aput v7, v23, v26

    .line 434
    .local v23, "result":[I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$19;->lambdaFactory$(Lcom/vkcoffee/android/DebugPrefsActivity;Landroid/app/ProgressDialog;[I)Ljava/lang/Runnable;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/DebugPrefsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 442
    return-void

    .line 383
    .end local v23    # "result":[I
    .restart local v4    # "a":Lcom/vkcoffee/android/AudioFile;
    :cond_1
    new-instance v9, Ljava/io/File;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v4, Lcom/vkcoffee/android/AudioFile;->oid:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "_"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget v0, v4, Lcom/vkcoffee/android/AudioFile;->aid:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v9, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 384
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v27

    if-nez v27, :cond_9

    .line 385
    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$17;->lambdaFactory$(Landroid/app/ProgressDialog;Lcom/vkcoffee/android/AudioFile;)Ljava/lang/Runnable;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/DebugPrefsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 386
    const/16 v27, 0x0

    aput-object v4, p4, v27

    .line 387
    const/16 v27, 0x0

    const/16 v28, 0x0

    aput v28, p5, v27

    .line 389
    new-instance v27, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct/range {v27 .. v27}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    iget-object v0, v4, Lcom/vkcoffee/android/AudioFile;->url:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v27

    const-string/jumbo v28, "User-Agent"

    invoke-static {}, Lme/grishka/appkit/utils/NetworkUtils;->getUserAgent()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v21

    .line 390
    .local v21, "req":Lcom/squareup/okhttp/Request;
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v5

    .line 391
    .local v5, "call":Lcom/squareup/okhttp/Call;
    const/4 v12, 0x0

    .line 392
    .local v12, "is":Ljava/io/InputStream;
    const/16 v19, 0x0

    .line 393
    .local v19, "rb":Lcom/squareup/okhttp/ResponseBody;
    const/16 v16, 0x0

    .line 395
    .local v16, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 396
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    .end local v16    # "out":Ljava/io/OutputStream;
    .local v17, "out":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v5}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v22

    .line 398
    .local v22, "resp":Lcom/squareup/okhttp/Response;
    invoke-virtual/range {v22 .. v22}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v19

    .line 399
    invoke-virtual/range {v19 .. v19}, Lcom/squareup/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v12

    .line 400
    invoke-virtual/range {v19 .. v19}, Lcom/squareup/okhttp/ResponseBody;->contentLength()J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-int v14, v0

    .line 401
    .local v14, "len":I
    const/4 v15, 0x0

    .line 402
    .local v15, "loaded":I
    const/16 v27, 0x1400

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 403
    .local v20, "rd":[B
    const/4 v13, 0x0

    .line 404
    .local v13, "l":I
    :goto_1
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/io/InputStream;->read([B)I

    move-result v13

    if-lez v13, :cond_4

    .line 405
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2, v13}, Ljava/io/OutputStream;->write([BII)V

    .line 406
    add-int/2addr v15, v13

    .line 407
    const/16 v27, 0x0

    int-to-float v0, v15

    move/from16 v28, v0

    int-to-float v0, v14

    move/from16 v29, v0

    div-float v28, v28, v29

    const/high16 v29, 0x42c80000    # 100.0f

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    aput v28, p5, v27
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 412
    .end local v13    # "l":I
    .end local v14    # "len":I
    .end local v15    # "loaded":I
    .end local v20    # "rd":[B
    .end local v22    # "resp":Lcom/squareup/okhttp/Response;
    :catch_0
    move-exception v25

    move-object/from16 v16, v17

    .line 413
    .end local v17    # "out":Ljava/io/OutputStream;
    .restart local v16    # "out":Ljava/io/OutputStream;
    .local v25, "x":Ljava/io/IOException;
    :goto_2
    :try_start_2
    const-string/jumbo v27, "vk"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "failed to download "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 414
    add-int/lit8 v8, v8, 0x1

    .line 417
    if-eqz v12, :cond_2

    .line 418
    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 420
    :cond_2
    if-eqz v16, :cond_3

    .line 421
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 429
    .end local v5    # "call":Lcom/squareup/okhttp/Call;
    .end local v12    # "is":Ljava/io/InputStream;
    .end local v16    # "out":Ljava/io/OutputStream;
    .end local v19    # "rb":Lcom/squareup/okhttp/ResponseBody;
    .end local v21    # "req":Lcom/squareup/okhttp/Request;
    .end local v25    # "x":Ljava/io/IOException;
    :cond_3
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 430
    move/from16 v18, v11

    .line 431
    .local v18, "progress":I
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$18;->lambdaFactory$(Landroid/app/ProgressDialog;I)Ljava/lang/Runnable;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/DebugPrefsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 409
    .end local v18    # "progress":I
    .restart local v5    # "call":Lcom/squareup/okhttp/Call;
    .restart local v12    # "is":Ljava/io/InputStream;
    .restart local v13    # "l":I
    .restart local v14    # "len":I
    .restart local v15    # "loaded":I
    .restart local v17    # "out":Ljava/io/OutputStream;
    .restart local v19    # "rb":Lcom/squareup/okhttp/ResponseBody;
    .restart local v20    # "rd":[B
    .restart local v21    # "req":Lcom/squareup/okhttp/Request;
    .restart local v22    # "resp":Lcom/squareup/okhttp/Response;
    :cond_4
    :try_start_4
    iput v14, v4, Lcom/vkcoffee/android/AudioFile;->fileSize:I

    .line 410
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-static {v0, v4}, Lcom/vkcoffee/android/cache/AudioCache;->saveFile(ZLcom/vkcoffee/android/AudioFile;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 411
    add-int/lit8 v24, v24, 0x1

    .line 417
    if-eqz v12, :cond_5

    .line 418
    :try_start_5
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 420
    :cond_5
    if-eqz v17, :cond_6

    .line 421
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_6
    move-object/from16 v16, v17

    .line 424
    .end local v17    # "out":Ljava/io/OutputStream;
    .restart local v16    # "out":Ljava/io/OutputStream;
    goto :goto_3

    .line 423
    .end local v16    # "out":Ljava/io/OutputStream;
    .restart local v17    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v27

    move-object/from16 v16, v17

    .line 425
    .end local v17    # "out":Ljava/io/OutputStream;
    .restart local v16    # "out":Ljava/io/OutputStream;
    goto :goto_3

    .line 416
    .end local v13    # "l":I
    .end local v14    # "len":I
    .end local v15    # "loaded":I
    .end local v20    # "rd":[B
    .end local v22    # "resp":Lcom/squareup/okhttp/Response;
    :catchall_0
    move-exception v26

    .line 417
    :goto_4
    if-eqz v12, :cond_7

    .line 418
    :try_start_6
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 420
    :cond_7
    if-eqz v16, :cond_8

    .line 421
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 424
    :cond_8
    :goto_5
    throw v26

    .line 427
    .end local v5    # "call":Lcom/squareup/okhttp/Call;
    .end local v12    # "is":Ljava/io/InputStream;
    .end local v16    # "out":Ljava/io/OutputStream;
    .end local v19    # "rb":Lcom/squareup/okhttp/ResponseBody;
    .end local v21    # "req":Lcom/squareup/okhttp/Request;
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 423
    .restart local v5    # "call":Lcom/squareup/okhttp/Call;
    .restart local v12    # "is":Ljava/io/InputStream;
    .restart local v16    # "out":Ljava/io/OutputStream;
    .restart local v19    # "rb":Lcom/squareup/okhttp/ResponseBody;
    .restart local v21    # "req":Lcom/squareup/okhttp/Request;
    :catch_2
    move-exception v27

    goto :goto_5

    .line 416
    .end local v16    # "out":Ljava/io/OutputStream;
    .restart local v17    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v26

    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/OutputStream;
    .restart local v16    # "out":Ljava/io/OutputStream;
    goto :goto_4

    .line 423
    .restart local v25    # "x":Ljava/io/IOException;
    :catch_3
    move-exception v27

    goto :goto_3

    .line 412
    .end local v25    # "x":Ljava/io/IOException;
    :catch_4
    move-exception v25

    goto :goto_2
.end method

.method synthetic lambda$downloadMessages$291(Landroid/app/ProgressDialog;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 245
    const/4 v6, 0x0

    .local v6, "out":I
    :goto_0
    const/4 v0, 0x2

    if-ge v6, v0, :cond_1

    .line 246
    new-array v3, v9, [Z

    aput-boolean v8, v3, v8

    .line 247
    .local v3, "ended":[Z
    new-array v4, v9, [I

    aput v8, v4, v8

    .line 248
    .local v4, "offset":[I
    new-array v2, v9, [I

    aput v8, v2, v8

    .line 249
    .local v2, "total":[I
    :goto_1
    aget-boolean v0, v3, v8

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Lcom/vkcoffee/android/api/VKAPIRequest;

    const-string/jumbo v1, "messages.get"

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "offset"

    aget v5, v4, v8

    .line 251
    invoke-virtual {v0, v1, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "count"

    const/16 v5, 0xc8

    .line 252
    invoke-virtual {v0, v1, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "photo_sizes"

    .line 253
    invoke-virtual {v0, v1, v9}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "out"

    .line 254
    invoke-virtual {v0, v1, v6}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v7

    new-instance v0, Lcom/vkcoffee/android/DebugPrefsActivity$3;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/DebugPrefsActivity$3;-><init>(Lcom/vkcoffee/android/DebugPrefsActivity;[I[Z[ILandroid/app/ProgressDialog;)V

    .line 255
    invoke-virtual {v7, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    goto :goto_1

    .line 245
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 291
    .end local v2    # "total":[I
    .end local v3    # "ended":[Z
    .end local v4    # "offset":[I
    :cond_1
    invoke-static {p1}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 292
    return-void
.end method

.method synthetic lambda$null$277(Landroid/widget/DatePicker;III)V
    .locals 6
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 85
    new-instance v0, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 86
    .local v0, "date1":Ljava/util/Date;
    invoke-virtual {v0, p4}, Ljava/util/Date;->setDate(I)V

    .line 87
    invoke-virtual {v0, p3}, Ljava/util/Date;->setMonth(I)V

    .line 88
    add-int/lit16 v2, p2, -0x76c

    invoke-virtual {v0, v2}, Ljava/util/Date;->setYear(I)V

    .line 89
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkcoffee/android/BirthdayBroadcastReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "force"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    const-string/jumbo v2, "date"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/DebugPrefsActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 93
    return-void
.end method

.method synthetic lambda$null$287()V
    .locals 2

    .prologue
    .line 179
    invoke-static {}, Lcom/vkcoffee/android/C2DM;->start()V

    .line 180
    const-string/jumbo v0, "\u0420\u0435\u0433\u0438\u0441\u0442\u0440\u0430\u0446\u0438\u044f GCM \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0430."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 181
    return-void
.end method

.method synthetic lambda$null$296(Landroid/app/ProgressDialog;[I)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 435
    invoke-static {p1}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 436
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "\u041c\u0430\u0441\u0441\u043e\u0432\u043e\u0435 \u0441\u043a\u0430\u0447\u0438\u0432\u0430\u043d\u0438\u0435 \u043c\u0443\u0437\u044b\u043a\u0438"

    .line 437
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u0423\u0441\u043f\u0435\u0448\u043d\u043e: %d\n\u041e\u0448\u0438\u0431\u043a\u0438: %d\n\u0423\u0436\u0435 \u0431\u044b\u043b\u0438 \u0432 \u043a\u044d\u0448\u0435: %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aget v3, p2, v4

    .line 438
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aget v3, p2, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aget v3, p2, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08031e

    const/4 v2, 0x0

    .line 439
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 440
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 441
    return-void
.end method

.method synthetic lambda$onCreate$276(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "pref1"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 73
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "VK.log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/vkcoffee/android/Log;->logFile:Ljava/io/File;

    .line 74
    const-string/jumbo v0, "\u041e\u0442\u043b\u0430\u0434\u043e\u0447\u043d\u0430\u044f \u0438\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0438\u044f \u0437\u0430\u043f\u0438\u0441\u044b\u0432\u0430\u0435\u0442\u0441\u044f \u0432 \u0444\u0430\u0439\u043b \"%s\""

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v2, Lcom/vkcoffee/android/Log;->logFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 75
    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 76
    const-string/jumbo v0, "\u0423\u0436\u0435 \u0432\u043a\u043b\u044e\u0447\u0435\u043d\u043e"

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 77
    return v3
.end method

.method synthetic lambda$onCreate$278(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 83
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 84
    .local v6, "date":Ljava/util/Date;
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-static {p0}, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$21;->lambdaFactory$(Lcom/vkcoffee/android/DebugPrefsActivity;)Landroid/app/DatePickerDialog$OnDateSetListener;

    move-result-object v2

    .line 93
    invoke-virtual {v6}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v3, v1, 0x76c

    invoke-virtual {v6}, Ljava/util/Date;->getMonth()I

    move-result v4

    invoke-virtual {v6}, Ljava/util/Date;->getDate()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 94
    .local v0, "dpd":Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 95
    const/4 v1, 0x1

    return v1
.end method

.method synthetic lambda$onCreate$279(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 100
    new-instance v0, Lcom/vkcoffee/android/api/VKAPIRequest;

    const-string/jumbo v1, "account.testValidation"

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/DebugPrefsActivity$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/DebugPrefsActivity$1;-><init>(Lcom/vkcoffee/android/DebugPrefsActivity;)V

    .line 101
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 111
    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 112
    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$onCreate$280(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 118
    new-instance v0, Lcom/vkcoffee/android/api/VKAPIRequest;

    const-string/jumbo v1, "captcha.force"

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/DebugPrefsActivity$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/DebugPrefsActivity$2;-><init>(Lcom/vkcoffee/android/DebugPrefsActivity;)V

    .line 119
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 130
    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$onCreate$281(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/vkcoffee/android/DebugPrefsActivity;->copyDatabases()V

    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$onCreate$283(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/vkcoffee/android/DebugPrefsActivity;->downloadMessages()V

    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$onCreate$284(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/vkcoffee/android/DebugPrefsActivity;->downloadAudio()V

    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$onCreate$285(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 159
    const-string/jumbo v0, "2fa"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/DebugPrefsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$onCreate$286(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    .line 165
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v2, "gcm"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "reg"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "token":Ljava/lang/String;
    const-string/jumbo v1, "clipboard"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/DebugPrefsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 167
    const-string/jumbo v1, "Okay!"

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 168
    const/4 v1, 0x1

    return v1
.end method

.method synthetic lambda$onCreate$288(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    .line 173
    invoke-static {}, Lcom/vkcoffee/android/C2DM;->stop()Z

    move-result v0

    .line 174
    .local v0, "res":Z
    if-eqz v0, :cond_0

    const-string/jumbo v1, "\u0420\u0435\u0433\u0438\u0441\u0442\u0440\u0430\u0446\u0438\u044f GCM \u043e\u0442\u043c\u0435\u043d\u0435\u043d\u0430"

    :goto_0
    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 177
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v2, "gcm"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 178
    invoke-virtual {p0}, Lcom/vkcoffee/android/DebugPrefsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-static {p0}, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$20;->lambdaFactory$(Lcom/vkcoffee/android/DebugPrefsActivity;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 182
    const/4 v1, 0x1

    return v1

    .line 174
    :cond_0
    const-string/jumbo v1, "GCM \u0438 \u0442\u0430\u043a \u043d\u0435 \u0437\u0430\u0440\u0435\u0433\u0438\u0441\u0442\u0440\u0438\u0440\u043e\u0432\u0430\u043d"

    goto :goto_0
.end method

.method synthetic lambda$onCreate$289(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 187
    const-string/jumbo v0, "Google Now registration is being updated asynchronously, see logcat for progress (enable API logging for added verbosity)"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 188
    invoke-static {}, Lcom/vkcoffee/android/GoogleNow;->updateTokenAsync()V

    .line 189
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 57
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    const v1, 0x1030224

    :goto_0
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/DebugPrefsActivity;->setTheme(I)V

    .line 58
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-static {p0}, Lcom/vkcoffee/android/activities/LogoutReceiver;->register(Landroid/app/Activity;)Lcom/vkcoffee/android/activities/LogoutReceiver;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/DebugPrefsActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    .line 60
    const v1, 0x7f060006

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/DebugPrefsActivity;->addPreferencesFromResource(I)V

    .line 62
    const-string/jumbo v1, "terminate"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 63
    .local v0, "pref":Landroid/preference/Preference;
    invoke-static {}, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$1;->lambdaFactory$()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 67
    const-string/jumbo v1, "logToFile"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 68
    sget-object v1, Lcom/vkcoffee/android/Log;->logFile:Ljava/io/File;

    if-eqz v1, :cond_2

    .line 69
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 70
    const-string/jumbo v1, "\u0423\u0436\u0435 \u0432\u043a\u043b\u044e\u0447\u0435\u043d\u043e"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 81
    :goto_1
    const-string/jumbo v1, "bdayTest"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 82
    invoke-static {p0}, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/DebugPrefsActivity;)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 98
    const-string/jumbo v1, "validationTest"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 99
    invoke-static {p0}, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$4;->lambdaFactory$(Lcom/vkcoffee/android/DebugPrefsActivity;)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 116
    const-string/jumbo v1, "captchaTest"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 117
    invoke-static {p0}, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$5;->lambdaFactory$(Lcom/vkcoffee/android/DebugPrefsActivity;)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 134
    const-string/jumbo v1, "copyDatabases"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 135
    invoke-static {p0}, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$6;->lambdaFactory$(Lcom/vkcoffee/android/DebugPrefsActivity;)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 140
    const-string/jumbo v1, "testCrash"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 141
    invoke-static {}, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$7;->lambdaFactory$()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 145
    const-string/jumbo v1, "downloadMessages"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 146
    invoke-static {p0}, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$8;->lambdaFactory$(Lcom/vkcoffee/android/DebugPrefsActivity;)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 151
    const-string/jumbo v1, "downloadAudio"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 152
    invoke-static {p0}, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$9;->lambdaFactory$(Lcom/vkcoffee/android/DebugPrefsActivity;)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 157
    const-string/jumbo v1, "clearTrustedHash"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 158
    invoke-static {p0}, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$10;->lambdaFactory$(Lcom/vkcoffee/android/DebugPrefsActivity;)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 163
    const-string/jumbo v1, "copyGcmToken"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 164
    invoke-static {p0}, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$11;->lambdaFactory$(Lcom/vkcoffee/android/DebugPrefsActivity;)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 171
    const-string/jumbo v1, "reRegisterGCM"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 172
    invoke-static {p0}, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$12;->lambdaFactory$(Lcom/vkcoffee/android/DebugPrefsActivity;)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 185
    const-string/jumbo v1, "reRegisterGoogleNow"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 186
    invoke-static {p0}, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$13;->lambdaFactory$(Lcom/vkcoffee/android/DebugPrefsActivity;)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 192
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/vkcoffee/android/DebugPrefsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "sinv"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/vkcoffee/android/DebugPrefsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "invis"

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 194
    invoke-virtual {p0}, Lcom/vkcoffee/android/DebugPrefsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "__dbg_no_ads"

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/DebugPrefsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 196
    :cond_0
    return-void

    .line 57
    .end local v0    # "pref":Landroid/preference/Preference;
    :cond_1
    const v1, 0x103006b

    goto/16 :goto_0

    .line 72
    .restart local v0    # "pref":Landroid/preference/Preference;
    :cond_2
    invoke-static {p0}, Lcom/vkcoffee/android/DebugPrefsActivity$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/DebugPrefsActivity;)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/vkcoffee/android/DebugPrefsActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    invoke-virtual {v0}, Lcom/vkcoffee/android/activities/LogoutReceiver;->unregister()V

    .line 234
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 235
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 451
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 452
    invoke-static {}, Lcom/vkcoffee/android/AppStateTracker;->onActivityPaused()V

    .line 453
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 446
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 447
    invoke-static {p0}, Lcom/vkcoffee/android/AppStateTracker;->onActivityResumed(Landroid/app/Activity;)V

    .line 448
    return-void
.end method

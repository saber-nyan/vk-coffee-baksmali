.class Lcom/vkcoffee/android/OTA$Download;
.super Landroid/os/AsyncTask;
.source "OTA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/OTA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Download"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field df:Ljava/text/DecimalFormat;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 208
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 325
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    iput-object v0, p0, Lcom/vkcoffee/android/OTA$Download;->df:Ljava/text/DecimalFormat;

    .line 208
    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/OTA$Download;)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/vkcoffee/android/OTA$Download;-><init>()V

    return-void
.end method

.method private getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$12()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSpeed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$14()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private size(JI)V
    .locals 9
    .param p1, "now"    # J
    .param p3, "total"    # I

    .prologue
    const-wide v6, 0x412f400000000000L    # 1024000.0

    .line 328
    long-to-double v4, p1

    div-double v0, v4, v6

    .line 329
    .local v0, "resNow":D
    int-to-double v4, p3

    div-double v2, v4, v6

    .line 330
    .local v2, "resTotal":D
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/vkcoffee/android/OTA$Download;->df:Ljava/text/DecimalFormat;

    invoke-virtual {v5, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " \u041c\u0431 / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/OTA$Download;->df:Ljava/text/DecimalFormat;

    invoke-virtual {v5, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u041c\u0431"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vkcoffee/android/OTA;->access$11(Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method private speed(JJ)V
    .locals 11
    .param p1, "downloadTime"    # J
    .param p3, "bytesIn"    # J

    .prologue
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 338
    long-to-double v4, p3

    long-to-double v6, p1

    div-double/2addr v4, v6

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double v2, v4, v6

    .line 339
    .local v2, "result":D
    const-string v0, " \u041a\u0411/\u0441"

    .line 340
    .local v0, "markSpeed":Ljava/lang/String;
    cmpl-double v1, v2, v8

    if-lez v1, :cond_0

    .line 341
    div-double/2addr v2, v8

    .line 342
    const-string v0, " \u041c\u0411/\u0441"

    .line 344
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkcoffee/android/OTA$Download;->df:Ljava/text/DecimalFormat;

    invoke-virtual {v4, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/OTA;->access$13(Ljava/lang/String;)V

    .line 345
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/OTA$Download;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 24
    .param p1, "sUrl"    # [Ljava/lang/String;

    .prologue
    .line 227
    :try_start_0
    new-instance v18, Ljava/net/URL;

    const/16 v19, 0x0

    aget-object v19, p1, v19

    invoke-direct/range {v18 .. v19}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 228
    .local v18, "url":Ljava/net/URL;
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 229
    .local v6, "connection":Ljava/net/URLConnection;
    invoke-virtual {v6}, Ljava/net/URLConnection;->connect()V

    .line 230
    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentLength()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/OTA;->access$7(I)V

    .line 231
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$8()I

    move-result v19

    if-eqz v19, :cond_0

    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$8()I

    move-result v19

    const/16 v20, 0x12c

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 232
    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/OTA;->errLink()V

    .line 233
    const/16 v19, 0x0

    .line 279
    .end local v6    # "connection":Ljava/net/URLConnection;
    .end local v18    # "url":Ljava/net/URL;
    :goto_0
    return-object v19

    .line 235
    .restart local v6    # "connection":Ljava/net/URLConnection;
    .restart local v18    # "url":Ljava/net/URL;
    :cond_1
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 236
    .local v11, "input":Ljava/io/InputStream;
    new-instance v9, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static/range {v21 .. v21}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v21

    const-string v22, "cacheDirCoffee"

    const-string v23, "VKCoffee"

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "/OTA"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .local v9, "dir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_2

    .line 238
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/io/File;->setWritable(Z)Z

    .line 239
    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    .line 242
    :cond_2
    new-instance v14, Ljava/io/FileOutputStream;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/VKCoffee_Update"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/vkcoffee/android/OTA;->CONTROL_VERSION:I

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".apk"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 243
    .local v14, "output":Ljava/io/OutputStream;
    const/16 v19, 0x400

    move/from16 v0, v19

    new-array v8, v0, [B

    .line 244
    .local v8, "data":[B
    const-wide/16 v20, 0x0

    invoke-static/range {v20 .. v21}, Lcom/vkcoffee/android/OTA;->access$9(J)V

    .line 246
    const/4 v15, -0x1

    .line 247
    .local v15, "percentDone":I
    const-wide/16 v4, 0x0

    .line 248
    .local v4, "average":J
    const/4 v12, 0x0

    .line 249
    .local v12, "kBytes":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 250
    .local v16, "startDownload":J
    :goto_1
    invoke-virtual {v11, v8}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "count":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v7, v0, :cond_3

    .line 269
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    .line 270
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    .line 271
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 279
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 251
    :cond_3
    add-int/lit8 v12, v12, 0x1

    .line 252
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$10()J

    move-result-wide v20

    int-to-long v0, v7

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    invoke-static/range {v20 .. v21}, Lcom/vkcoffee/android/OTA;->access$9(J)V

    .line 253
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$10()J

    move-result-wide v20

    const-wide/16 v22, 0x64

    mul-long v20, v20, v22

    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$8()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 254
    .local v13, "latestPercentDone":I
    if-eq v15, v13, :cond_4

    .line 255
    move v15, v13

    .line 256
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/OTA$Download;->publishProgress([Ljava/lang/Object;)V

    .line 258
    :cond_4
    const-wide/16 v20, 0x12c

    cmp-long v19, v4, v20

    if-ltz v19, :cond_5

    .line 259
    int-to-long v0, v12

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/vkcoffee/android/OTA$Download;->speed(JJ)V

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 261
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$10()J

    move-result-wide v20

    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$8()I

    move-result v19

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/OTA$Download;->size(JI)V

    .line 262
    const/4 v12, 0x0

    .line 264
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v4, v20, v16

    .line 266
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v8, v0, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 275
    .end local v4    # "average":J
    .end local v6    # "connection":Ljava/net/URLConnection;
    .end local v7    # "count":I
    .end local v8    # "data":[B
    .end local v9    # "dir":Ljava/io/File;
    .end local v11    # "input":Ljava/io/InputStream;
    .end local v12    # "kBytes":I
    .end local v13    # "latestPercentDone":I
    .end local v14    # "output":Ljava/io/OutputStream;
    .end local v15    # "percentDone":I
    .end local v16    # "startDownload":J
    .end local v18    # "url":Ljava/net/URL;
    :catch_0
    move-exception v10

    .line 276
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/OTA$Download;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "unused"    # Ljava/lang/String;

    .prologue
    .line 301
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$4()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430 \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u044f"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 302
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$4()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 304
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$8()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$8()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_1

    .line 305
    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$4()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430 \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u044f"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 306
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$4()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "\u041e\u0448\u0438\u0431\u043a\u0430 :("

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 307
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$5()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$6()I

    move-result v1

    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$4()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 308
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$5()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$6()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 309
    invoke-static {}, Lcom/vkcoffee/android/OTA;->errLink()V

    .line 323
    :goto_0
    return-void

    .line 310
    :cond_1
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$10()J

    move-result-wide v0

    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$8()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 311
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$4()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430 \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u044f"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 312
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$4()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "\u041e\u0448\u0438\u0431\u043a\u0430 :("

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 313
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$5()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$6()I

    move-result v1

    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$4()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 314
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$5()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$6()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 315
    invoke-static {}, Lcom/vkcoffee/android/OTA;->errDownload()V

    goto :goto_0

    .line 317
    :cond_2
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$4()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430 \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u044f"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 318
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$4()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430 \u0437\u0430\u0432\u0435\u0440\u0448\u0435\u043d\u0430 :)"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 319
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$5()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$6()I

    move-result v1

    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$4()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 320
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$5()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$6()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 321
    invoke-static {}, Lcom/vkcoffee/android/OTA;->updateApp()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 211
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 212
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$1()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {v0}, Lcom/vkcoffee/android/OTA;->access$2(Landroid/app/NotificationManager;)V

    .line 213
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$1()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/vkcoffee/android/OTA;->access$3(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 214
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$4()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430 \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u044f"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 215
    const-string v1, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430..."

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 216
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 217
    const v1, 0x1080081

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 218
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$4()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 219
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$4()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v2, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 220
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$5()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$6()I

    move-result v1

    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$4()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 222
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 4
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    const/4 v3, 0x0

    .line 283
    new-array v0, v3, [Ljava/lang/Integer;

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 284
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$4()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430 \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u044f"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 285
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$4()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/16 v1, 0x64

    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 286
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$4()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u0421\u043a\u043e\u0440\u043e\u0441\u0442\u044c: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vkcoffee/android/OTA$Download;->getSpeed()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; \u0420\u0430\u0437\u043c\u0435\u0440: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/vkcoffee/android/OTA$Download;->getSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 287
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$4()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 289
    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$5()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$6()I

    move-result v1

    invoke-static {}, Lcom/vkcoffee/android/OTA;->access$4()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 294
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/OTA$Download;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

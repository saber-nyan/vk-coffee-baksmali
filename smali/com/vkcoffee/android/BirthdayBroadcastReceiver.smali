.class public Lcom/vkcoffee/android/BirthdayBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BirthdayBroadcastReceiver.java"

# interfaces
.implements Lcom/vkcoffee/android/data/Friends$GetUsersCallback;


# static fields
.field private static final ID_BIRTHDAY_NOTIFICATION:I = 0x1f4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static getCurrentDate(J)I
    .locals 4
    .param p0, "t"    # J

    .prologue
    .line 134
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 135
    .local v0, "d":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v2

    mul-int/lit16 v2, v2, 0x2710

    add-int/2addr v1, v2

    return v1
.end method

.method private static notifyUser(Landroid/content/Context;Ljava/util/List;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v10, 0x7f08042c

    const/4 v9, 0x0

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800a7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, ", "

    invoke-static {v8, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "notifyText":Ljava/lang/String;
    new-instance v5, Lcom/vkcoffee/android/navigation/Navigator;

    const-class v6, Lcom/vkcoffee/android/fragments/gifts/BirthdaysFragment;

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v5, p0}, Lcom/vkcoffee/android/navigation/Navigator;->intent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 114
    .local v2, "nIntent":Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "birthday"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const/high16 v5, 0x10000000

    invoke-static {p0, v9, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 116
    .local v0, "cIntent":Landroid/app/PendingIntent;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v6, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/4 v7, -0x2

    .line 117
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 118
    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 119
    invoke-virtual {v6, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const v7, 0x7f020214

    .line 120
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 121
    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 122
    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v5

    .line 123
    invoke-virtual {v5, v3}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v5

    .line 124
    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v1

    .line 125
    .local v1, "n":Landroid/app/Notification;
    iget v5, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v1, Landroid/app/Notification;->flags:I

    .line 126
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_0

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, v1, Landroid/app/Notification;->color:I

    .line 129
    :cond_0
    const-string/jumbo v5, "notification"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 130
    .local v4, "srv":Landroid/app/NotificationManager;
    const/16 v5, 0x1f4

    invoke-virtual {v4, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 131
    return-void
.end method

.method private static showBirthday(Landroid/content/Context;J)V
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .prologue
    .line 70
    invoke-static/range {p1 .. p2}, Lcom/vkcoffee/android/cache/Cache;->getBirthdays(J)Ljava/util/ArrayList;

    move-result-object v3

    .line 71
    .local v3, "bdays":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_6

    .line 72
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v7, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/Date;

    move-wide/from16 v0, p1

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 75
    .local v4, "date":Ljava/util/Date;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getDate()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/util/Date;->getMonth()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 76
    .local v10, "today":Ljava/lang/String;
    new-instance v5, Ljava/util/Date;

    const-wide/32 v14, 0x5265c00

    add-long v14, v14, p1

    invoke-direct {v5, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 77
    .local v5, "date2":Ljava/util/Date;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getDate()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/util/Date;->getMonth()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 79
    .local v12, "yesterday":Ljava/lang/String;
    const/4 v6, 0x0

    .line 80
    .local v6, "hasToday":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkcoffee/android/UserProfile;

    .line 81
    .local v8, "p":Lcom/vkcoffee/android/UserProfile;
    iget-object v14, v8, Lcom/vkcoffee/android/UserProfile;->bdate:Ljava/lang/String;

    invoke-virtual {v14, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 82
    const/4 v6, 0x1

    .line 85
    :cond_1
    iget-object v14, v8, Lcom/vkcoffee/android/UserProfile;->bdate:Ljava/lang/String;

    invoke-virtual {v14, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 86
    iget-object v14, v8, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_2
    iget-object v14, v8, Lcom/vkcoffee/android/UserProfile;->bdate:Ljava/lang/String;

    const-string/jumbo v15, "\\."

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 89
    .local v9, "ss":[Ljava/lang/String;
    const/4 v14, 0x2

    aget-object v14, v9, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 91
    .local v11, "year":I
    iget-object v14, v8, Lcom/vkcoffee/android/UserProfile;->bdate:Ljava/lang/String;

    invoke-virtual {v14, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 92
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f080545

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v8, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    .line 99
    :goto_1
    if-lez v11, :cond_0

    .line 100
    invoke-virtual {v4}, Ljava/util/Date;->getYear()I

    move-result v14

    add-int/lit16 v14, v14, 0x76c

    sub-int v2, v14, v11

    .line 101
    .local v2, "age":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v8, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0e0005

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v8, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    goto/16 :goto_0

    .line 93
    .end local v2    # "age":I
    :cond_3
    iget-object v14, v8, Lcom/vkcoffee/android/UserProfile;->bdate:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 94
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f080548

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v8, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    goto :goto_1

    .line 96
    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    aget-object v15, v9, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0d0019

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v16, v9, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v8, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    goto/16 :goto_1

    .line 104
    .end local v8    # "p":Lcom/vkcoffee/android/UserProfile;
    .end local v9    # "ss":[Ljava/lang/String;
    .end local v11    # "year":I
    :cond_5
    if-nez v6, :cond_7

    .line 109
    .end local v4    # "date":Ljava/util/Date;
    .end local v5    # "date2":Ljava/util/Date;
    .end local v6    # "hasToday":Z
    .end local v7    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "today":Ljava/lang/String;
    .end local v12    # "yesterday":Ljava/lang/String;
    :cond_6
    :goto_2
    return-void

    .line 107
    .restart local v4    # "date":Ljava/util/Date;
    .restart local v5    # "date2":Ljava/util/Date;
    .restart local v6    # "hasToday":Z
    .restart local v7    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "today":Ljava/lang/String;
    .restart local v12    # "yesterday":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/vkcoffee/android/BirthdayBroadcastReceiver;->notifyUser(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_2
.end method

.method private static showBirthday(Lcom/vkcoffee/android/data/Friends$GetUsersCallback;Ljava/lang/String;)V
    .locals 8
    .param p0, "callback"    # Lcom/vkcoffee/android/data/Friends$GetUsersCallback;
    .param p1, "uids"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v2, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    .line 61
    .local v1, "id":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "vk"

    const-string/jumbo v7, "Parse uid error"

    invoke-static {v6, v7, v0}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 66
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "id":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x1

    invoke-static {v2, p0, v3}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;I)V

    .line 67
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 28
    invoke-virtual {p1, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "last_birthday_notify"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 29
    .local v0, "lastDate":I
    const-string/jumbo v2, "force"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/vkcoffee/android/BirthdayBroadcastReceiver;->getCurrentDate(J)I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-virtual {p1, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "last_birthday_notify"

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/vkcoffee/android/BirthdayBroadcastReceiver;->getCurrentDate(J)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 36
    :cond_2
    const-string/jumbo v2, "uids"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "uids":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 38
    const-string/jumbo v2, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p2, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/vkcoffee/android/BirthdayBroadcastReceiver;->showBirthday(Landroid/content/Context;J)V

    .line 43
    :goto_1
    sget-object v2, Lcom/vkcoffee/android/MenuListView;->lastInstance:Lcom/vkcoffee/android/MenuListView;

    if-eqz v2, :cond_0

    .line 44
    sget-object v2, Lcom/vkcoffee/android/MenuListView;->lastInstance:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v2}, Lcom/vkcoffee/android/MenuListView;->updateBirthdays()V

    goto :goto_0

    .line 40
    :cond_3
    invoke-static {p0, v1}, Lcom/vkcoffee/android/BirthdayBroadcastReceiver;->showBirthday(Lcom/vkcoffee/android/data/Friends$GetUsersCallback;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    .line 52
    .local v1, "p":Lcom/vkcoffee/android/UserProfile;
    iget-object v3, v1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    .end local v1    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_0
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/vkcoffee/android/BirthdayBroadcastReceiver;->notifyUser(Landroid/content/Context;Ljava/util/List;)V

    .line 55
    return-void
.end method
